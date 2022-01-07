
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct key_value {TYPE_3__* hint; } ;
struct TYPE_4__ {int cached; } ;
struct TYPE_5__ {TYPE_1__ Rh; } ;
struct TYPE_6__ {int status; TYPE_2__ v; } ;


 int HS_INITIALIZED ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static void
randomcoll_init_hint(struct key_value *kv, void *hash)
{

 memcpy(kv->hint->v.Rh.cached, hash, sizeof(kv->hint->v.Rh.cached));
 kv->hint->status = HS_INITIALIZED;
}
