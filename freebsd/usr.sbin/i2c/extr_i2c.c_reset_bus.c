
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iiccmd {int dummy; } ;


 int EX_IOERR ;
 int EX_NOINPUT ;
 int EX_OK ;
 int I2CRSTCARD ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 int ioctl (int,int ,struct iiccmd*) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int
reset_bus(struct iiccmd cmd, char *dev)
{
 int fd, error;

 fd = open(dev, O_RDWR);
 if (fd == -1) {
  fprintf(stderr, "Error opening I2C controller (%s) for "
      "resetting: %s\n", dev, strerror(errno));
  return (EX_NOINPUT);
 }

 printf("Resetting I2C controller on %s: ", dev);
 error = ioctl(fd, I2CRSTCARD, &cmd);
 close (fd);

 if (error) {
  printf("error: %s\n", strerror(errno));
  return (EX_IOERR);
 } else {
  printf("OK\n");
  return (EX_OK);
 }
}
