
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ bcmp (char*,char*,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* getspace (int) ;
 scalar_t__ guesslen ;
 int maxblk ;
 int msg ;
 int read (int,char*,int) ;
 int warn (char*) ;

__attribute__((used)) static void
verify(int inp, int outp, char *outb)
{
 int eot, inmaxblk, inn, outmaxblk, outn;
 char *inb;

 inb = getspace(maxblk);
 inmaxblk = outmaxblk = maxblk;
 for (eot = 0;; guesslen = 0) {
  if ((inn = read(inp, inb, inmaxblk)) == -1) {
   if (guesslen)
    while (errno == EINVAL && (inmaxblk -= 1024)) {
     inn = read(inp, inb, inmaxblk);
     if (inn >= 0)
      goto r1;
    }
   warn("read error");
   break;
  }
r1: if ((outn = read(outp, outb, outmaxblk)) == -1) {
   if (guesslen)
    while (errno == EINVAL && (outmaxblk -= 1024)) {
     outn = read(outp, outb, outmaxblk);
     if (outn >= 0)
      goto r2;
    }
   warn("read error");
   break;
  }
r2: if (inn != outn) {
   fprintf(msg,
       "%s: tapes have different block sizes; %d != %d.\n",
       "tcopy", inn, outn);
   break;
  }
  if (!inn) {
   if (eot++) {
    fprintf(msg, "tcopy: tapes are identical.\n");
    free(inb);
    return;
   }
  } else {
   if (bcmp(inb, outb, inn)) {
    fprintf(msg,
        "tcopy: tapes have different data.\n");
    break;
   }
   eot = 0;
  }
 }
 exit(1);
}
