
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSWAP ;
 int blocksize ;
 int calclens () ;
 int dlen ;
 int dsinit (int) ;
 int error (char*) ;
 int getbsize (int *,int *) ;
 int getpagesize () ;
 int header ;
 int hlen ;
 int kd ;
 int kvm_getswapinfo (int ,int ,int ,int ) ;
 int kvmsw ;
 int kvnsw ;
 int odlen ;
 int okvnsw ;
 int oulen ;
 int pagesize ;
 int ulen ;

int
initswap(void)
{
 static int once = 0;

 if (once)
  return (1);

 header = getbsize(&hlen, &blocksize);
 pagesize = getpagesize();

 if ((kvnsw = kvm_getswapinfo(kd, kvmsw, NSWAP, 0)) < 0) {
  error("systat: kvm_getswapinfo failed");
  return (0);
 }
 okvnsw = kvnsw;

 calclens();
 odlen = dlen;
 oulen = ulen;

 once = 1;

 dsinit(12);

 return (1);
}
