
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_device_quirk {int quirks; int desc; } ;
struct bhnd_device {struct bhnd_device_quirk* quirks_table; } ;
typedef int device_t ;


 int BHND_DEVICE_QUIRK_IS_END (struct bhnd_device_quirk const*) ;
 struct bhnd_device* bhnd_device_lookup (int ,struct bhnd_device const*,size_t) ;
 scalar_t__ bhnd_device_matches (int ,int *) ;

uint32_t
bhnd_device_quirks(device_t dev, const struct bhnd_device *table,
    size_t entry_size)
{
 const struct bhnd_device *dent;
 const struct bhnd_device_quirk *qent, *qtable;
 uint32_t quirks;


 if ((dent = bhnd_device_lookup(dev, table, entry_size)) == ((void*)0))
  return (0);


 qtable = dent->quirks_table;
 if (qtable == ((void*)0))
  return (0);


 quirks = 0;
 for (qent = qtable; !BHND_DEVICE_QUIRK_IS_END(qent); qent++) {
  if (bhnd_device_matches(dev, &qent->desc))
   quirks |= qent->quirks;
 }

 return (quirks);
}
