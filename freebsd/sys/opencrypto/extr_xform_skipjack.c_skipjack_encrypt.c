
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ caddr_t ;


 int skipjack_forwards (int *,int *,int **) ;

__attribute__((used)) static void
skipjack_encrypt(caddr_t key, u_int8_t *blk)
{
 skipjack_forwards(blk, blk, (u_int8_t **) key);
}
