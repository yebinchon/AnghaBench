
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int exit (int) ;
 int fprintf (int ,char*,scalar_t__) ;
 int fsize ;
 scalar_t__ ftruncate (int,scalar_t__) ;
 scalar_t__ offset ;
 int perror (char*) ;
 int random () ;
 int stderr ;
 scalar_t__ vflag ;

__attribute__((used)) static void
do_trunc(int fd)
{
 off_t roffset = 0;

 roffset = random() % fsize;
 if (ftruncate(fd, (offset + roffset)) < 0) {
  perror("truncate");
  exit(7);
 }

 if (vflag) {
  (void) fprintf(stderr,
      "Truncated at offset %ld\n",
      (offset + roffset));
 }
}
