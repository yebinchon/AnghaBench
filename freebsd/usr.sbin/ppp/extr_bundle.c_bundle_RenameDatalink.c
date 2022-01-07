
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int name; struct datalink* next; } ;
struct bundle {struct datalink* links; } ;


 int datalink_Rename (struct datalink*,char const*) ;
 int strcasecmp (int ,char const*) ;

int
bundle_RenameDatalink(struct bundle *bundle, struct datalink *ndl,
                      const char *name)
{
  struct datalink *dl;

  if (!strcasecmp(ndl->name, name))
    return 1;

  for (dl = bundle->links; dl; dl = dl->next)
    if (!strcasecmp(dl->name, name))
      return 0;

  datalink_Rename(ndl, name);
  return 1;
}
