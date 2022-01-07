
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int dummy; } ;
struct mpr_config_params {int dummy; } ;


 int EINVAL ;

int
mpr_write_config_page(struct mpr_softc *sc, struct mpr_config_params *params)
{
 return (EINVAL);
}
