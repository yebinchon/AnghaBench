
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int DES_cblock ;


 int DES_set_odd_parity (int *) ;
 int Get7Bits (int *,int) ;

__attribute__((used)) static void
MakeKey(u_char *key, u_char *des_key)
{
    des_key[0] = Get7Bits(key, 0);
    des_key[1] = Get7Bits(key, 7);
    des_key[2] = Get7Bits(key, 14);
    des_key[3] = Get7Bits(key, 21);
    des_key[4] = Get7Bits(key, 28);
    des_key[5] = Get7Bits(key, 35);
    des_key[6] = Get7Bits(key, 42);
    des_key[7] = Get7Bits(key, 49);

    DES_set_odd_parity((DES_cblock *)des_key);
}
