
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sadb_comb {int sadb_comb_encrypt; int sadb_comb_encrypt_minbits; void* sadb_comb_encrypt_maxbits; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct enc_xform {int maxkey; int minkey; } ;


 int IPSEC_ASSERT (int,char*) ;
 int MGET (struct mbuf*,int ,int ) ;
 int const MLEN ;
 int MT_DATA ;
 int M_ALIGN (struct mbuf*,int const) ;
 int M_NOWAIT ;
 int PFKEY_ALIGN8 (int) ;
 int SADB_EALG_MAX ;
 scalar_t__ V_ipsec_esp_auth ;
 void* V_ipsec_esp_keymin ;
 void* _BITS (int ) ;
 int bzero (struct sadb_comb*,int) ;
 int caddr_t ;
 struct enc_xform* enc_algorithm_lookup (int) ;
 struct mbuf* key_getcomb_ah () ;
 int key_getcomb_setlifetime (struct sadb_comb*) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_pulldown (struct mbuf*,int,int const,int*) ;
 struct sadb_comb* mtod (struct mbuf*,int ) ;

__attribute__((used)) static struct mbuf *
key_getcomb_ealg(void)
{
 struct sadb_comb *comb;
 const struct enc_xform *algo;
 struct mbuf *result = ((void*)0), *m, *n;
 int encmin;
 int i, off, o;
 int totlen;
 const int l = PFKEY_ALIGN8(sizeof(struct sadb_comb));

 m = ((void*)0);
 for (i = 1; i <= SADB_EALG_MAX; i++) {
  algo = enc_algorithm_lookup(i);
  if (algo == ((void*)0))
   continue;


  if (_BITS(algo->maxkey) < V_ipsec_esp_keymin)
   continue;
  if (_BITS(algo->minkey) < V_ipsec_esp_keymin)
   encmin = V_ipsec_esp_keymin;
  else
   encmin = _BITS(algo->minkey);

  if (V_ipsec_esp_auth)
   m = key_getcomb_ah();
  else {
   IPSEC_ASSERT(l <= MLEN,
    ("l=%u > MLEN=%lu", l, (u_long) MLEN));
   MGET(m, M_NOWAIT, MT_DATA);
   if (m) {
    M_ALIGN(m, l);
    m->m_len = l;
    m->m_next = ((void*)0);
    bzero(mtod(m, caddr_t), m->m_len);
   }
  }
  if (!m)
   goto fail;

  totlen = 0;
  for (n = m; n; n = n->m_next)
   totlen += n->m_len;
  IPSEC_ASSERT((totlen % l) == 0, ("totlen=%u, l=%u", totlen, l));

  for (off = 0; off < totlen; off += l) {
   n = m_pulldown(m, off, l, &o);
   if (!n) {

    goto fail;
   }
   comb = (struct sadb_comb *)(mtod(n, caddr_t) + o);
   bzero(comb, sizeof(*comb));
   key_getcomb_setlifetime(comb);
   comb->sadb_comb_encrypt = i;
   comb->sadb_comb_encrypt_minbits = encmin;
   comb->sadb_comb_encrypt_maxbits = _BITS(algo->maxkey);
  }

  if (!result)
   result = m;
  else
   m_cat(result, m);
 }

 return result;

 fail:
 if (result)
  m_freem(result);
 return ((void*)0);
}
