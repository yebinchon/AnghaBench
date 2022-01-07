
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {struct swrun_entry* parameters; struct swrun_entry* path; struct swrun_entry* name; } ;


 int TAILQ_REMOVE (int *,struct swrun_entry*,int ) ;
 int assert (int ) ;
 int free (struct swrun_entry*) ;
 int link ;
 int swrun_tbl ;

__attribute__((used)) static void
swrun_entry_delete(struct swrun_entry *entry)
{

 assert(entry != ((void*)0));

 TAILQ_REMOVE(&swrun_tbl, entry, link);

 free(entry->name);
 free(entry->path);
 free(entry->parameters);
 free(entry);
}
