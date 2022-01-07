
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ HDBUF ;
 scalar_t__ LBUF ;
 int addnum (char*,int,int) ;
 int eoptind ;
 int fclose (int *) ;
 int free (char*) ;
 int inln (int *,char*,scalar_t__,int*,int ,int*) ;
 scalar_t__ inskip (int *,int,int) ;
 int lines ;
 char* malloc (unsigned int) ;
 int memset (char*,int,int) ;
 int mfail () ;
 char nmchar ;
 int nmwd ;
 int nohead ;
 int * nxtfile (int,char**,char const**,char*,int ) ;
 int offst ;
 scalar_t__ otln (char*,int,int*,int*,int) ;
 int pgnm ;
 scalar_t__ prhead (char*,char const*,int) ;
 scalar_t__ prtail (int,int) ;
 int * stdin ;
 int ttypause (int) ;

int
onecol(int argc, char *argv[])
{
 int cnt = -1;
 int off;
 int lrgln;
 int linecnt;
 int num;
 int lncnt;
 int pagecnt;
 int ips;
 int ops;
 int cps;
 char *obuf;
 char *lbuf;
 char *nbuf;
 char *hbuf;
 char *ohbuf;
 FILE *inf;
 const char *fname;
 int mor;

 if (nmwd)
  num = nmwd + 1;
 else
  num = 0;
 off = num + offst;




 if ((obuf = malloc((unsigned)(LBUF + off)*sizeof(char))) == ((void*)0)) {
  mfail();
  return(1);
 }



 if ((hbuf = malloc((unsigned)(HDBUF + offst)*sizeof(char))) == ((void*)0)) {
  free(obuf);
  mfail();
  return(1);
 }

 ohbuf = hbuf + offst;
 nbuf = obuf + offst;
 lbuf = nbuf + num;
 if (num)
  nbuf[--num] = nmchar;
 if (offst) {
  (void)memset(obuf, (int)' ', offst);
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
   linecnt = 0;
   lrgln = 0;
   ops = 0;
   ips = 0;
   cps = 0;

   ttypause(pagecnt);




   while (linecnt < lines) {



    if ((cnt = inln(inf,lbuf,LBUF,&cps,0,&mor)) < 0)
     break;
    if (!linecnt && !nohead &&
     prhead(hbuf, fname, pagecnt))
     goto err;




    if (!lrgln) {
     if (num)
      addnum(nbuf, num, ++lncnt);
     if (otln(obuf,cnt+off, &ips, &ops, mor))
      goto err;
    } else if (otln(lbuf, cnt, &ips, &ops, mor))
     goto err;




    if (mor) {
     lrgln = 1;
     continue;
    }




    ++linecnt;
    lrgln = 0;
    ops = 0;
    ips = 0;
   }




   if (linecnt && prtail(lines-linecnt-lrgln, lrgln))
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
 free(obuf);
 return(0);
err:
 free(hbuf);
 free(obuf);
 return(1);
}
