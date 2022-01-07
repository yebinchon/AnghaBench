
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {char* tag; int message; scalar_t__ failed; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ EBADF ;
 int MAP_ANON ;
 struct shared_info* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int cfail (struct shared_info*,char*,char*,int) ;
 scalar_t__ close (int) ;
 int closefrom (int) ;
 int cok (struct shared_info*,char*) ;
 int devnull () ;
 scalar_t__ dup2 (int,int) ;
 scalar_t__ errno ;
 int fail (char*,char*,...) ;
 int fail_err (char*) ;
 scalar_t__ fork () ;
 int getpagesize () ;
 int highest_fd () ;
 struct shared_info* mmap (int *,int ,int,int,int,int ) ;
 int ok (char*) ;
 int printf (char*) ;
 scalar_t__ wait (int *) ;

int
main(void)
{
 struct shared_info *info;
 pid_t pid;
 int fd, i, start;

 printf("1..15\n");


 start = devnull();
 if (start == -1)
  fail("open", "bad descriptor %d", start);
 ok("open");


 fd = highest_fd();
 if (start != fd)
  fail("highest_fd", "bad descriptor %d != %d", start, fd);
 ok("highest_fd");


 closefrom(start + 1);
 fd = highest_fd();
 if (fd != start)
  fail("closefrom", "highest fd %d", fd);
 ok("closefrom");


 for (i = 0; i < 16; i++)
  (void)devnull();
 fd = highest_fd();
 if (fd != start + 16)
  fail("open 16", "highest fd %d", fd);
 ok("open 16");


 closefrom(11);
 fd = highest_fd();
 if (fd != 10)
  fail("closefrom", "highest fd %d", fd);
 ok("closefrom");


 if (close(6) < 0 || close(8) < 0)
  fail_err("close2 ");
 ok("close 2");


 if (close(6) == 0)
  fail("close(6)", "did not fail");
 if (errno != EBADF)
  fail_err("close(6)");
 ok("close(6)");
 if (close(8) == 0)
  fail("close(8)", "did not fail");
 if (errno != EBADF)
  fail_err("close(8)");
 ok("close(8)");


 closefrom(4);
 fd = highest_fd();
 if (fd != 3)
  fail("closefrom", "highest fd %d", fd);
 ok("closefrom");


 info = mmap(((void*)0), getpagesize(), PROT_READ | PROT_WRITE, MAP_ANON |
     MAP_SHARED, -1, 0);
 if (info == MAP_FAILED)
  fail_err("mmap");
 ok("mmap");


 pid = fork();
 if (pid < 0)
  fail_err("fork");
 if (pid == 0) {

  closefrom(0);
  fd = highest_fd();
  if (fd >= 0)
   cfail(info, "closefrom(0)", "highest fd %d", fd);
  cok(info, "closefrom(0)");
 }
 if (wait(((void*)0)) < 0)
  fail_err("wait");
 if (info->failed)
  fail(info->tag, "%s", info->message);
 ok(info->tag);


 pid = fork();
 if (pid < 0)
  fail_err("fork");
 if (pid == 0) {

  closefrom(-1);
  fd = highest_fd();
  if (fd >= 0)
   cfail(info, "closefrom(-1)", "highest fd %d", fd);
  cok(info, "closefrom(-1)");
 }
 if (wait(((void*)0)) < 0)
  fail_err("wait");
 if (info->failed)
  fail(info->tag, "%s", info->message);
 ok(info->tag);


 if (dup2(1, 6) < 0)
  fail_err("dup2");
 fd = highest_fd();
 if (fd != 6)
  fail("dup2", "highest fd %d", fd);
 ok("dup2");


 closefrom(4);
 fd = highest_fd();
 if (fd != 3)
  fail("closefrom", "highest fd %d", fd);
 ok("closefrom");


 closefrom(32);
 fd = highest_fd();
 if (fd != 3)
  fail("closefrom", "highest fd %d", fd);
 ok("closefrom");

 return (0);
}
