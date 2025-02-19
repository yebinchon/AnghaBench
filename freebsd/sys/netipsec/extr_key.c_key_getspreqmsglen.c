
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct secpolicy {scalar_t__ policy; int tcount; TYPE_6__** req; } ;
struct sadb_x_policy {int dummy; } ;
struct sadb_x_ipsecrequest {int dummy; } ;
struct TYPE_9__ {int sa_len; } ;
struct TYPE_10__ {TYPE_3__ sa; } ;
struct TYPE_7__ {int sa_len; } ;
struct TYPE_8__ {TYPE_1__ sa; } ;
struct TYPE_11__ {TYPE_4__ dst; TYPE_2__ src; } ;
struct TYPE_12__ {TYPE_5__ saidx; } ;


 scalar_t__ IPSEC_POLICY_IPSEC ;
 scalar_t__ PFKEY_ALIGN8 (size_t) ;

__attribute__((used)) static size_t
key_getspreqmsglen(struct secpolicy *sp)
{
 size_t tlen, len;
 int i;

 tlen = sizeof(struct sadb_x_policy);

 if (sp->policy != IPSEC_POLICY_IPSEC)
  return (tlen);


 for (i = 0; i < sp->tcount; i++) {
  len = sizeof(struct sadb_x_ipsecrequest)
   + sp->req[i]->saidx.src.sa.sa_len
   + sp->req[i]->saidx.dst.sa.sa_len;

  tlen += PFKEY_ALIGN8(len);
 }
 return (tlen);
}
