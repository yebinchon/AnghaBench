
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint8_t ;
typedef int uint32_t ;
typedef int u_int8_t ;
typedef uintptr_t tcp_seq ;
struct in_conninfo {int inc_flags; uintptr_t inc_faddr; uintptr_t inc_laddr; uintptr_t inc6_faddr; uintptr_t inc6_laddr; uintptr_t inc_fport; uintptr_t inc_lport; } ;
typedef int secmod ;
typedef int irs ;
typedef int flags ;
typedef int SIPHASH_CTX ;



 int SipHash24_Init (int *) ;
 int SipHash_Final (int *,int *) ;
 int SipHash_SetKey (int *,uintptr_t*) ;
 int SipHash_Update (int *,uintptr_t*,int) ;

__attribute__((used)) static uint32_t
syncookie_mac(struct in_conninfo *inc, tcp_seq irs, uint8_t flags,
    uint8_t *secbits, uintptr_t secmod)
{
 SIPHASH_CTX ctx;
 uint32_t siphash[2];

 SipHash24_Init(&ctx);
 SipHash_SetKey(&ctx, secbits);
 switch (inc->inc_flags & 128) {
 }
 SipHash_Update(&ctx, &inc->inc_fport, sizeof(inc->inc_fport));
 SipHash_Update(&ctx, &inc->inc_lport, sizeof(inc->inc_lport));
 SipHash_Update(&ctx, &irs, sizeof(irs));
 SipHash_Update(&ctx, &flags, sizeof(flags));
 SipHash_Update(&ctx, &secmod, sizeof(secmod));
 SipHash_Final((u_int8_t *)&siphash, &ctx);

 return (siphash[0] ^ siphash[1]);
}
