
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kd_length; scalar_t__ kd_data; } ;
struct krb5_keyblock {TYPE_1__ kk_key; } ;


 int bzero (scalar_t__,int ) ;
 int delete_data (TYPE_1__*) ;

__attribute__((used)) static void
delete_keyblock(struct krb5_keyblock *kk)
{
 if (kk->kk_key.kd_data)
  bzero(kk->kk_key.kd_data, kk->kk_key.kd_length);
 delete_data(&kk->kk_key);
}
