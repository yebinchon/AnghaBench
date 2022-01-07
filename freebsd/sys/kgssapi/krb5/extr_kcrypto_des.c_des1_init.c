
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct krb5_key_state {struct des1_state* ks_priv; } ;
struct des1_state {int ds_lock; } ;


 int MTX_DEF ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int M_ZERO ;
 int gone_in (int,char*) ;
 int krb5_warn_interval ;
 struct des1_state* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ratecheck (struct timeval*,int *) ;

__attribute__((used)) static void
des1_init(struct krb5_key_state *ks)
{
 static struct timeval lastwarn;
 struct des1_state *ds;

 ds = malloc(sizeof(struct des1_state), M_GSSAPI, M_WAITOK|M_ZERO);
 mtx_init(&ds->ds_lock, "gss des lock", ((void*)0), MTX_DEF);
 ks->ks_priv = ds;
 if (ratecheck(&lastwarn, &krb5_warn_interval))
  gone_in(13, "DES cipher for Kerberos GSS");
}
