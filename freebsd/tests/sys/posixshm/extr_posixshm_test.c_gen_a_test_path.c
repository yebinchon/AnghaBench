
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int TEST_PATH_LEN ;
 int errno ;
 char* getenv (char*) ;
 int mkstemp (char*) ;
 int snprintf (char*,int ,char*,char*,int) ;
 int test_path_idx ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
gen_a_test_path(char *path)
{
 snprintf(path, TEST_PATH_LEN, "%s/tmp.XXXXXX%d",
     getenv("TMPDIR") == ((void*)0) ? "/tmp" : getenv("TMPDIR"),
     test_path_idx);

 test_path_idx++;

 ATF_REQUIRE_MSG(mkstemp(path) != -1,
     "mkstemp failed; errno=%d", errno);
 ATF_REQUIRE_MSG(unlink(path) == 0,
     "unlink failed; errno=%d", errno);
}
