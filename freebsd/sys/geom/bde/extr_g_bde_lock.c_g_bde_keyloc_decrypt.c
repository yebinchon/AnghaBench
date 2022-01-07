
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
typedef int keyInstance ;
typedef int cipherInstance ;


 int AES_decrypt (int *,int *,void*,int *,int) ;
 int AES_init (int *) ;
 int AES_makekey (int *,int ,int ,int *) ;
 int DIR_DECRYPT ;
 int G_BDE_KKEYBITS ;
 int bzero (int *,int) ;
 int le64dec (int *) ;

int
g_bde_keyloc_decrypt(u_char *sha2, void *input, uint64_t *output)
{
 keyInstance ki;
 cipherInstance ci;
 u_char buf[16];

 AES_init(&ci);
 AES_makekey(&ki, DIR_DECRYPT, G_BDE_KKEYBITS, sha2 + 0);
 AES_decrypt(&ci, &ki, input, buf, sizeof buf);
 *output = le64dec(buf);
 bzero(buf, sizeof buf);
 bzero(&ci, sizeof ci);
 bzero(&ki, sizeof ki);
 return(0);
}
