
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ ENOENT ;
 int EX_CANTCREAT ;
 int O_EXLOCK ;
 int O_RDONLY ;
 int close (int) ;
 int err (int ,char*,char const*) ;
 scalar_t__ errno ;
 int open (char const*,int,int) ;

__attribute__((used)) static void
wait_for_lock(const char *name)
{
 int fd;

 if ((fd = open(name, O_RDONLY|O_EXLOCK, 0666)) == -1) {
  if (errno == ENOENT || errno == EINTR)
   return;
  err(EX_CANTCREAT, "cannot open %s", name);
 }
 close(fd);
}
