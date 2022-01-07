
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_data_generic_rp_getvar (struct bhnd_nvram_data*,void*,void*,size_t*,int ) ;

__attribute__((used)) static int
bhnd_nvram_btxt_getvar(struct bhnd_nvram_data *nv, void *cookiep, void *buf,
    size_t *len, bhnd_nvram_type type)
{
 return (bhnd_nvram_data_generic_rp_getvar(nv, cookiep, buf, len, type));
}
