
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 char* HDFMT ;
 int offst ;
 scalar_t__ otln (char*,int,int*,int*,int) ;
 int pfail () ;
 int printf (char*,char*,char const*,int) ;
 scalar_t__ putchar (char) ;

int
prhead(char *buf, const char *fname, int pagcnt)
{
 int ips = 0;
 int ops = 0;

 if ((putchar('\n') == EOF) || (putchar('\n') == EOF)) {
  pfail();
  return(1);
 }
 if (offst && otln(buf, offst, &ips, &ops, -1))
  return(1);
 (void)printf(HDFMT,buf+offst, fname, pagcnt);
 return(0);
}
