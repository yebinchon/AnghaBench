
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xnb_pkt {int error; } ;



__attribute__((used)) static inline int
xnb_pkt_is_valid(const struct xnb_pkt *pxnb)
{
 return (! pxnb->error);
}
