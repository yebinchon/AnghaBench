
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwstring {int dummy; } ;
struct TYPE_2__ {scalar_t__ rflag; } ;


 int bwscoll (struct bwstring const*,struct bwstring const*,int ) ;
 TYPE_1__* default_sort_mods ;

int
top_level_str_coll(const struct bwstring *s1, const struct bwstring *s2)
{

 if (default_sort_mods->rflag) {
  const struct bwstring *tmp;

  tmp = s1;
  s1 = s2;
  s2 = tmp;
 }

 return (bwscoll(s1, s2, 0));
}
