
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 struct bridge_if* TAILQ_NEXT (struct bridge_if*,int ) ;
 int b_if ;

struct bridge_if *
bridge_next_bif(struct bridge_if *b_pr)
{
 return (TAILQ_NEXT(b_pr, b_if));
}
