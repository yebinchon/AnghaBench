
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 scalar_t__ dspace ;
 scalar_t__ fwrite (char*,int,int,int ) ;
 char ochar ;
 int ogap ;
 int pfail () ;
 scalar_t__ putchar (char) ;
 int stdout ;

int
otln(char *buf, int cnt, int *svips, int *svops, int mor)
{
 int ops;
 int ips;
 int gap = ogap;
 int tbps;
 char *endbuf;

 if (ogap) {



  endbuf = buf + cnt;
  ops = *svops;
  ips = *svips;
  while (buf < endbuf) {



   if (*buf == ' ') {
    ++ips;
    ++buf;
    continue;
   }




   if (*buf == ochar) {
    ips += gap - (ips % gap);
    ++buf;
    continue;
   }




   while (ips - ops > 1) {



    if ((tbps = ops + gap - (ops % gap)) > ips)
     break;
    if (putchar(ochar) == EOF) {
     pfail();
     return(1);
    }
    ops = tbps;
   }

   while (ops < ips) {



    if (putchar(' ') == EOF) {
     pfail();
     return(1);
    }
    ++ops;
   }




   if (putchar(*buf++) == EOF) {
    pfail();
    return(1);
   }
   ++ips;
   ++ops;
  }

  if (mor > 0) {



   *svops = ops;
   *svips = ips;
   return(0);
  }

  if (mor < 0) {
   while (ips - ops > 1) {



    if ((tbps = ops + gap - (ops % gap)) > ips)
     break;
    if (putchar(ochar) == EOF) {
     pfail();
     return(1);
    }
    ops = tbps;
   }
   while (ops < ips) {



    if (putchar(' ') == EOF) {
     pfail();
     return(1);
    }
    ++ops;
   }
   return(0);
  }
 } else {



  if (cnt && (fwrite(buf, sizeof(char), cnt, stdout) <= 0)) {
   pfail();
   return(1);
  }
  if (mor != 0)
   return(0);
 }




 if ((putchar('\n') == EOF) || (dspace && (putchar('\n') == EOF))) {
  pfail();
  return(1);
 }
 return(0);
}
