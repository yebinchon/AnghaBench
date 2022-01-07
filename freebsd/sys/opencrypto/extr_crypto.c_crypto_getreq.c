
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {struct cryptodesc* crp_desc; } ;
struct cryptodesc {struct cryptodesc* crd_next; } ;


 int M_NOWAIT ;
 int M_ZERO ;
 int crypto_freereq (struct cryptop*) ;
 int cryptodesc_zone ;
 int cryptop_zone ;
 void* uma_zalloc (int ,int) ;

struct cryptop *
crypto_getreq(int num)
{
 struct cryptodesc *crd;
 struct cryptop *crp;

 crp = uma_zalloc(cryptop_zone, M_NOWAIT|M_ZERO);
 if (crp != ((void*)0)) {
  while (num--) {
   crd = uma_zalloc(cryptodesc_zone, M_NOWAIT|M_ZERO);
   if (crd == ((void*)0)) {
    crypto_freereq(crp);
    return ((void*)0);
   }

   crd->crd_next = crp->crp_desc;
   crp->crp_desc = crd;
  }
 }
 return crp;
}
