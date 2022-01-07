
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* name; int priv; scalar_t__ evhand; } ;
typedef TYPE_2__ moduledata_t ;
typedef TYPE_3__* module_t ;
struct TYPE_11__ {TYPE_1__* file; } ;
struct TYPE_9__ {int modules; } ;


 int Giant ;
 int MOD_EVENT (TYPE_3__*,int ) ;
 int MOD_LOAD ;
 int MOD_SLOCK ;
 int MOD_SUNLOCK ;
 int MOD_UNLOAD ;
 int MOD_XLOCK ;
 int MOD_XUNLOCK ;
 int TAILQ_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int flink ;
 TYPE_3__* module_lookupbyname (char*) ;
 int module_release (TYPE_3__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,char*) ;
 int printf (char*,char*,void*,int ,int) ;

void
module_register_init(const void *arg)
{
 const moduledata_t *data = (const moduledata_t *)arg;
 int error;
 module_t mod;

 mtx_lock(&Giant);
 MOD_SLOCK;
 mod = module_lookupbyname(data->name);
 if (mod == ((void*)0))
  panic("module_register_init: module named %s not found\n",
      data->name);
 MOD_SUNLOCK;
 error = MOD_EVENT(mod, MOD_LOAD);
 if (error) {
  MOD_EVENT(mod, MOD_UNLOAD);
  MOD_XLOCK;
  module_release(mod);
  MOD_XUNLOCK;
  printf("module_register_init: MOD_LOAD (%s, %p, %p) error"
      " %d\n", data->name, (void *)data->evhand, data->priv,
      error);
 } else {
  MOD_XLOCK;
  if (mod->file) {
   TAILQ_REMOVE(&mod->file->modules, mod, flink);
   TAILQ_INSERT_HEAD(&mod->file->modules, mod, flink);
  }
  MOD_XUNLOCK;
 }
 mtx_unlock(&Giant);
}
