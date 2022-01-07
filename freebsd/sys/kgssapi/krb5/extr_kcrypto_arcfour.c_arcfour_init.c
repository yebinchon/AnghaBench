
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct krb5_key_state {int * ks_priv; } ;


 int gone_in (int,char*) ;
 int krb5_warn_interval ;
 scalar_t__ ratecheck (struct timeval*,int *) ;

__attribute__((used)) static void
arcfour_init(struct krb5_key_state *ks)
{
 static struct timeval lastwarn;

 ks->ks_priv = ((void*)0);
 if (ratecheck(&lastwarn, &krb5_warn_interval))
  gone_in(13, "RC4 cipher for Kerberos GSS");
}
