
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ HDBUF ;
 int addnum (char*,scalar_t__,int) ;
 int clcnt ;
 int colwd ;
 int eoptind ;
 int fclose (int *) ;
 int free (char*) ;
 int inln (int *,char*,int,int*,int,int*) ;
 scalar_t__ inskip (int *,int,int) ;
 int lines ;
 char* malloc (unsigned int) ;
 int memset (char*,int,int) ;
 int mfail () ;
 int nmchar ;
 scalar_t__ nmwd ;
 int nohead ;
 int * nxtfile (int,char**,char const**,char*,int ) ;
 int offst ;
 scalar_t__ otln (char*,int,int*,int*,int ) ;
 int pgnm ;
 scalar_t__ pgwd ;
 scalar_t__ prhead (char*,char const*,int) ;
 scalar_t__ prtail (int,int ) ;
 int schar ;
 scalar_t__ sflag ;
 int * stdin ;
 int ttypause (int) ;

int
horzcol(int argc, char *argv[])
{
 char *ptbf;
 int pln;
 int cnt = -1;
 char *lstdat;
 int col = colwd + 1;
 int j;
 int i;
 int lncnt;
 int pagecnt;
 char *buf;
 char *hbuf;
 char *ohbuf;
 const char *fname;
 FILE *inf;
 int ips = 0;
 int cps = 0;
 int ops = 0;
 int mor = 0;

 if ((buf = malloc((unsigned)(pgwd+offst+1)*sizeof(char))) == ((void*)0)) {
  mfail();
  return(1);
 }




 if ((hbuf = malloc((unsigned)(HDBUF + offst)*sizeof(char))) == ((void*)0)) {
  free(buf);
  mfail();
  return(1);
 }
 ohbuf = hbuf + offst;
 if (offst) {
  (void)memset(buf, (int)' ', offst);
  (void)memset(hbuf, (int)' ', offst);
 }




 while ((inf = nxtfile(argc, argv, &fname, ohbuf, 0)) != ((void*)0)) {
  if (pgnm) {
   if (inskip(inf, pgnm, lines))
    continue;
   pagecnt = pgnm;
  } else
   pagecnt = 1;
  lncnt = 0;




  for(;;) {
   ttypause(pagecnt);




   for (i = 0; i < lines; ++i) {
    ptbf = buf + offst;
    lstdat = ptbf;
    j = 0;



    for(;;) {
     if (nmwd) {



      addnum(ptbf, nmwd, ++lncnt);
      ptbf += nmwd;
      *ptbf++ = nmchar;
     }



     if ((cnt = inln(inf,ptbf,colwd,&cps,1,
       &mor)) < 0)
      break;
     ptbf += cnt;
     lstdat = ptbf;




     if (++j >= clcnt)
      break;




     if (sflag)
      *ptbf++ = schar;
     else if ((pln = col - cnt) > 0) {
      (void)memset(ptbf,(int)' ',pln);
      ptbf += pln;
     }
    }




    if ((j = lstdat - buf) <= offst)
     break;
    if (!i && !nohead &&
     prhead(hbuf, fname, pagecnt))
     goto err;



    if (otln(buf, j, &ips, &ops, 0))
     goto err;
   }




   if (i && prtail(lines-i, 0))
    goto err;




   if (cnt < 0)
    break;
   ++pagecnt;
  }
  if (inf != stdin)
   (void)fclose(inf);
 }
 if (eoptind < argc)
  goto err;
 free(hbuf);
 free(buf);
 return(0);
err:
 free(hbuf);
 free(buf);
 return(1);
}
