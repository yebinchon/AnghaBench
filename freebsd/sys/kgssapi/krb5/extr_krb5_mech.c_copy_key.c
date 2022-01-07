
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kd_length; } ;
struct krb5_keyblock {TYPE_1__ kk_key; } ;



__attribute__((used)) static void
copy_key(struct krb5_keyblock *from, struct krb5_keyblock **to)
{

 if (from->kk_key.kd_length)
  *to = from;
 else
  *to = ((void*)0);
}
