
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int8_t ;
typedef int SIPHASH_CTX ;


 int SipHash24_Init (int *) ;
 int SipHash_Final (int *,int *) ;
 int SipHash_SetKey (int *,int *) ;
 int SipHash_Update (int *,int *,int ) ;

__attribute__((used)) static uint64_t
tcp_fastopen_make_psk_cookie(uint8_t *psk, uint8_t *cookie, uint8_t cookie_len)
{
 SIPHASH_CTX ctx;
 uint64_t psk_cookie;

 SipHash24_Init(&ctx);
 SipHash_SetKey(&ctx, psk);
 SipHash_Update(&ctx, cookie, cookie_len);
 SipHash_Final((u_int8_t *)&psk_cookie, &ctx);

 return (psk_cookie);
}
