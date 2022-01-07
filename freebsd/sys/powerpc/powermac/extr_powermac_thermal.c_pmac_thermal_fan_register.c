
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_fan_le {struct pmac_fan* fan; } ;
struct pmac_fan {int dummy; } ;


 int M_PMACTHERM ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int *,struct pmac_fan_le*,int ) ;
 int entries ;
 int fans ;
 struct pmac_fan_le* malloc (int,int ,int) ;

void
pmac_thermal_fan_register(struct pmac_fan *fan)
{
 struct pmac_fan_le *list_entry;

 list_entry = malloc(sizeof(struct pmac_fan_le), M_PMACTHERM,
     M_ZERO | M_WAITOK);
 list_entry->fan = fan;

 SLIST_INSERT_HEAD(&fans, list_entry, entries);
}
