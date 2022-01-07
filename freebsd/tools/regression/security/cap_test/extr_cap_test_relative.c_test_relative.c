
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int AT_FDCWD ;
 int CAP_ALL ;
 int CAP_LOOKUP ;
 int CAP_MASK_VALID ;
 int CAP_READ ;
 int CAP_SEEK ;
 int CAP_WRITE ;
 int CHECK_CAPMODE (int (*) (int,char*,int ),int ,char*,int ) ;
 int CHECK_NOTCAPABLE (int (*) (int,char*,int ),int,char*,int ) ;
 int CHECK_RIGHTS (int,int) ;
 int CHECK_SYSCALL_SUCCEEDS (int (*) (int,char*,int ),int,...) ;
 int MAKE_CAPABILITY (int,int,int) ;
 int O_RDONLY ;
 int PASSED ;
 int REQUIRE (int) ;
 int cap_enter () ;
 int cap_getrights ;
 int open (char*,int ) ;
 int openat (int,char*,int ) ;

int
test_relative(void)
{
 int success = PASSED;
 int fd, etc, etc_cap, etc_cap_ro, etc_cap_base, etc_cap_all;
 cap_rights_t baserights = CAP_READ | CAP_WRITE | CAP_SEEK | CAP_LOOKUP;
 cap_rights_t rights;

 REQUIRE(etc = open("/etc/", O_RDONLY));
 CHECK_SYSCALL_SUCCEEDS(cap_getrights, etc, &rights);
 CHECK_RIGHTS(rights, CAP_ALL);

 MAKE_CAPABILITY(etc_cap, etc, CAP_READ);
 MAKE_CAPABILITY(etc_cap_ro, etc, CAP_READ | CAP_LOOKUP);
 MAKE_CAPABILITY(etc_cap_base, etc, baserights);
 MAKE_CAPABILITY(etc_cap_all, etc, CAP_MASK_VALID);





 CHECK_SYSCALL_SUCCEEDS(openat, etc, "/etc/passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, AT_FDCWD, "/etc/passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc, "passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc, "../etc/passwd", O_RDONLY);






 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_ro, "passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_base, "passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_all, "passwd", O_RDONLY);

 CHECK_NOTCAPABLE(openat, etc_cap_ro, "../etc/passwd", O_RDONLY);
 CHECK_NOTCAPABLE(openat, etc_cap_base, "../etc/passwd", O_RDONLY);






 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_all, "../etc/passwd", O_RDONLY);




 CHECK_SYSCALL_SUCCEEDS(cap_getrights, etc_cap_base, &rights);

 REQUIRE(fd = openat(etc_cap_base, "passwd", O_RDONLY));
 CHECK_SYSCALL_SUCCEEDS(cap_getrights, fd, &rights);
 CHECK_RIGHTS(rights, baserights);




 REQUIRE(cap_enter());





 CHECK_SYSCALL_SUCCEEDS(openat, etc, "passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_ro, "passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_base, "passwd", O_RDONLY);
 CHECK_SYSCALL_SUCCEEDS(openat, etc_cap_all, "passwd", O_RDONLY);




 CHECK_NOTCAPABLE(openat, etc_cap, "passwd", O_RDONLY);




 CHECK_CAPMODE(openat, AT_FDCWD, "/etc/passwd", O_RDONLY);
 CHECK_NOTCAPABLE(openat, etc, "/etc/passwd", O_RDONLY);




 CHECK_NOTCAPABLE(openat, etc, "../etc/passwd", O_RDONLY);
 CHECK_NOTCAPABLE(openat, etc_cap_ro, "../etc/passwd", O_RDONLY);
 CHECK_NOTCAPABLE(openat, etc_cap_base, "../etc/passwd", O_RDONLY);

 REQUIRE(fd = openat(etc, "passwd", O_RDONLY));
 CHECK_SYSCALL_SUCCEEDS(cap_getrights, fd, &rights);




 REQUIRE(fd = openat(etc_cap_base, "passwd", O_RDONLY));
 CHECK_SYSCALL_SUCCEEDS(cap_getrights, fd, &rights);
 CHECK_RIGHTS(rights, baserights);

 return success;
}
