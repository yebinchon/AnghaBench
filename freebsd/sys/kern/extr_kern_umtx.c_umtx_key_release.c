
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
struct TYPE_4__ {TYPE_1__ shared; } ;
struct umtx_key {TYPE_2__ info; scalar_t__ shared; } ;


 int vm_object_deallocate (int ) ;

void
umtx_key_release(struct umtx_key *key)
{
 if (key->shared)
  vm_object_deallocate(key->info.shared.object);
}
