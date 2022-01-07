
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcmraw {size_t count; } ;



__attribute__((used)) static size_t
bhnd_nvram_bcmraw_count(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_bcmraw *bcm = (struct bhnd_nvram_bcmraw *)nv;

 return (bcm->count);
}
