
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int width; int mode; int count; int addr; int off; } ;
struct iiccmd {int count; char* buf; int last; int slave; } ;


 int I2CRPTSTART ;
 int I2CSTART ;
 int I2CSTOP ;
 int I2CWRITE ;



 int O_RDWR ;
 int close (int) ;
 int err (int,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int ioctl (int,int ,...) ;
 int memcpy (char*,char*,int) ;
 int open (char*,int ) ;
 char* prepare_buf (int,int ) ;
 char* realloc (char*,int ) ;
 int stderr ;

__attribute__((used)) static int
i2c_write(char *dev, struct options i2c_opt, char *i2c_buf)
{
 struct iiccmd cmd;
 int error, fd, bufsize;
 char *err_msg, *buf;

 fd = open(dev, O_RDWR);
 if (fd == -1) {
  free(i2c_buf);
  err(1, "open failed");
 }

 cmd.slave = i2c_opt.addr;
 error = ioctl(fd, I2CSTART, &cmd);
 if (error == -1) {
  err_msg = "ioctl: error sending start condition";
  goto err1;
 }

 if (i2c_opt.width) {
  bufsize = i2c_opt.width / 8;
  buf = prepare_buf(bufsize, i2c_opt.off);
  if (buf == ((void*)0)) {
   err_msg = "error: offset malloc";
   goto err1;
  }
 } else {
  bufsize = 0;
  buf = ((void*)0);
 }

 switch(i2c_opt.mode) {
 case 128:



  if (i2c_opt.width) {
   cmd.count = bufsize;
   cmd.buf = buf;
   error = ioctl(fd, I2CWRITE, &cmd);
   free(buf);
   if (error == -1) {
    err_msg = "ioctl: error writing offset";
    goto err1;
   }
  }

  error = ioctl(fd, I2CSTOP);
  if (error == -1) {
   err_msg = "ioctl: error sending stop condition";
   goto err2;
  }
  cmd.slave = i2c_opt.addr;
  error = ioctl(fd, I2CSTART, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error sending start condition";
   goto err1;
  }




  cmd.count = i2c_opt.count;
  cmd.buf = i2c_buf;
  cmd.last = 0;
  error = ioctl(fd, I2CWRITE, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error writing";
   goto err1;
  }
  break;

 case 129:



  if (i2c_opt.width) {
   cmd.count = bufsize;
   cmd.buf = buf;
   error = ioctl(fd, I2CWRITE, &cmd);
   free(buf);
   if (error == -1) {
    err_msg = "ioctl: error writing offset";
    goto err1;
   }
  }

  cmd.slave = i2c_opt.addr;
  error = ioctl(fd, I2CRPTSTART, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error sending repeated start "
       "condition";
   goto err1;
  }




  cmd.count = i2c_opt.count;
  cmd.buf = i2c_buf;
  cmd.last = 0;
  error = ioctl(fd, I2CWRITE, &cmd);
  if (error == -1) {
   err_msg = "ioctl: error writing";
   goto err1;
  }
  break;

 case 130:
 default:
  buf = realloc(buf, bufsize + i2c_opt.count);
  if (buf == ((void*)0)) {
   err_msg = "error: data malloc";
   goto err1;
  }

  memcpy(buf + bufsize, i2c_buf, i2c_opt.count);



  cmd.count = bufsize + i2c_opt.count;
  cmd.buf = buf;
  cmd.last = 0;
  error = ioctl(fd, I2CWRITE, &cmd);
  free(buf);
  if (error == -1) {
   err_msg = "ioctl: error writing";
   goto err1;
  }
  break;
 }
 error = ioctl(fd, I2CSTOP);
 if (error == -1) {
  err_msg = "ioctl: error sending stop condition";
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
