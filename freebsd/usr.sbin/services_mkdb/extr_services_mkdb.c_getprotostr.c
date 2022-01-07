
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sl_cur; char const** sl_str; } ;
typedef TYPE_1__ StringList ;


 int assert (int) ;

__attribute__((used)) static const char *
getprotostr(StringList *sl, size_t i)
{
 assert(i < sl->sl_cur);
 return sl->sl_str[i];
}
