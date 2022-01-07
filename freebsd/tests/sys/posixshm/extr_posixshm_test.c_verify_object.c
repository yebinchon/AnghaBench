
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int atf_tc_fail (char*,...) ;
 int close (int) ;
 int errno ;
 int getpagesize () ;
 scalar_t__ isprint (char) ;
 char* mmap (int ,int,int ,int ,int,int ) ;
 scalar_t__ munmap (char*,int) ;
 int shm_open (char const*,int ,int) ;

__attribute__((used)) static void
verify_object(const char *path, char expected_value)
{
 int fd;
 int pagesize;
 char *page;

 ATF_REQUIRE(0 < (pagesize = getpagesize()));

 fd = shm_open(path, O_RDONLY, 0777);
 if (fd < 0)
  atf_tc_fail("shm_open failed in verify_object; errno=%d, path=%s",
      errno, path);

 page = mmap(0, pagesize, PROT_READ, MAP_SHARED, fd, 0);
 if (page == MAP_FAILED)
  atf_tc_fail("mmap(1)");
 if (page[0] != expected_value)
  atf_tc_fail("Renamed object has incorrect value; has"
      "%d (0x%x, '%c'), expected %d (0x%x, '%c')\n",
      page[0], page[0], isprint(page[0]) ? page[0] : ' ',
      expected_value, expected_value,
      isprint(expected_value) ? expected_value : ' ');
 ATF_REQUIRE_MSG(munmap(page, pagesize) == 0, "munmap failed; errno=%d",
     errno);
 close(fd);
}
