
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbcmd {unsigned char slave; } ;


 int IS_READABLE ;
 int IS_WRITEABLE ;
 unsigned char MAX_I2C_ADDR ;
 unsigned char MIN_I2C_ADDR ;
 int SMB_QUICK_WRITE ;
 int SMB_RECVB ;
 char* dev ;
 int fd ;
 int ioctl (int ,int ,struct smbcmd*) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void
probe_i2c(void)
{
 unsigned char addr;
 int flags;


 struct smbcmd c;

 printf("Probing for devices on %s:\n", dev);

 for (addr = MIN_I2C_ADDR; addr < MAX_I2C_ADDR; addr += 2) {
  c.slave = addr;
  flags = 0;
  if (ioctl(fd, SMB_RECVB, &c) != -1)
   flags = 1;
  if (ioctl(fd, SMB_QUICK_WRITE, &c) != -1)
   flags |= 2;
  if (flags != 0) {
   printf("Device @0x%02x: ", addr);
   if (flags & 1)
    putchar('r');
   if (flags & 2)
    putchar('w');
   putchar('\n');
  }
 }
}
