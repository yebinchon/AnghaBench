
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rr_schk {int min_q; int max_q; int q_bytes; } ;
struct dn_schk {int dummy; } ;


 int ND (char*) ;

__attribute__((used)) static int
rr_config(struct dn_schk *_schk)
{
 struct rr_schk *schk = (struct rr_schk *)(_schk + 1);
 ND("called");


 schk->min_q = 64;
 schk->max_q = 2048;
 schk->q_bytes = 1500;

 return 0;
}
