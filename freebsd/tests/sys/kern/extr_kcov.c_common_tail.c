
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*) ;
 int PAGE_SIZE ;
 int close (int) ;
 scalar_t__ munmap (void*,int ) ;

__attribute__((used)) static void
common_tail(int fd, void *data)
{

 ATF_REQUIRE_MSG(munmap(data, PAGE_SIZE) == 0,
     "Unable to unmap the kcov buffer");

 close(fd);
}
