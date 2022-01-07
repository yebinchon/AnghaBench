
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int des_key_schedule ;


 int M_SMBTEMP ;
 int M_WAITOK ;
 int des_ecb_encrypt (int*,int*,int ,int) ;
 int des_set_key (int*,int ) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;

__attribute__((used)) static void
smb_E(const u_char *key, u_char *data, u_char *dest)
{
 des_key_schedule *ksp;
 u_char kk[8];

 kk[0] = key[0] & 0xfe;
 kk[1] = key[0] << 7 | (key[1] >> 1 & 0xfe);
 kk[2] = key[1] << 6 | (key[2] >> 2 & 0xfe);
 kk[3] = key[2] << 5 | (key[3] >> 3 & 0xfe);
 kk[4] = key[3] << 4 | (key[4] >> 4 & 0xfe);
 kk[5] = key[4] << 3 | (key[5] >> 5 & 0xfe);
 kk[6] = key[5] << 2 | (key[6] >> 6 & 0xfe);
 kk[7] = key[6] << 1;
 ksp = malloc(sizeof(des_key_schedule), M_SMBTEMP, M_WAITOK);
 des_set_key(kk, *ksp);
 des_ecb_encrypt(data, dest, *ksp, 1);
 free(ksp, M_SMBTEMP);
}
