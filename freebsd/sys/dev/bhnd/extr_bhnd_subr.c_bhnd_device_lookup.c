
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_device {int device_flags; int core; } ;
typedef scalar_t__ device_t ;
typedef scalar_t__ bhnd_attach_type ;


 scalar_t__ BHND_ATTACH_ADAPTER ;
 scalar_t__ BHND_ATTACH_NATIVE ;
 int BHND_DEVICE_IS_END (struct bhnd_device const*) ;
 int BHND_DF_ADAPTER ;
 int BHND_DF_HOSTB ;
 int BHND_DF_SOC ;
 scalar_t__ bhnd_bus_find_hostb_device (scalar_t__) ;
 int bhnd_device_matches (scalar_t__,int *) ;
 scalar_t__ bhnd_get_attach_type (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

const struct bhnd_device *
bhnd_device_lookup(device_t dev, const struct bhnd_device *table,
    size_t entry_size)
{
 const struct bhnd_device *entry;
 device_t hostb, parent;
 bhnd_attach_type attach_type;
 uint32_t dflags;

 parent = device_get_parent(dev);
 hostb = bhnd_bus_find_hostb_device(parent);
 attach_type = bhnd_get_attach_type(dev);

 for (entry = table; !BHND_DEVICE_IS_END(entry); entry =
     (const struct bhnd_device *) ((const char *) entry + entry_size))
 {

  if (!bhnd_device_matches(dev, &entry->core))
   continue;


  dflags = entry->device_flags;


  if (dflags & BHND_DF_HOSTB)
   dflags |= BHND_DF_ADAPTER;

  if (dflags & BHND_DF_ADAPTER)
   if (attach_type != BHND_ATTACH_ADAPTER)
    continue;

  if (dflags & BHND_DF_HOSTB)
   if (dev != hostb)
    continue;

  if (dflags & BHND_DF_SOC)
   if (attach_type != BHND_ATTACH_NATIVE)
    continue;


  return (entry);
 }


 return (((void*)0));
}
