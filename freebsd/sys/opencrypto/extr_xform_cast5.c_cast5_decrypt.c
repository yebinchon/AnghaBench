
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int cast_key ;
typedef scalar_t__ caddr_t ;


 int cast_decrypt (int *,int *,int *) ;

__attribute__((used)) static void
cast5_decrypt(caddr_t key, u_int8_t *blk)
{
 cast_decrypt((cast_key *) key, blk, blk);
}
