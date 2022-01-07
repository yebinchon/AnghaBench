
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {int dummy; } ;


 struct krb5_key_state* krb5_get_usage_key (struct krb5_key_state*,int,int) ;

struct krb5_key_state *
krb5_get_integrity_key(struct krb5_key_state *basekey, int usage)
{

 return (krb5_get_usage_key(basekey, usage, 0x55));
}
