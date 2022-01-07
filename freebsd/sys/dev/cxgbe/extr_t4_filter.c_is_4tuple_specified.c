
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sport; int dport; int* sip; int* dip; } ;
struct t4_filter_specification {TYPE_1__ mask; scalar_t__ type; } ;



__attribute__((used)) static bool
is_4tuple_specified(struct t4_filter_specification *fs)
{
 int i;
 const int n = fs->type ? 16 : 4;

 if (fs->mask.sport != 0xffff || fs->mask.dport != 0xffff)
  return (0);

 for (i = 0; i < n; i++) {
  if (fs->mask.sip[i] != 0xff)
   return (0);
  if (fs->mask.dip[i] != 0xff)
   return (0);
 }

 return (1);
}
