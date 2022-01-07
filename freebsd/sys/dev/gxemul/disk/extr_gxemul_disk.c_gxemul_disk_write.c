
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef unsigned int uint32_t ;
typedef int off_t ;


 int EINVAL ;
 int EIO ;
 int GXEMUL_DISK_DEV_BLOCK ;
 int GXEMUL_DISK_DEV_BLOCKSIZE ;
 int GXEMUL_DISK_DEV_DISKID ;
 void* GXEMUL_DISK_DEV_FUNCTION (int ) ;
 int GXEMUL_DISK_DEV_OFFSET ;
 int GXEMUL_DISK_DEV_OFFSET_HI ;
 int GXEMUL_DISK_DEV_OFFSET_LO ;
 int GXEMUL_DISK_DEV_READ (int ) ;
 int GXEMUL_DISK_DEV_START ;
 unsigned int GXEMUL_DISK_DEV_START_WRITE ;
 int GXEMUL_DISK_DEV_STATUS ;

 int GXEMUL_DISK_DEV_WRITE (int ,unsigned int) ;
 int MA_OWNED ;
 int gxemul_disk_controller_mutex ;
 int memcpy (void*,void const*,int) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
gxemul_disk_write(unsigned diskid, const void *buf, off_t off)
{
 volatile void *dst;

 mtx_assert(&gxemul_disk_controller_mutex, MA_OWNED);

 if (off < 0 || off % GXEMUL_DISK_DEV_BLOCKSIZE != 0)
  return (EINVAL);


 GXEMUL_DISK_DEV_WRITE(GXEMUL_DISK_DEV_OFFSET, (uint64_t)off);







 GXEMUL_DISK_DEV_WRITE(GXEMUL_DISK_DEV_DISKID, diskid);

 dst = GXEMUL_DISK_DEV_FUNCTION(GXEMUL_DISK_DEV_BLOCK);
 memcpy((void *)(uintptr_t)dst, buf, GXEMUL_DISK_DEV_BLOCKSIZE);

 GXEMUL_DISK_DEV_WRITE(GXEMUL_DISK_DEV_START, GXEMUL_DISK_DEV_START_WRITE);
 switch (GXEMUL_DISK_DEV_READ(GXEMUL_DISK_DEV_STATUS)) {
 case 128:
  return (EIO);
 default:
  break;
 }

 return (0);
}
