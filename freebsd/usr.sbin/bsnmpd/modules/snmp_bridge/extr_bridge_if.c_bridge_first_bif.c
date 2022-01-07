
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 struct bridge_if* TAILQ_FIRST (int *) ;
 int bridge_ifs ;

struct bridge_if *
bridge_first_bif(void)
{
 return (TAILQ_FIRST(&bridge_ifs));
}
