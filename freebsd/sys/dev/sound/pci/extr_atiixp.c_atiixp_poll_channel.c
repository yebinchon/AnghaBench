
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint32_t ;
struct atiixp_chinfo {int flags; int blksz; int blkcnt; int ptr; int volatile prevptr; } ;


 int ATI_IXP_CHN_RUNNING ;
 int atiixp_dmapos (struct atiixp_chinfo*) ;

__attribute__((used)) static __inline int
atiixp_poll_channel(struct atiixp_chinfo *ch)
{
 uint32_t sz, delta;
 volatile uint32_t ptr;

 if (!(ch->flags & ATI_IXP_CHN_RUNNING))
  return (0);

 sz = ch->blksz * ch->blkcnt;
 ptr = atiixp_dmapos(ch);
 ch->ptr = ptr;
 ptr %= sz;
 ptr &= ~(ch->blksz - 1);
 delta = (sz + ptr - ch->prevptr) % sz;

 if (delta < ch->blksz)
  return (0);

 ch->prevptr = ptr;

 return (1);
}
