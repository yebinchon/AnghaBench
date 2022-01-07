
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


typedef int u_short ;
typedef int u_char ;
struct tcphdr {int th_off; int th_sum; } ;
struct secasvar {TYPE_6__* key_auth; TYPE_4__* sah; } ;
struct TYPE_11__ {int len; } ;
struct mbuf {TYPE_5__ m_pkthdr; } ;
struct TYPE_12__ {char* key_data; } ;
struct TYPE_7__ {int sa_family; } ;
struct TYPE_8__ {TYPE_1__ sa; } ;
struct TYPE_9__ {TYPE_2__ dst; } ;
struct TYPE_10__ {TYPE_3__ saidx; } ;
typedef int MD5_CTX ;




 int EAFNOSUPPORT ;
 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,char*,int) ;
 int _KEYLEN (TYPE_6__*) ;
 int ip6_pseudo_compute (struct mbuf*,int *) ;
 int ip_pseudo_compute (struct mbuf*,int *) ;
 int key_sa_recordxfer (struct secasvar*,struct mbuf*) ;
 int m_apply (struct mbuf*,int,int,int ,int *) ;
 int tcp_signature_apply ;

__attribute__((used)) static int
tcp_signature_compute(struct mbuf *m, struct tcphdr *th,
    struct secasvar *sav, u_char *buf)
{
 MD5_CTX ctx;
 int len;
 u_short csum;

 MD5Init(&ctx);

 switch (sav->sah->saidx.dst.sa.sa_family) {
 default:
  return (EAFNOSUPPORT);
 }




 csum = th->th_sum;
 th->th_sum = 0;
 MD5Update(&ctx, (char *)th, sizeof(struct tcphdr));
 th->th_sum = csum;




 len += (th->th_off << 2);
 if (m->m_pkthdr.len - len > 0)
  m_apply(m, len, m->m_pkthdr.len - len,
      tcp_signature_apply, &ctx);



 MD5Update(&ctx, sav->key_auth->key_data, _KEYLEN(sav->key_auth));
 MD5Final(buf, &ctx);
 key_sa_recordxfer(sav, m);
 return (0);
}
