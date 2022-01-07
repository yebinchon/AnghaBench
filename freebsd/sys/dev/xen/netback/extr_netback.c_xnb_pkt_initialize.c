
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xnb_pkt {int dummy; } ;


 int bzero (struct xnb_pkt*,int) ;

__attribute__((used)) static inline void
xnb_pkt_initialize(struct xnb_pkt *pxnb)
{
 bzero(pxnb, sizeof(*pxnb));
}
