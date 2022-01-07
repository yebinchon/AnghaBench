
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* sstr; } ;


 scalar_t__ STORAGE_MACRO ;
 TYPE_1__* mstack ;
 int sp ;
 scalar_t__* sstack ;

__attribute__((used)) static int
string_in_use(const char *ptr)
{
 int i;
 for (i = 0; i <= sp; i++) {
  if (sstack[i] == STORAGE_MACRO && mstack[i].sstr == ptr)
   return 1;
  }
 return 0;
}
