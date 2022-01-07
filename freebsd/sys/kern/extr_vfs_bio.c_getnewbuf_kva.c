
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_kvasize; } ;


 int BKVAMASK ;
 int ENOSPC ;
 int GB_KVAALLOC ;
 int GB_UNMAPPED ;
 scalar_t__ bufkva_alloc (struct buf*,int,int) ;

__attribute__((used)) static int
getnewbuf_kva(struct buf *bp, int gbflags, int maxsize)
{

 if ((gbflags & (GB_UNMAPPED | GB_KVAALLOC)) != GB_UNMAPPED) {




  maxsize = (maxsize + BKVAMASK) & ~BKVAMASK;

  if (maxsize != bp->b_kvasize &&
      bufkva_alloc(bp, maxsize, gbflags))
   return (ENOSPC);
 }
 return (0);
}
