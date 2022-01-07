
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int FIFOLOG_FMT_MAGIC ;
 int FIFOLOG_OFF_BS ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int assert (int) ;
 int be32enc (char*,scalar_t__) ;
 char* calloc (int,scalar_t__) ;
 scalar_t__ close (int) ;
 int errno ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 scalar_t__ ftruncate (int,scalar_t__) ;
 int ioctl (int,int ,scalar_t__*) ;
 int memset (char*,int ,scalar_t__) ;
 int open (char const*,int,...) ;
 int pwrite (int,char*,scalar_t__,scalar_t__) ;
 int strcpy (char*,int ) ;

const char *
fifolog_create(const char *fn, off_t size, ssize_t recsize)
{
 int i, fd;
 ssize_t u;
 u_int uu;
 off_t ms;
 struct stat st;
 char *buf;
 int created;

 fd = open(fn, O_WRONLY | O_TRUNC | O_EXCL | O_CREAT, 0644);
 if (fd < 0) {
  created = 0;
  fd = open(fn, O_WRONLY);
  if (fd < 0)
   return ("Could not open");
 } else
  created = 1;


 if (recsize == 0)
  recsize = 512;


 i = fstat(fd, &st);
 assert(i == 0);
 if (!S_ISBLK(st.st_mode) &&
     !S_ISCHR(st.st_mode) &&
     !S_ISREG(st.st_mode)) {
  assert(!close (fd));
  return ("Wrong file type");
 }

 if(!created && S_ISREG(st.st_mode)) {
  assert(!close (fd));
  return ("Wrong file type");
 }


 i = ioctl(fd, DIOCGSECTORSIZE, &uu);
 u = uu;
 if (i == 0 && (u > recsize || (recsize % u) != 0))
  recsize = u;


 i = ioctl(fd, DIOCGMEDIASIZE, &ms);
 if (i == 0 && (size == 0 || size > ms))
  size = ms;

 if (size == 0 && S_ISREG(st.st_mode))
  size = st.st_size;

 if (size == 0)
  size = recsize * (off_t)(24*60*60);

 if (S_ISREG(st.st_mode) && ftruncate(fd, size) < 0)
  return ("Could not ftrunc");

 buf = calloc(1, recsize);
 if (buf == ((void*)0))
  return ("Could not malloc");

 strcpy(buf, FIFOLOG_FMT_MAGIC);
 be32enc(buf + FIFOLOG_OFF_BS, recsize);
 if (recsize != pwrite(fd, buf, recsize, 0)) {
  i = errno;
  free(buf);
  errno = i;
  return ("Could not write first sector");
 }
 memset(buf, 0, recsize);
 if ((int)recsize != pwrite(fd, buf, recsize, recsize)) {
  i = errno;
  free(buf);
  errno = i;
  return ("Could not write second sector");
 }
 free(buf);
 assert(0 == close(fd));
 return (((void*)0));
}
