
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; } ;
struct oidname {scalar_t__* labels; TYPE_1__ oid; } ;



__attribute__((used)) static bool
oidname_has_labels(const struct oidname *on)
{
 size_t i;

 for (i = 0; i < on->oid.len; ++i)
  if (on->labels[i] != 0)
   return (1);
 return (0);
}
