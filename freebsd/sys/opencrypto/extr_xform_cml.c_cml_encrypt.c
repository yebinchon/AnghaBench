
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_char ;
typedef int camellia_ctx ;
typedef scalar_t__ caddr_t ;


 int camellia_encrypt (int *,int *,int *) ;

__attribute__((used)) static void
cml_encrypt(caddr_t key, u_int8_t *blk)
{
 camellia_encrypt((camellia_ctx *) key, (u_char *) blk, (u_char *) blk);
}
