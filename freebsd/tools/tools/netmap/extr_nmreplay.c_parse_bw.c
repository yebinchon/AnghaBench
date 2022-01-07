
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _sm {char* member_0; int member_1; } ;


 int U_PARSE_ERR ;
 int parse_gen (char const*,struct _sm*,int*) ;

__attribute__((used)) static uint64_t
parse_bw(const char *arg)
{
    struct _sm a[] = {
 {"", 1}, {"kK", 1000}, {"mM", 1000000}, {"gG", 1000000000}, {((void*)0), 0}
    };
    int err;
    uint64_t ret = (uint64_t)parse_gen(arg, a, &err);
    return err ? U_PARSE_ERR : ret;
}
