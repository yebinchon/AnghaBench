
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_data_class ;


 int bhnd_nvram_data_new (int *,struct bhnd_nvram_data**,struct bhnd_nvram_io*) ;
 int bhnd_nvram_data_release (struct bhnd_nvram_data*) ;
 int bhnd_nvram_store_new (struct bhnd_nvram_store**,struct bhnd_nvram_data*) ;

int
bhnd_nvram_store_parse_new(struct bhnd_nvram_store **store,
    struct bhnd_nvram_io *io, bhnd_nvram_data_class *cls)
{
 struct bhnd_nvram_data *data;
 int error;



 if ((error = bhnd_nvram_data_new(cls, &data, io)))
  return (error);


 error = bhnd_nvram_store_new(store, data);
 bhnd_nvram_data_release(data);

 return (error);
}
