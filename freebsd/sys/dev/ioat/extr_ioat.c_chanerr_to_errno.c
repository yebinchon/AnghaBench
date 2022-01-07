
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EFAULT ;
 int EIO ;
 int IOAT_CHANERR_NDADDERR ;
 int IOAT_CHANERR_RDERR ;
 int IOAT_CHANERR_WDERR ;
 int IOAT_CHANERR_XDADDERR ;
 int IOAT_CHANERR_XSADDERR ;

__attribute__((used)) static int
chanerr_to_errno(uint32_t chanerr)
{

 if (chanerr == 0)
  return (0);
 if ((chanerr & (IOAT_CHANERR_XSADDERR | IOAT_CHANERR_XDADDERR)) != 0)
  return (EFAULT);
 if ((chanerr & (IOAT_CHANERR_RDERR | IOAT_CHANERR_WDERR)) != 0)
  return (EIO);

 if ((chanerr & IOAT_CHANERR_NDADDERR) != 0)
  return (EIO);
 return (EIO);
}
