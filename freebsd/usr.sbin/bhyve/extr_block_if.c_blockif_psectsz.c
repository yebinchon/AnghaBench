
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_ctxt {scalar_t__ bc_magic; int bc_psectsz; int bc_psectoff; } ;


 scalar_t__ BLOCKIF_SIG ;
 int assert (int) ;

void
blockif_psectsz(struct blockif_ctxt *bc, int *size, int *off)
{

 assert(bc->bc_magic == BLOCKIF_SIG);
 *size = bc->bc_psectsz;
 *off = bc->bc_psectoff;
}
