
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;


 int STAILQ_INIT (struct resource_list*) ;

void
resource_list_init(struct resource_list *rl)
{
 STAILQ_INIT(rl);
}
