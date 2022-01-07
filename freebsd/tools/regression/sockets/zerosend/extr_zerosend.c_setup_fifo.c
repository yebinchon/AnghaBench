
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 int err (int,char*,char const*,...) ;
 scalar_t__ mkfifo (char*,int) ;
 int mkstemp (char*) ;
 int open (char*,int) ;
 int unlink (char*) ;

__attribute__((used)) static void
setup_fifo(const char *test, int *fdp)
{
 char path[] = "0send_fifo.XXXXXXX";
 int fd1, fd2;

 if (mkstemp(path) == -1)
  err(1, "%s: setup_fifo: mktemp", test);
 unlink(path);

 if (mkfifo(path, 0600) < 0)
  err(1, "%s: setup_fifo: mkfifo(%s)", test, path);

 fd1 = open(path, O_RDONLY | O_NONBLOCK);
 if (fd1 < 0)
  err(1, "%s: setup_fifo: open(%s, O_RDONLY)", test, path);

 fd2 = open(path, O_WRONLY | O_NONBLOCK);
 if (fd2 < 0)
  err(1, "%s: setup_fifo: open(%s, O_WRONLY)", test, path);

 fdp[0] = fd2;
 fdp[1] = fd1;
}
