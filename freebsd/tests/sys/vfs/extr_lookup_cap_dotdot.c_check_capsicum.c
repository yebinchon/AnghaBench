
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_FEATURE (char*) ;

__attribute__((used)) static void
check_capsicum(void)
{
 ATF_REQUIRE_FEATURE("security_capabilities");
 ATF_REQUIRE_FEATURE("security_capability_mode");
}
