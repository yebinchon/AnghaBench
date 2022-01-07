
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mad_rmpp_recv {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void deref_rmpp_recv(struct mad_rmpp_recv *rmpp_recv)
{
 if (atomic_dec_and_test(&rmpp_recv->refcount))
  complete(&rmpp_recv->comp);
}
