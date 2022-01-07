
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK (int) ;
 int ATF_REQUIRE (int) ;
 int KCOV_ENTRY_SIZE ;
 int KCOV_MODE_TRACE_PC ;
 int KIOENABLE ;
 int KIOSETBUFSIZE ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ ioctl (int,int ,int) ;
 scalar_t__ mmap (int *,int,int,int ,int,int ) ;
 int open_kcov () ;
 int sem1 ;
 int sem2 ;
 int sem_post (int *) ;
 int sem_wait (int *) ;

__attribute__((used)) static void *
kcov_mmap_enable_thread(void *data)
{
 int fd;

 fd = open_kcov();
 *(int *)data = fd;

 ATF_REQUIRE(ioctl(fd, KIOSETBUFSIZE, PAGE_SIZE / KCOV_ENTRY_SIZE) == 0);
 ATF_CHECK(mmap(((void*)0), PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED,
     fd, 0) != MAP_FAILED);
 ATF_CHECK(ioctl(fd, KIOENABLE, KCOV_MODE_TRACE_PC) == 0);

 sem_post(&sem1);
 sem_wait(&sem2);

 return (((void*)0));
}
