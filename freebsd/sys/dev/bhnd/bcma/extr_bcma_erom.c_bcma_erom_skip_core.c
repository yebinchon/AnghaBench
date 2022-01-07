
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_erom_core {int dummy; } ;
struct bcma_erom {int dummy; } ;


 int bcma_erom_parse_core (struct bcma_erom*,struct bcma_erom_core*) ;

__attribute__((used)) static int
bcma_erom_skip_core(struct bcma_erom *erom)
{
 struct bcma_erom_core core;
 return (bcma_erom_parse_core(erom, &core));
}
