
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fwrite (char*,int,scalar_t__,int ) ;
 scalar_t__ read (int,char*,int) ;
 int shm_open (char const*,int ,int ) ;
 int stdout ;
 int warn (char*,char const*) ;
 int warnx (char*) ;

__attribute__((used)) static int
read_one_shm(const char *path)
{
 char buf[4096];
 ssize_t size, se;
 int fd, ret;

 ret = 1;
 fd = shm_open(path, O_RDONLY, 0);
 if (fd == -1) {
  warn("open %s", path);
  goto out;
 }
 for (;;) {
  size = read(fd, buf, sizeof(buf));
  if (size > 0) {
   se = fwrite(buf, 1, size, stdout);
   if (se < size) {
    warnx("short write to stdout");
    goto out;
   }
  }
  if (size == (ssize_t)sizeof(buf))
   continue;
  if (size >= 0 && size < (ssize_t)sizeof(buf)) {
   ret = 0;
   goto out;
  }
  warn("read from %s", path);
  goto out;
 }
out:
 close(fd);
 return (ret);
}
