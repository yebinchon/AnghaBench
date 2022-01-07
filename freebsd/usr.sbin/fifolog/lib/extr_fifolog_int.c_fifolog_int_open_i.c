
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct fifolog_file {scalar_t__ fd; int recsize; int logsize; int * zs; int * recbuf; } ;
typedef int ssize_t ;
typedef int off_t ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 scalar_t__ ENOTTY ;
 int FIFOLOG_FMT_MAGIC ;
 int FIFOLOG_OFF_BS ;
 int O_RDONLY ;
 int O_RDWR ;
 int S_ISREG (int ) ;
 int assert (int) ;
 int be32dec (int *) ;
 int * calloc (int,int) ;
 scalar_t__ errno ;
 int free (int *) ;
 int fstat (scalar_t__,struct stat*) ;
 int ioctl (scalar_t__,int ,int*) ;
 void* malloc (int) ;
 scalar_t__ memcmp (int *,int ,scalar_t__) ;
 scalar_t__ open (char const*,int ) ;
 int pread (scalar_t__,int *,int,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static const char *
fifolog_int_open_i(struct fifolog_file *f, const char *fname, int mode)
{
 struct stat st;
 ssize_t u;
 int i;

 f->fd = open(fname, mode ? O_RDWR : O_RDONLY);
 if (f->fd < 0)
  return ("Cannot open");


 i = ioctl(f->fd, DIOCGSECTORSIZE, &f->recsize);
 if (i != 0 && errno != ENOTTY)
  return ("ioctl(DIOCGSECTORSIZE) failed");

 if (i != 0) {
  i = fstat(f->fd, &st);
  assert(i == 0);
  if (!S_ISREG(st.st_mode))
   return ("Neither disk nor regular file");
  f->recsize = 512;
  f->logsize = st.st_size;
 } else if (f->recsize < 64) {
  return ("Disk device sectorsize smaller than 64");
 } else {
  i = ioctl(f->fd, DIOCGMEDIASIZE, &f->logsize);
  if (i < 0 && errno != ENOTTY)
   return ("ioctl(DIOCGMEDIASIZE) failed");
 }


 f->recbuf = malloc(f->recsize);
 if (f->recbuf == ((void*)0))
  return ("Cannot malloc");


 i = pread(f->fd, f->recbuf, f->recsize, 0);
 if (i < 0 || i < (int)f->recsize)
  return ("Read error, first sector");

 errno = 0;
 if (memcmp(f->recbuf, FIFOLOG_FMT_MAGIC, strlen(FIFOLOG_FMT_MAGIC) + 1))
  return ("Wrong or missing magic string");

 u = be32dec(f->recbuf + FIFOLOG_OFF_BS);
 if (u < 64)
  return ("Wrong record size in header (<64)");

 if ((off_t)u >= f->logsize)
  return ("Record size in header bigger than fifolog");

 f->recsize = u;


 if (u != f->recsize) {
  free(f->recbuf);
  f->recbuf = ((void*)0);
  f->recsize = u;
  f->recbuf = malloc(f->recsize);
  if (f->recbuf == ((void*)0))
   return ("Cannot malloc");
 }


 f->logsize /= u;
 if (f->logsize < 10)
  return ("less than 10 records in fifolog");

 f->logsize--;



 f->zs = calloc(1, sizeof(*f->zs));
 if (f->zs == ((void*)0))
  return ("cannot malloc");

 return (((void*)0));
}
