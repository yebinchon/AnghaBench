
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_ctxt {scalar_t__ bc_magic; int bc_candelete; } ;


 scalar_t__ BLOCKIF_SIG ;
 int assert (int) ;

int
blockif_candelete(struct blockif_ctxt *bc)
{

 assert(bc->bc_magic == BLOCKIF_SIG);
 return (bc->bc_candelete);
}
