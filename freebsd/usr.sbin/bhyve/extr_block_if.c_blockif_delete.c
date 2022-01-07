
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_req {int dummy; } ;
struct blockif_ctxt {scalar_t__ bc_magic; } ;


 scalar_t__ BLOCKIF_SIG ;
 int BOP_DELETE ;
 int assert (int) ;
 int blockif_request (struct blockif_ctxt*,struct blockif_req*,int ) ;

int
blockif_delete(struct blockif_ctxt *bc, struct blockif_req *breq)
{

 assert(bc->bc_magic == BLOCKIF_SIG);
 return (blockif_request(bc, breq, BOP_DELETE));
}
