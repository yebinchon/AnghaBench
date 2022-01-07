
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umtx_key {int dummy; } ;
struct ucond {int c_has_waiters; int c_flags; } ;
struct thread {int dummy; } ;


 int EFAULT ;
 int GET_SHARE (int ) ;
 int INT_MAX ;
 int TYPE_CV ;
 int fueword32 (int *,int *) ;
 int suword32 (int *,int ) ;
 int umtx_key_get (struct ucond*,int ,int ,struct umtx_key*) ;
 int umtx_key_release (struct umtx_key*) ;
 int umtxq_busy (struct umtx_key*) ;
 int umtxq_lock (struct umtx_key*) ;
 int umtxq_signal (struct umtx_key*,int ) ;
 int umtxq_unbusy_unlocked (struct umtx_key*) ;
 int umtxq_unlock (struct umtx_key*) ;

__attribute__((used)) static int
do_cv_broadcast(struct thread *td, struct ucond *cv)
{
 struct umtx_key key;
 int error;
 uint32_t flags;

 error = fueword32(&cv->c_flags, &flags);
 if (error == -1)
  return (EFAULT);
 if ((error = umtx_key_get(cv, TYPE_CV, GET_SHARE(flags), &key)) != 0)
  return (error);

 umtxq_lock(&key);
 umtxq_busy(&key);
 umtxq_signal(&key, INT_MAX);
 umtxq_unlock(&key);

 error = suword32(&cv->c_has_waiters, 0);
 if (error == -1)
  error = EFAULT;

 umtxq_unbusy_unlocked(&key);

 umtx_key_release(&key);
 return (error);
}
