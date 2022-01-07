
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_erom_mport {int dummy; } ;
struct bcma_erom {int dummy; } ;


 int bcma_erom_parse_mport (struct bcma_erom*,struct bcma_erom_mport*) ;

__attribute__((used)) static int
bcma_erom_skip_mport(struct bcma_erom *erom)
{
 struct bcma_erom_mport mp;
 return (bcma_erom_parse_mport(erom, &mp));
}
