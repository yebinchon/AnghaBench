
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_FEATURE (char*) ;
 int O_CLOEXEC ;
 int O_EXEC ;
 int open (char*,int) ;
 int rootfd ;

__attribute__((used)) static void
check_capsicum(void)
{
 ATF_REQUIRE_FEATURE("security_capabilities");
 ATF_REQUIRE_FEATURE("security_capability_mode");

 ATF_REQUIRE((rootfd = open("/", O_EXEC | O_CLOEXEC)) >= 0);
}
