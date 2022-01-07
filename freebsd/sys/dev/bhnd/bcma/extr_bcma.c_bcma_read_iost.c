
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int BCMA_DMP_IOSTATUS ;
 int BCMA_DMP_IOST_MASK ;
 int bhnd_read_config (int ,int ,int*,int) ;

__attribute__((used)) static int
bcma_read_iost(device_t dev, device_t child, uint16_t *iost)
{
 uint32_t value;
 int error;

 if ((error = bhnd_read_config(child, BCMA_DMP_IOSTATUS, &value, 4)))
  return (error);


 *iost = (value & BCMA_DMP_IOST_MASK);
 return (0);
}
