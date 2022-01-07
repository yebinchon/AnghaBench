
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int dummy; } ;
struct mps_config_params {int dummy; } ;


 int EINVAL ;

int
mps_write_config_page(struct mps_softc *sc, struct mps_config_params *params)
{
 return (EINVAL);
}
