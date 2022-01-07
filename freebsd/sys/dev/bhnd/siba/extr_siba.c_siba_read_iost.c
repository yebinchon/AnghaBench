
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int SIBA_CFG0_TMSTATEHIGH ;
 int SIBA_REG_GET (int ,int ) ;
 int TMH_SISF ;
 int bhnd_read_config (int ,int ,int *,int) ;

__attribute__((used)) static int
siba_read_iost(device_t dev, device_t child, uint16_t *iost)
{
 uint32_t tmhigh;
 int error;

 error = bhnd_read_config(child, SIBA_CFG0_TMSTATEHIGH, &tmhigh, 4);
 if (error)
  return (error);

 *iost = (SIBA_REG_GET(tmhigh, TMH_SISF));
 return (0);
}
