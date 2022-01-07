
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int OP_TRUNCATE ;
 unsigned int biggest ;
 scalar_t__ debug ;
 int fd ;
 unsigned int file_size ;
 int ftruncate (int ,int ) ;
 scalar_t__ good_buf ;
 int log4 (int ,unsigned int,unsigned int,int ) ;
 int memset (scalar_t__,char,int ) ;
 int monitorend ;
 int monitorstart ;
 int progressinterval ;
 int prt (char*,unsigned int,...) ;
 int prterr (char*) ;
 int quiet ;
 int report_failure (int) ;
 int simulatedopcount ;
 int testcalls ;
 unsigned int truncbdy ;

void
dotruncate(unsigned size)
{
 int oldsize = file_size;

 size -= size % truncbdy;
 if (size > biggest) {
  biggest = size;
  if (!quiet && testcalls > simulatedopcount)
   prt("truncating to largest ever: 0x%x\n", size);
 }

 log4(OP_TRUNCATE, size, (unsigned)file_size, 0);

 if (size > file_size)
  memset(good_buf + file_size, '\0', size - file_size);
 file_size = size;

 if (testcalls <= simulatedopcount)
  return;

 if ((progressinterval && testcalls % progressinterval == 0) ||
     (debug && (monitorstart == -1 || monitorend == -1 ||
         size <= monitorend)))
  prt("%lu trunc\tfrom 0x%x to 0x%x\n", testcalls, oldsize, size);
 if (ftruncate(fd, (off_t)size) == -1) {
  prt("ftruncate1: %x\n", size);
  prterr("dotruncate: ftruncate");
  report_failure(160);
 }
}
