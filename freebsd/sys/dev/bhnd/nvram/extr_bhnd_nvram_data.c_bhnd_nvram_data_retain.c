
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int refs; } ;


 int refcount_acquire (int *) ;

struct bhnd_nvram_data *
bhnd_nvram_data_retain(struct bhnd_nvram_data *nv)
{
 refcount_acquire(&nv->refs);
 return (nv);
}
