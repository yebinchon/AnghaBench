
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {void* ks_key; } ;


 int bcopy (void const*,void*,int) ;

__attribute__((used)) static void
arcfour_set_key(struct krb5_key_state *ks, const void *in)
{
 void *kp = ks->ks_key;

 if (kp != in)
  bcopy(in, kp, 16);
}
