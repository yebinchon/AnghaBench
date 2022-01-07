
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int fd_set ;
typedef int fd_mask ;


 int EBADF ;
 int EFAULT ;
 int NBBY ;
 int NFDBITS ;
 int fubyte (char*) ;
 int rounddown (int,int) ;

__attribute__((used)) static int
select_check_badfd(fd_set *fd_in, int nd, int ndu, int abi_nfdbits)
{
 char *addr, *oaddr;
 int b, i, res;
 uint8_t bits;

 if (nd >= ndu || fd_in == ((void*)0))
  return (0);

 oaddr = ((void*)0);
 bits = 0;
 for (i = nd; i < ndu; i++) {
  b = i / NBBY;

  addr = (char *)fd_in + b;
  if (addr != oaddr) {
   res = fubyte(addr);
   if (res == -1)
    return (EFAULT);
   oaddr = addr;
   bits = res;
  }
  if ((bits & (1 << (i % NBBY))) != 0)
   return (EBADF);
 }
 return (0);
}
