
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
typedef int keyInstance ;
typedef int cipherInstance ;


 int AES_encrypt (int *,int *,int *,void*,int) ;
 int AES_init (int *) ;
 int AES_makekey (int *,int ,int ,int *) ;
 int DIR_ENCRYPT ;
 int G_BDE_KKEYBITS ;
 int bzero (int *,int) ;
 int le64enc (int *,int ) ;

int
g_bde_keyloc_encrypt(u_char *sha2, uint64_t v0, uint64_t v1, void *output)
{
 u_char buf[16];
 keyInstance ki;
 cipherInstance ci;

 le64enc(buf, v0);
 le64enc(buf + 8, v1);
 AES_init(&ci);
 AES_makekey(&ki, DIR_ENCRYPT, G_BDE_KKEYBITS, sha2 + 0);
 AES_encrypt(&ci, &ki, buf, output, sizeof buf);
 bzero(buf, sizeof buf);
 bzero(&ci, sizeof ci);
 bzero(&ki, sizeof ki);
 return (0);
}
