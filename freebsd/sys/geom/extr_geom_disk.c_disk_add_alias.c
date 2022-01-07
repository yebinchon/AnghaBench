
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_alias {char const* da_alias; } ;
struct disk {int d_aliases; } ;


 int LIST_INSERT_HEAD (int *,struct disk_alias*,int ) ;
 int M_WAITOK ;
 int da_next ;
 scalar_t__ g_malloc (scalar_t__,int ) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
disk_add_alias(struct disk *dp, const char *name)
{
 struct disk_alias *dap;

 dap = (struct disk_alias *)g_malloc(
  sizeof(struct disk_alias) + strlen(name) + 1, M_WAITOK);
 strcpy((char *)(dap + 1), name);
 dap->da_alias = (const char *)(dap + 1);
 LIST_INSERT_HEAD(&dp->d_aliases, dap, da_next);
}
