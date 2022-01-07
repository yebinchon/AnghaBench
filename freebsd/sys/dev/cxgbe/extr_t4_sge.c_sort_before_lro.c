
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lro_ctrl {scalar_t__ lro_mbuf_max; } ;



__attribute__((used)) static inline int
sort_before_lro(struct lro_ctrl *lro)
{

 return (lro->lro_mbuf_max != 0);
}
