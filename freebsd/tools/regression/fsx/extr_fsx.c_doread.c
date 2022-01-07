
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 unsigned int OP_READ ;
 unsigned int OP_SKIPPED ;
 int SEEK_SET ;
 int check_buffers (unsigned int,unsigned int) ;
 scalar_t__ debug ;
 int fd ;
 unsigned int file_size ;
 int log4 (unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int monitorend ;
 int monitorstart ;
 int progressinterval ;
 int prt (char*,...) ;
 int prterr (char*) ;
 int quiet ;
 unsigned int read (int ,int ,unsigned int) ;
 unsigned int readbdy ;
 int report_failure (int) ;
 int simulatedopcount ;
 int temp_buf ;
 int testcalls ;

void
doread(unsigned offset, unsigned size)
{
 off_t ret;
 unsigned iret;

 offset -= offset % readbdy;
 if (size == 0) {
  if (!quiet && testcalls > simulatedopcount)
   prt("skipping zero size read\n");
  log4(OP_SKIPPED, OP_READ, offset, size);
  return;
 }
 if (size + offset > file_size) {
  if (!quiet && testcalls > simulatedopcount)
   prt("skipping seek/read past end of file\n");
  log4(OP_SKIPPED, OP_READ, offset, size);
  return;
 }

 log4(OP_READ, offset, size, 0);

 if (testcalls <= simulatedopcount)
  return;

 if (!quiet && ((progressinterval &&
   testcalls % progressinterval == 0) ||
         (debug &&
   (monitorstart == -1 ||
    (offset + size > monitorstart &&
     (monitorend == -1 || offset <= monitorend))))))
  prt("%lu read\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
      offset, offset + size - 1, size);
 ret = lseek(fd, (off_t)offset, SEEK_SET);
 if (ret == (off_t)-1) {
  prterr("doread: lseek");
  report_failure(140);
 }
 iret = read(fd, temp_buf, size);
 if (iret != size) {
  if (iret == -1)
   prterr("doread: read");
  else
   prt("short read: 0x%x bytes instead of 0x%x\n",
       iret, size);
  report_failure(141);
 }
 check_buffers(offset, size);
}
