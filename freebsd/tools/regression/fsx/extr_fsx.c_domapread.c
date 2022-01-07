
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int MAP_FILE ;
 int MAP_SHARED ;
 unsigned int OP_MAPREAD ;
 unsigned int OP_SKIPPED ;
 int PROT_READ ;
 int check_buffers (unsigned int,unsigned int) ;
 int check_eofpage (char*,unsigned int,char*,unsigned int) ;
 scalar_t__ debug ;
 int fd ;
 unsigned int file_size ;
 int log4 (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int memcpy (int ,char*,unsigned int) ;
 scalar_t__ mmap (int ,unsigned int,int ,int,int ,int ) ;
 int monitorend ;
 int monitorstart ;
 scalar_t__ munmap (char*,unsigned int) ;
 unsigned int page_mask ;
 int progressinterval ;
 int prt (char*,...) ;
 int prterr (char*) ;
 int quiet ;
 unsigned int readbdy ;
 int report_failure (int) ;
 int simulatedopcount ;
 int temp_buf ;
 int testcalls ;

void
domapread(unsigned offset, unsigned size)
{
 unsigned pg_offset;
 unsigned map_size;
 char *p;

 offset -= offset % readbdy;
 if (size == 0) {
  if (!quiet && testcalls > simulatedopcount)
   prt("skipping zero size read\n");
  log4(OP_SKIPPED, OP_MAPREAD, offset, size);
  return;
 }
 if (size + offset > file_size) {
  if (!quiet && testcalls > simulatedopcount)
   prt("skipping seek/read past end of file\n");
  log4(OP_SKIPPED, OP_MAPREAD, offset, size);
  return;
 }

 log4(OP_MAPREAD, offset, size, 0);

 if (testcalls <= simulatedopcount)
  return;

 if (!quiet && ((progressinterval &&
   testcalls % progressinterval == 0) ||
         (debug &&
   (monitorstart == -1 ||
    (offset + size > monitorstart &&
     (monitorend == -1 || offset <= monitorend))))))
  prt("%lu mapread\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
      offset, offset + size - 1, size);

 pg_offset = offset & page_mask;
 map_size = pg_offset + size;

 if ((p = (char *)mmap(0, map_size, PROT_READ, MAP_FILE | MAP_SHARED, fd,
         (off_t)(offset - pg_offset))) == (char *)-1) {
  prterr("domapread: mmap");
  report_failure(190);
 }
 memcpy(temp_buf, p + pg_offset, size);

 check_eofpage("Read", offset, p, size);

 if (munmap(p, map_size) != 0) {
  prterr("domapread: munmap");
  report_failure(191);
 }

 check_buffers(offset, size);
}
