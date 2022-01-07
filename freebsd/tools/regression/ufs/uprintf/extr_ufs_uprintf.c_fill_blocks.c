
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int BLOCKSIZE ;
 int BLOCKS_FILENAME ;
 scalar_t__ ENOSPC ;
 int NUMTRIES ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int bzero (char*,int) ;
 int close (int) ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int open (int ,int,int) ;
 int unlink (int ) ;
 int warn (char*) ;
 int warnx (char*,int,scalar_t__) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void
fill_blocks(void)
{
 char block[BLOCKSIZE];
 ssize_t len;
 int fd, i;

 fd = open(BLOCKS_FILENAME, O_CREAT | O_TRUNC | O_RDWR, 0600);
 if (fd < 0)
  err(-1, "fill_blocks: open(%s)", BLOCKS_FILENAME);





 bzero(block, BLOCKSIZE);
 errno = 0;
 while (1) {
  len = write(fd, block, BLOCKSIZE);
  if (len < 0)
   break;
  if (len != BLOCKSIZE) {
   warnx("fill_blocks: write(%d) returned %zd",
       BLOCKSIZE, len);
   close(fd);
   (void)unlink(BLOCKS_FILENAME);
   exit(-1);
  }

 }
 if (errno != ENOSPC) {
  warn("fill_blocks: write");
  close(fd);
  (void)unlink(BLOCKS_FILENAME);
  exit(-1);
 }





 for (i = 0; i < NUMTRIES; i++) {
  len = write(fd, block, BLOCKSIZE);
  if (len < 0 && errno != ENOSPC) {
   warn("fill_blocks: write after ENOSPC");
   close(fd);
   (void)unlink(BLOCKS_FILENAME);
   exit(-1);
  }
 }

 close(fd);
 (void)unlink(BLOCKS_FILENAME);
}
