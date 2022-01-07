
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__* cache_entry ;
struct TYPE_4__ {TYPE_1__* params; } ;
struct TYPE_3__ {int entry_name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
configuration_entry_cache_mp_cmp(const void *e1, const void *e2)
{
 return (strcmp((const char *)e1,
  (*((cache_entry *)e2))->params->entry_name
  ));
}
