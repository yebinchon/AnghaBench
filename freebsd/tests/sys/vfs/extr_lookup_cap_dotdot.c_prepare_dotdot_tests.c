
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cwd ;


 int ATF_REQUIRE (int) ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int abspath ;
 int asprintf (int *,char*,char*) ;
 int dirfd ;
 int * getcwd (char*,int) ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ mkdirat (int ,char*,int) ;
 int open (char*,int ) ;
 scalar_t__ symlinkat (char*,int ,char*) ;
 int touchat (int ,char*) ;

__attribute__((used)) static void
prepare_dotdot_tests(void)
{
 char cwd[MAXPATHLEN];

 ATF_REQUIRE(getcwd(cwd, sizeof(cwd)) != ((void*)0));
 asprintf(&abspath, "%s/testdir/d1/f1", cwd);

 ATF_REQUIRE(mkdir("testdir", 0777) == 0);
 ATF_REQUIRE((dirfd = open("testdir", O_RDONLY)) >= 0);

 ATF_REQUIRE(mkdirat(dirfd, "d1", 0777) == 0);
 ATF_REQUIRE(mkdirat(dirfd, "d1/d2", 0777) == 0);
 ATF_REQUIRE(mkdirat(dirfd, "d1/d2/d3", 0777) == 0);
 touchat(dirfd, "d1/f1");
 touchat(dirfd, "d1/d2/f2");
 touchat(dirfd, "d1/d2/d3/f3");
 ATF_REQUIRE(symlinkat("d1/d2/d3", dirfd, "l3") == 0);
 ATF_REQUIRE(symlinkat("../testdir/d1", dirfd, "lup") == 0);
 ATF_REQUIRE(symlinkat("../..", dirfd, "d1/d2/d3/ld1") == 0);
 ATF_REQUIRE(symlinkat("../../f1", dirfd, "d1/d2/d3/lf1") == 0);
}
