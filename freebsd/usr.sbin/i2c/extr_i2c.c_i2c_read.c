
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int width; int addr; scalar_t__ mode; int count; int off; } ;
struct iiccmd {int slave; int count; int last; char* buf; } ;
typedef int cmd ;


 int I2CREAD ;
 int I2CRPTSTART ;
 int I2CSTART ;
 int I2CSTOP ;
 int I2CWRITE ;
 scalar_t__ I2C_MODE_REPEATED_START ;
 scalar_t__ I2C_MODE_STOP_START ;
 int O_RDWR ;
 int bzero (struct iiccmd*,int) ;
 int close (int) ;
 int err (int,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int ioctl (int,int ,...) ;
 int open (char*,int ) ;
 char* prepare_buf (int,int ) ;
 int stderr ;

__attribute__((used)) static int
i2c_read(char *dev, struct options i2c_opt, char *i2c_buf)
{
 struct iiccmd cmd;
 int fd, error, bufsize;
 char *err_msg, data = 0, *buf;

 fd = open(dev, O_RDWR);
 if (fd == -1)
  err(1, "open failed");

 bzero(&cmd, sizeof(cmd));

 if (i2c_opt.width) {
  cmd.slave = i2c_opt.addr;
  cmd.count = 1;
  cmd.last = 0;
  cmd.buf = &data;
  error = ioctl(fd, I2CSTART, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error sending start condition";
   goto err1;
  }
  bufsize = i2c_opt.width / 8;
  buf = prepare_buf(bufsize, i2c_opt.off);
  if (buf == ((void*)0)) {
   err_msg = "error: offset malloc";
   goto err1;
  }

  cmd.count = bufsize;
  cmd.buf = buf;
  cmd.last = 0;
  error = ioctl(fd, I2CWRITE, &cmd);
  free(buf);
  if (error == -1) {
   err_msg = "ioctl: error writing offset";
   goto err1;
  }

  if (i2c_opt.mode == I2C_MODE_STOP_START) {
   error = ioctl(fd, I2CSTOP);
   if (error == -1) {
    err_msg = "error sending stop condition";
    goto err2;
   }
  }
 }
 cmd.slave = i2c_opt.addr | 1;
 cmd.count = 1;
 cmd.last = 0;
 cmd.buf = &data;
 if (i2c_opt.mode == I2C_MODE_STOP_START || i2c_opt.width == 0) {
  error = ioctl(fd, I2CSTART, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error sending start condition";
   goto err2;
  }
 } else if (i2c_opt.mode == I2C_MODE_REPEATED_START) {
  error = ioctl(fd, I2CRPTSTART, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error sending repeated start "
       "condition";
   goto err1;
  }
 }

 cmd.count = i2c_opt.count;
 cmd.buf = i2c_buf;
 cmd.last = 1;
 error = ioctl(fd, I2CREAD, &cmd);
 if (error == -1) {
  err_msg = "ioctl: error while reading";
  goto err1;
 }

 error = ioctl(fd, I2CSTOP);
 if (error == -1) {
  err_msg = "error sending stop condtion\n";
  goto err2;
 }

 close(fd);
 return (0);

err1:
 error = ioctl(fd, I2CSTOP);
 if (error == -1)
  fprintf(stderr, "error sending stop condition\n");
err2:
 if (err_msg)
  fprintf(stderr, "%s\n", err_msg);

 close(fd);
 return (1);
}
