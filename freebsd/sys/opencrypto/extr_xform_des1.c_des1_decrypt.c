
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int des_key_schedule ;
typedef scalar_t__ caddr_t ;


 int DES_DECRYPT ;
 int des_ecb_encrypt (int *,int *,int ,int ) ;

__attribute__((used)) static void
des1_decrypt(caddr_t key, u_int8_t *blk)
{
 des_key_schedule *p = (des_key_schedule *) key;

 des_ecb_encrypt(blk, blk, p[0], DES_DECRYPT);
}
