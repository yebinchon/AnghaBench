
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bridge {void* private_data; } ;
typedef void* (* bdg_update_private_data_fn_t ) (void*,void*,int*) ;


 int BDG_WLOCK (struct nm_bridge*) ;
 int BDG_WUNLOCK (struct nm_bridge*) ;
 int EACCES ;
 int EINVAL ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int nm_bdg_valid_auth_token (struct nm_bridge*,void*) ;
 struct nm_bridge* nm_find_bridge (char const*,int ,int *) ;

int
netmap_bdg_update_private_data(const char *name, bdg_update_private_data_fn_t callback,
 void *callback_data, void *auth_token)
{
 void *private_data = ((void*)0);
 struct nm_bridge *b;
 int error = 0;

 NMG_LOCK();
 b = nm_find_bridge(name, 0 , ((void*)0));
 if (!b) {
  error = EINVAL;
  goto unlock_update_priv;
 }
 if (!nm_bdg_valid_auth_token(b, auth_token)) {
  error = EACCES;
  goto unlock_update_priv;
 }
 BDG_WLOCK(b);
 private_data = callback(b->private_data, callback_data, &error);
 b->private_data = private_data;
 BDG_WUNLOCK(b);

unlock_update_priv:
 NMG_UNLOCK();
 return error;
}
