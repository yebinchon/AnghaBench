
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val ;


 int bhnd_nvram_data_generic_rp_copy_val (struct bhnd_nvram_data*,void*,int **) ;

__attribute__((used)) static int
bhnd_nvram_bcm_copy_val(struct bhnd_nvram_data *nv, void *cookiep,
    bhnd_nvram_val **value)
{
 return (bhnd_nvram_data_generic_rp_copy_val(nv, cookiep, value));
}
