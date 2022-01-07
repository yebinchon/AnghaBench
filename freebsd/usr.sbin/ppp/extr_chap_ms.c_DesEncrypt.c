
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DES_ecb_encrypt (int *,int *,int *,int) ;
 int DES_set_key (int *,int *) ;
 int MakeKey (int *,int ) ;

__attribute__((used)) static void
DesEncrypt(u_char *clear, u_char *key, u_char *cipher)
{
    DES_cblock des_key;
    DES_key_schedule key_schedule;

    MakeKey(key, des_key);
    DES_set_key(&des_key, &key_schedule);
    DES_ecb_encrypt((DES_cblock *)clear, (DES_cblock *)cipher, &key_schedule, 1);
}
