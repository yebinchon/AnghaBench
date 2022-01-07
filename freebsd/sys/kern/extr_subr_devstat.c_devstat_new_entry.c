
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct devstat {int unit_number; int creation_time; void const* id; } ;
typedef int devstat_type_flags ;
typedef int devstat_support_flags ;
typedef int devstat_priority ;


 int MA_NOTOWNED ;
 int binuptime (int *) ;
 int devstat_add_entry (struct devstat*,void const*,int,int ,int ,int ,int ) ;
 struct devstat* devstat_alloc () ;
 int devstat_generation ;
 int devstat_mutex ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

struct devstat *
devstat_new_entry(const void *dev_name,
    int unit_number, uint32_t block_size,
    devstat_support_flags flags,
    devstat_type_flags device_type,
    devstat_priority priority)
{
 struct devstat *ds;

 mtx_assert(&devstat_mutex, MA_NOTOWNED);

 ds = devstat_alloc();
 mtx_lock(&devstat_mutex);
 if (unit_number == -1) {
  ds->unit_number = unit_number;
  ds->id = dev_name;
  binuptime(&ds->creation_time);
  devstat_generation++;
 } else {
  devstat_add_entry(ds, dev_name, unit_number, block_size,
      flags, device_type, priority);
 }
 mtx_unlock(&devstat_mutex);
 return (ds);
}
