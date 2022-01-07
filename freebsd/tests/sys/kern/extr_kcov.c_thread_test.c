
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t u_int ;
typedef int pthread_t ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 int KIODISABLE ;
 int KIOENABLE ;
 int * common_head (int*) ;
 int common_tail (int,int *) ;
 scalar_t__ ioctl (int,int ,size_t) ;
 char** modes ;
 size_t nitems (char**) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int thread_test_helper ;

__attribute__((used)) static void
thread_test(u_int mode)
{
 pthread_t thread;
 uint64_t *buf;
 int fd;

 buf = common_head(&fd);

 ATF_REQUIRE_MSG(ioctl(fd, KIOENABLE, mode) == 0,
     "Unable to enable kcov %s",
     mode < nitems(modes) ? modes[mode] : "unknown mode");

 pthread_create(&thread, ((void*)0), thread_test_helper, buf);
 pthread_join(thread, ((void*)0));

 ATF_REQUIRE_MSG(ioctl(fd, KIODISABLE, 0) == 0,
     "Unable to disable kcov");

 common_tail(fd, buf);
}
