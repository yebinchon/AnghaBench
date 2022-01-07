
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct krb5_key_state {struct des3_state* ks_priv; } ;
struct des3_state {int ds_lock; } ;


 int MTX_DEF ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int M_ZERO ;
 int gone_in (int,char*) ;
 int krb5_warn_interval ;
 struct des3_state* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ratecheck (struct timeval*,int *) ;

__attribute__((used)) static void
des3_init(struct krb5_key_state *ks)
{
 static struct timeval lastwarn;
 struct des3_state *ds;

 ds = malloc(sizeof(struct des3_state), M_GSSAPI, M_WAITOK|M_ZERO);
 mtx_init(&ds->ds_lock, "gss des3 lock", ((void*)0), MTX_DEF);
 ks->ks_priv = ds;
 if (ratecheck(&lastwarn, &krb5_warn_interval))
  gone_in(13, "DES3 cipher for Kerberos GSS");
}
