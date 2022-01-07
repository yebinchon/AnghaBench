
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_keyblock {int dummy; } ;
struct krb5_context {int kc_keyblock; int kc_remote_subkey; int kc_local_subkey; } ;


 int copy_key (int *,struct krb5_keyblock**) ;
 scalar_t__ is_initiator (struct krb5_context*) ;

__attribute__((used)) static void
get_initiator_subkey(struct krb5_context *kc, struct krb5_keyblock **kdp)
{

 if (is_initiator(kc))
  copy_key(&kc->kc_local_subkey, kdp);
 else
  copy_key(&kc->kc_remote_subkey, kdp);
 if (!*kdp)
  copy_key(&kc->kc_keyblock, kdp);
}
