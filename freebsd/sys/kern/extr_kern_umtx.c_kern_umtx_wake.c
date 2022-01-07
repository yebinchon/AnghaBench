
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_key {int dummy; } ;
struct thread {int dummy; } ;


 int AUTO_SHARE ;
 int THREAD_SHARE ;
 int TYPE_SIMPLE_WAIT ;
 int umtx_key_get (void*,int ,int ,struct umtx_key*) ;
 int umtx_key_release (struct umtx_key*) ;
 int umtxq_lock (struct umtx_key*) ;
 int umtxq_signal (struct umtx_key*,int) ;
 int umtxq_unlock (struct umtx_key*) ;

int
kern_umtx_wake(struct thread *td, void *uaddr, int n_wake, int is_private)
{
 struct umtx_key key;
 int ret;

 if ((ret = umtx_key_get(uaddr, TYPE_SIMPLE_WAIT,
     is_private ? THREAD_SHARE : AUTO_SHARE, &key)) != 0)
  return (ret);
 umtxq_lock(&key);
 umtxq_signal(&key, n_wake);
 umtxq_unlock(&key);
 umtx_key_release(&key);
 return (0);
}
