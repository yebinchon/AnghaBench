
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_sport_list {int dummy; } ;
struct bcma_corecfg {struct bcma_sport_list wrapper_ports; struct bcma_sport_list bridge_ports; struct bcma_sport_list dev_ports; } ;
typedef int bhnd_port_type ;






struct bcma_sport_list *
bcma_corecfg_get_port_list(struct bcma_corecfg *cfg, bhnd_port_type type)
{
 switch (type) {
 case 128:
  return (&cfg->dev_ports);
  break;
 case 129:
  return (&cfg->bridge_ports);
  break;
 case 130:
  return (&cfg->wrapper_ports);
  break;
 default:
  return (((void*)0));
 }
}
