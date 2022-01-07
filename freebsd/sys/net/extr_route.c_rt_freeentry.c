
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;


 int R_Free (struct radix_node*) ;
 scalar_t__ rn_delete (struct radix_node*,int *,struct radix_head* const) ;

__attribute__((used)) static int
rt_freeentry(struct radix_node *rn, void *arg)
{
 struct radix_head * const rnh = arg;
 struct radix_node *x;

 x = (struct radix_node *)rn_delete(rn + 2, ((void*)0), rnh);
 if (x != ((void*)0))
  R_Free(x);
 return (0);
}
