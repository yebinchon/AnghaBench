
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xnb_pkt {scalar_t__ error; } ;



__attribute__((used)) static inline void
xnb_pkt_validate(struct xnb_pkt *pxnb)
{
 pxnb->error = 0;
}
