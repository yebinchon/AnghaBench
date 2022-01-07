
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint128_t ;


 int ATF_CHECK_MSG (int ,char*,char*,char*,char const*) ;
 int formatu128 (char*,int ) ;
 int uint128_equals (int ,int ) ;

__attribute__((used)) static void
u128_check_equality(uint128_t a, uint128_t b, const char *descr)
{
 char fmtbufa[52], fmtbufb[52];

 formatu128(fmtbufa, a);
 formatu128(fmtbufb, b);

 ATF_CHECK_MSG(uint128_equals(a, b),
     "Expected: [%s] != Actual: [%s]: %s", fmtbufa, fmtbufb, descr);
}
