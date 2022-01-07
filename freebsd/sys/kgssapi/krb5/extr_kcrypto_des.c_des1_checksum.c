
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct krb5_key_state {int dummy; } ;
typedef int MD5_CTX ;


 int CRD_F_ENCRYPT ;
 int MD5Final (char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update_int ;
 int des1_encrypt_1 (struct krb5_key_state const*,int ,char*,int ,int,int *,int ) ;
 int m_apply (struct mbuf*,size_t,size_t,int ,int *) ;
 int m_copyback (struct mbuf*,size_t,size_t,char*) ;

__attribute__((used)) static void
des1_checksum(const struct krb5_key_state *ks, int usage,
    struct mbuf *inout, size_t skip, size_t inlen, size_t outlen)
{
 char hash[16];
 MD5_CTX md5;






 MD5Init(&md5);
 m_apply(inout, skip, inlen, MD5Update_int, &md5);
 MD5Final(hash, &md5);

 des1_encrypt_1(ks, 0, hash, 0, 16, ((void*)0), CRD_F_ENCRYPT);
 m_copyback(inout, skip + inlen, outlen, hash + 8);
}
