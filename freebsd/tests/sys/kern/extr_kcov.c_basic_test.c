
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t u_int ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 int KIODISABLE ;
 int KIOENABLE ;
 scalar_t__ atomic_load_64 (int *) ;
 int atomic_store_64 (int *,int ) ;
 int * common_head (int*) ;
 int common_tail (int,int *) ;
 scalar_t__ ioctl (int,int ,size_t) ;
 char** modes ;
 size_t nitems (char**) ;
 int sleep (int ) ;

__attribute__((used)) static void
basic_test(u_int mode)
{
 uint64_t *buf;
 int fd;

 buf = common_head(&fd);
 ATF_REQUIRE_MSG(ioctl(fd, KIOENABLE, mode) == 0,
     "Unable to enable kcov %s",
     mode < nitems(modes) ? modes[mode] : "unknown mode");

 atomic_store_64(&buf[0], 0);

 sleep(0);
 ATF_REQUIRE_MSG(atomic_load_64(&buf[0]) != 0, "No records found");

 ATF_REQUIRE_MSG(ioctl(fd, KIODISABLE, 0) == 0,
     "Unable to disable kcov");

 common_tail(fd, buf);
}
