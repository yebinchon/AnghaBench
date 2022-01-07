
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_char ;
typedef int rijndael_ctx ;
typedef scalar_t__ caddr_t ;


 int rijndael_decrypt (int *,int *,int *) ;

__attribute__((used)) static void
rijndael128_decrypt(caddr_t key, u_int8_t *blk)
{
 rijndael_decrypt(((rijndael_ctx *) key), (u_char *) blk,
     (u_char *) blk);
}
