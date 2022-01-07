
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umtx_q {struct umtx_pi* uq_pi_blocked; } ;
struct umtx_pi {TYPE_1__* pi_owner; } ;
struct TYPE_2__ {struct umtx_q* td_umtxq; } ;



__attribute__((used)) static struct umtx_pi *
umtx_pi_next(struct umtx_pi *pi)
{
 struct umtx_q *uq_owner;

 if (pi->pi_owner == ((void*)0))
  return (((void*)0));
 uq_owner = pi->pi_owner->td_umtxq;
 if (uq_owner == ((void*)0))
  return (((void*)0));
 return (uq_owner->uq_pi_blocked);
}
