
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {int dummy; } ;


 int arcfour_set_key (struct krb5_key_state*,void const*) ;

__attribute__((used)) static void
arcfour_random_to_key(struct krb5_key_state *ks, const void *in)
{

 arcfour_set_key(ks, in);
}
