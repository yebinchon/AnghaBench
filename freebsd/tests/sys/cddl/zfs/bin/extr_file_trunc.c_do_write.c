
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_SET ;
 scalar_t__ bsize ;
 scalar_t__ calloc (int,scalar_t__) ;
 int exit (int) ;
 int fprintf (int ,char*,scalar_t__) ;
 int free (char*) ;
 int fsize ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 scalar_t__ offset ;
 int perror (char*) ;
 int random () ;
 scalar_t__ read (int,char*,scalar_t__) ;
 scalar_t__ rflag ;
 int stderr ;
 int strcpy (char*,char*) ;
 scalar_t__ vflag ;
 scalar_t__ write (int,char*,scalar_t__) ;

__attribute__((used)) static void
do_write(int fd)
{
 off_t roffset = 0;
 char *buf = ((void*)0);
 char *rbuf = ((void*)0);

 buf = (char *)calloc(1, bsize);
 rbuf = (char *)calloc(1, bsize);
 if (buf == ((void*)0) || rbuf == ((void*)0)) {
  perror("malloc");
  exit(4);
 }

 roffset = random() % fsize;
 if (lseek(fd, (offset + roffset), SEEK_SET) < 0) {
  perror("lseek");
  exit(5);
 }

 strcpy(buf, "ZFS Test Suite Truncation Test");
 if (write(fd, buf, bsize) < bsize) {
  perror("write");
  exit(6);
 }

 if (rflag) {
  if (lseek(fd, (offset + roffset), SEEK_SET) < 0) {
   perror("lseek");
   exit(7);
  }

  if (read(fd, rbuf, bsize) < bsize) {
   perror("read");
   exit(8);
  }

  if (memcmp(buf, rbuf, bsize) != 0) {
   perror("memcmp");
   exit(9);
  }
 }
 if (vflag) {
  (void) fprintf(stderr,
      "Wrote to offset %ld\n", (offset + roffset));
  if (rflag) {
   (void) fprintf(stderr,
       "Read back from offset %ld\n", (offset + roffset));
  }
 }

 (void) free(buf);
 (void) free(rbuf);
}
