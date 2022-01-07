
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*) ;
 int KCOV_ENTRY_SIZE ;
 int KIOSETBUFSIZE ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ ioctl (int,int ,int) ;
 void* mmap (int *,int,int,int ,int,int ) ;
 int open_kcov () ;

__attribute__((used)) static void *
common_head(int *fdp)
{
 void *data;
 int fd;

 fd = open_kcov();

 ATF_REQUIRE_MSG(ioctl(fd, KIOSETBUFSIZE,
     PAGE_SIZE / KCOV_ENTRY_SIZE) == 0,
     "Unable to set the kcov buffer size");

 data = mmap(((void*)0), PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
 ATF_REQUIRE_MSG(data != MAP_FAILED, "Unable to mmap the kcov buffer");

 *fdp = fd;
 return (data);
}
