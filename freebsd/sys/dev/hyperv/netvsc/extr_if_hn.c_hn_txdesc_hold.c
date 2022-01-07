
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {scalar_t__ refs; } ;


 int KASSERT (int,char*) ;
 int atomic_add_int (scalar_t__*,int) ;

__attribute__((used)) static __inline void
hn_txdesc_hold(struct hn_txdesc *txd)
{


 KASSERT(txd->refs > 0, ("invalid txd refs %d", txd->refs));
 atomic_add_int(&txd->refs, 1);
}
