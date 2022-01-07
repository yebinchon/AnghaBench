
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ word; scalar_t__ byte; } ;
struct TYPE_3__ {void* word; void* byte; } ;
struct smbcmd {int cmd; int rcount; int wcount; unsigned short* rbuf; void** wbuf; TYPE_2__ rdata; TYPE_1__ wdata; int slave; } ;


 int SMB_BREAD ;
 int SMB_BWRITE ;
 int SMB_PCALL ;
 int SMB_QUICK_READ ;
 int SMB_QUICK_WRITE ;
 int SMB_READB ;
 int SMB_READW ;
 int SMB_RECVB ;
 int SMB_SENDB ;
 int SMB_WRITEB ;
 int SMB_WRITEW ;
 char* bytefmt ;
 int cflag ;
 int fd ;
 char* fmt ;
 unsigned short* ibuf ;
 int iflag ;
 int ioctl (int ,int ,struct smbcmd*) ;
 void** obuf ;
 int oflag ;
 void* oword ;
 int printf (char*,unsigned short) ;
 int putchar (char) ;
 int slave ;
 scalar_t__ wflag ;
 char* wordfmt ;

__attribute__((used)) static int
do_io(void)
{
 struct smbcmd c;
 int i;

 c.slave = slave;
 c.cmd = cflag;
 c.rcount = 0;
 c.wcount = 0;

 if (fmt == ((void*)0) && iflag > 0)
  fmt = wflag? wordfmt: bytefmt;

 if (cflag == -1) {

  if (iflag == -1 && oflag == 0)

   return (ioctl(fd, SMB_QUICK_WRITE, &c));
  else if (iflag == 0 && oflag == -1)

   return (ioctl(fd, SMB_QUICK_READ, &c));
  else if (iflag == 1 && oflag == -1) {

   if (ioctl(fd, SMB_RECVB, &c) == -1)
    return (-1);
   printf(fmt, (unsigned char)c.cmd);
   putchar('\n');
   return (0);
  } else if (iflag == -1 && oflag == 1) {

   c.cmd = obuf[0];
   return (ioctl(fd, SMB_SENDB, &c));
  } else
   return (-2);
 }
 if (iflag == 1 && oflag == -1) {

  if (ioctl(fd, SMB_READB, &c) == -1)
   return (-1);
  printf(fmt, (unsigned char)c.rdata.byte);
  putchar('\n');
  return (0);
 } else if (iflag == -1 && oflag == 1) {

  c.wdata.byte = obuf[0];
  return (ioctl(fd, SMB_WRITEB, &c));
 } else if (wflag && iflag == 2 && oflag == -1) {

  if (ioctl(fd, SMB_READW, &c) == -1)
   return (-1);
  printf(fmt, (unsigned short)c.rdata.word);
  putchar('\n');
  return (0);
 } else if (wflag && iflag == -1 && oflag == 2) {

  c.wdata.word = oword;
  return (ioctl(fd, SMB_WRITEW, &c));
 } else if (wflag && iflag == 2 && oflag == 2) {




  c.wdata.word = oword;
  if (ioctl(fd, SMB_PCALL, &c) == -1)
   return (-1);
  printf(fmt, (unsigned short)c.rdata.word);
  putchar('\n');
  return (0);
 } else if (iflag > 1 && oflag == -1) {

  c.rbuf = ibuf;
  c.rcount = iflag;
  if (ioctl(fd, SMB_BREAD, &c) == -1)
   return (-1);
  for (i = 0; i < c.rcount; i++) {
   if (i != 0)
    putchar(' ');
   printf(fmt, ibuf[i]);
  }
  putchar('\n');
  return (0);
 } else if (iflag == -1 && oflag > 1) {

  c.wbuf = obuf;
  c.wcount = oflag;
  return (ioctl(fd, SMB_BWRITE, &c));
 }

 return (-2);
}
