
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_service_entry {scalar_t__ refs; } ;


 int KASSERT (int,char*) ;
 int M_BHND ;
 int free (struct bhnd_service_entry*,int ) ;

__attribute__((used)) static void
bhnd_service_registry_free_entry(struct bhnd_service_entry *entry)
{
 KASSERT(entry->refs == 0, ("provider has active references"));
 free(entry, M_BHND);
}
