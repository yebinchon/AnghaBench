
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_context {int kc_more_flags; } ;


 int LOCAL ;

__attribute__((used)) static __inline int
is_initiator(struct krb5_context *kc)
{
 return (kc->kc_more_flags & LOCAL);
}
