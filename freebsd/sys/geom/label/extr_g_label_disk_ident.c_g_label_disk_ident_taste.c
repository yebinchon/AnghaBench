
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_consumer {TYPE_2__* provider; } ;
struct g_class {char* name; } ;
typedef int ident ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_class* class; } ;


 int DISK_IDENT_SIZE ;
 int ** classes_pass ;
 scalar_t__ g_io_getattr (char*,struct g_consumer*,int*,char*) ;
 int g_topology_assert_not () ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static void
g_label_disk_ident_taste(struct g_consumer *cp, char *label, size_t size)
{
 struct g_class *cls;
 char ident[DISK_IDENT_SIZE];
 int ident_len, found, i;

 g_topology_assert_not();
 label[0] = '\0';

 cls = cp->provider->geom->class;





 ident_len = sizeof(ident);
 if (g_io_getattr("GEOM::ident", cp, &ident_len, ident) == 0) {
  if (ident_len == 0 || ident[0] == '\0')
   return;
  for (i = 0, found = 0; classes_pass[i] != ((void*)0); i++)
   if (strcmp(classes_pass[i], cls->name) == 0) {
    found = 1;
    break;
   }
  if (!found)
   return;




  (void)snprintf(label, size, "%s-%s", cls->name, ident);
 }
}
