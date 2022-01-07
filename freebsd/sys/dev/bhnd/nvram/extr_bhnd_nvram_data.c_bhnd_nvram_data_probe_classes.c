
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_data_class ;


 int BHND_NVRAM_DATA_PROBE_MAYBE ;
 int BHND_NVRAM_DATA_PROBE_SPECIFIC ;
 int ENXIO ;
 int ** SET_BEGIN (int ) ;
 size_t SET_COUNT (int ) ;
 int bhnd_nvram_data_class_set ;
 int bhnd_nvram_data_new (int *,struct bhnd_nvram_data**,struct bhnd_nvram_io*) ;
 int bhnd_nvram_data_probe (int *,struct bhnd_nvram_io*) ;
 int bhnd_nvram_data_release (struct bhnd_nvram_data*) ;

int
bhnd_nvram_data_probe_classes(struct bhnd_nvram_data **data,
    struct bhnd_nvram_io *io, bhnd_nvram_data_class *classes[],
    size_t num_classes)
{
 bhnd_nvram_data_class *cls;
 int error, prio, result;

 cls = ((void*)0);
 prio = 0;
 *data = ((void*)0);


 if (classes == ((void*)0)) {
  classes = SET_BEGIN(bhnd_nvram_data_class_set);
  num_classes = SET_COUNT(bhnd_nvram_data_class_set);
 }


 for (size_t i = 0; i < num_classes; i++) {
  bhnd_nvram_data_class *next_cls;

  next_cls = classes[i];


  result = bhnd_nvram_data_probe(next_cls, io);


  if (result > 0)
   continue;



  if (cls != ((void*)0) && result <= prio)
   continue;


  if (*data != ((void*)0)) {
   bhnd_nvram_data_release(*data);
   *data = ((void*)0);
  }



  if (result <= BHND_NVRAM_DATA_PROBE_MAYBE) {

   error = bhnd_nvram_data_new(next_cls, data, io);
   if (error)
    continue;
  }


  prio = result;
  cls = next_cls;




  if (result == BHND_NVRAM_DATA_PROBE_SPECIFIC)
   break;
 }


 if (cls == ((void*)0))
  return (ENXIO);


 if (*data == ((void*)0)) {
  if ((error = bhnd_nvram_data_new(cls, data, io)))
   return (error);
 }

 return (0);
}
