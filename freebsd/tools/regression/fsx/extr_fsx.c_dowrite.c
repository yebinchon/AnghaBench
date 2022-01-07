
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 unsigned int OP_SKIPPED ;
 unsigned int OP_WRITE ;
 int SEEK_SET ;
 scalar_t__ debug ;
 int fd ;
 unsigned int file_size ;
 int gendata (int ,scalar_t__,unsigned int,unsigned int) ;
 scalar_t__ good_buf ;
 scalar_t__ lite ;
 int log4 (unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int memset (scalar_t__,char,unsigned int) ;
 int monitorend ;
 int monitorstart ;
 int original_buf ;
 int progressinterval ;
 int prt (char*,...) ;
 int prterr (char*) ;
 int quiet ;
 int report_failure (int) ;
 int simulatedopcount ;
 int testcalls ;
 int warn (char*) ;
 unsigned int write (int ,scalar_t__,unsigned int) ;
 unsigned int writebdy ;

void
dowrite(unsigned offset, unsigned size)
{
 off_t ret;
 unsigned iret;

 offset -= offset % writebdy;
 if (size == 0) {
  if (!quiet && testcalls > simulatedopcount)
   prt("skipping zero size write\n");
  log4(OP_SKIPPED, OP_WRITE, offset, size);
  return;
 }

 log4(OP_WRITE, offset, size, file_size);

 gendata(original_buf, good_buf, offset, size);
 if (file_size < offset + size) {
  if (file_size < offset)
   memset(good_buf + file_size, '\0', offset - file_size);
  file_size = offset + size;
  if (lite) {
   warn("Lite file size bug in fsx!");
   report_failure(149);
  }
 }

 if (testcalls <= simulatedopcount)
  return;

 if (!quiet && ((progressinterval &&
   testcalls % progressinterval == 0) ||
         (debug &&
   (monitorstart == -1 ||
    (offset + size > monitorstart &&
     (monitorend == -1 || offset <= monitorend))))))
  prt("%lu write\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
      offset, offset + size - 1, size);
 ret = lseek(fd, (off_t)offset, SEEK_SET);
 if (ret == (off_t)-1) {
  prterr("dowrite: lseek");
  report_failure(150);
 }
 iret = write(fd, good_buf + offset, size);
 if (iret != size) {
  if (iret == -1)
   prterr("dowrite: write");
  else
   prt("short write: 0x%x bytes instead of 0x%x\n",
       iret, size);
  report_failure(151);
 }
}
