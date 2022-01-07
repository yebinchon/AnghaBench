
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_standalone_disk {scalar_t__ bus; scalar_t__ target; int devname; } ;
typedef scalar_t__ U8 ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ strcmp (char const*,int ) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
mpt_lookup_standalone_disk(const char *name, struct mpt_standalone_disk *disks,
    int ndisks, int *index)
{
 char *cp;
 long bus, id;
 int i;


 bus = strtol(name, &cp, 0);
 if (*cp == ':') {
  id = strtol(cp + 1, &cp, 0);
  if (*cp == '\0') {
   if (bus < 0 || bus > 0xff || id < 0 || id > 0xff) {
    return (EINVAL);
   }
   for (i = 0; i < ndisks; i++) {
    if (disks[i].bus == (U8)bus &&
        disks[i].target == (U8)id) {
     *index = i;
     return (0);
    }
   }
   return (ENOENT);
  }
 }

 if (name[0] == 'd' && name[1] == 'a') {
  for (i = 0; i < ndisks; i++) {
   if (strcmp(name, disks[i].devname) == 0) {
    *index = i;
    return (0);
   }
  }
  return (ENOENT);
 }

 return (EINVAL);
}
