
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int gen; } ;
struct rsp_desc {int intr_gen; } ;


 int F_RSPD_GEN2 ;

__attribute__((used)) static __inline int
is_new_response(const struct rsp_desc *r,
    const struct sge_rspq *q)
{
 return (r->intr_gen & F_RSPD_GEN2) == q->gen;
}
