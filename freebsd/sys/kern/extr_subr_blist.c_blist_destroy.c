
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blist_t ;


 int M_SWAP ;
 int free (int ,int ) ;

void
blist_destroy(blist_t bl)
{

 free(bl, M_SWAP);
}
