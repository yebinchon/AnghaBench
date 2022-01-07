
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ HDBUF ;
 int addnum (char*,int,int) ;
 int clcnt ;
 int colwd ;
 int eoptind ;
 int err ;
 int fclose (int *) ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 int inln (int *,char*,int,int*,int,int*) ;
 scalar_t__ inskip (int *,int,int) ;
 int lines ;
 char* malloc (unsigned int) ;
 int memset (char*,int,int) ;
 int mfail () ;
 int nmchar ;
 int nmwd ;
 int nohead ;
 int * nxtfile (int,char**,char const**,char*,int) ;
 int offst ;
 scalar_t__ otln (char*,int,int*,int*,int ) ;
 int pgnm ;
 int pgwd ;
 scalar_t__ prhead (char*,char const*,int) ;
 scalar_t__ prtail (int,int ) ;
 int schar ;
 scalar_t__ sflag ;
 int * stdin ;
 int ttypause (int) ;

int
mulfile(int argc, char *argv[])
{
 char *ptbf;
 int j;
 int pln;
 int cnt;
 char *lstdat;
 int i;
 FILE **fbuf = ((void*)0);
 int actf;
 int lncnt;
 int col;
 int pagecnt;
 int fproc;
 char *buf = ((void*)0);
 char *hbuf = ((void*)0);
 char *ohbuf;
 const char *fname;
 int ips = 0;
 int cps = 0;
 int ops = 0;
 int mor = 0;
 int retval = 1;




 if ((fbuf = (FILE **)malloc((unsigned)clcnt*sizeof(FILE *))) == ((void*)0)) {
  mfail();
  goto out;
 }




 if ((hbuf = malloc((unsigned)(HDBUF + offst)*sizeof(char))) == ((void*)0)) {
  mfail();
  goto out;
 }
 ohbuf = hbuf + offst;
 j = 0;
 while (j < clcnt) {
  if ((fbuf[j] = nxtfile(argc, argv, &fname, ohbuf, 1)) == ((void*)0))
   break;
  if (pgnm && (inskip(fbuf[j], pgnm, lines)))
   fbuf[j] = ((void*)0);
  ++j;
 }




 if (!j)
  goto out;




 clcnt = j;
 if (nmwd) {
  colwd = (pgwd - clcnt - nmwd)/clcnt;
  pgwd = ((colwd + 1) * clcnt) - nmwd - 2;
 } else {
  colwd = (pgwd + 1 - clcnt)/clcnt;
  pgwd = ((colwd + 1) * clcnt) - 1;
 }
 if (colwd < 1) {
  (void)fprintf(err,
    "pr: page width too small for %d columns\n", clcnt);
  goto out;
 }
 actf = clcnt;
 col = colwd + 1;




 if ((buf = malloc((unsigned)(pgwd+offst+1)*sizeof(char))) == ((void*)0)) {
  mfail();
  goto out;
 }
 if (offst) {
  (void)memset(buf, (int)' ', offst);
  (void)memset(hbuf, (int)' ', offst);
 }
 if (pgnm)
  pagecnt = pgnm;
 else
  pagecnt = 1;
 lncnt = 0;




 while (actf > 0) {
  ttypause(pagecnt);




  for (i = 0; i < lines; ++i) {
   ptbf = buf + offst;
   lstdat = ptbf;
   if (nmwd) {



    addnum(ptbf, nmwd, ++lncnt);
    ptbf += nmwd;
    *ptbf++ = nmchar;
   }
   j = 0;
   fproc = 0;




   for (j = 0; j < clcnt; ++j) {
    if (fbuf[j] == ((void*)0)) {



     cnt = 0;
    } else if ((cnt = inln(fbuf[j], ptbf, colwd,
       &cps, 1, &mor)) < 0) {



     if (fbuf[j] != stdin)
      (void)fclose(fbuf[j]);
     fbuf[j] = ((void*)0);
     --actf;
     cnt = 0;
    } else {



     ptbf += cnt;
     lstdat = ptbf;
     fproc++;
    }




    if (fproc >= actf)
     break;




    if (sflag) {
     *ptbf++ = schar;
    } else if ((pln = col - cnt) > 0) {
     (void)memset(ptbf, (int)' ', pln);
     ptbf += pln;
    }
   }




   if ((j = lstdat - buf) <= offst)
    break;

   if (!i && !nohead && prhead(hbuf, fname, pagecnt))
    goto out;




   if (otln(buf, j, &ips, &ops, 0))
    goto out;




   if (actf <= 0) {
    ++i;
    break;
   }
  }




  if (i && prtail(lines-i, 0))
   goto out;
  ++pagecnt;
 }
 if (eoptind < argc)
  goto out;
 retval = 0;
out:
 free(buf);
 free(hbuf);
 free(fbuf);
 return(retval);
}
