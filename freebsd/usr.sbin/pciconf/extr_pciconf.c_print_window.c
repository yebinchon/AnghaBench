
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;


 int printf (char*,int,char const*,int,int ,int ,char*) ;

__attribute__((used)) static void
print_window(int reg, const char *type, int range, uint64_t base,
    uint64_t limit)
{

 printf("    window[%02x] = type %s, range %2d, addr %#jx-%#jx, %s\n",
     reg, type, range, (uintmax_t)base, (uintmax_t)limit,
     base < limit ? "enabled" : "disabled");
}
