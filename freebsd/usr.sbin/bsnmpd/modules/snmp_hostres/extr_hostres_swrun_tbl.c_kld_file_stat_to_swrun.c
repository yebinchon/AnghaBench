
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {int perfMemory; int r_tick; scalar_t__ perfCPU; void* status; void* type; int index; int * id; int * parameters; int * path; int * name; } ;
struct kld_file_stat {int size; int name; } ;
typedef void* int32_t ;


 scalar_t__ SRS_RUNNING ;
 scalar_t__ SRT_DEVICE_DRIVER ;
 scalar_t__ SRT_OPERATING_SYSTEM ;
 int SWOSIndex ;
 size_t SWR_NAME_MLEN ;
 int assert (int ) ;
 int get_ticks () ;
 int oid_zeroDotZero ;
 int * reallocf (int *,size_t) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (char*,int ,size_t) ;
 int strlen (int ) ;

__attribute__((used)) static void
kld_file_stat_to_swrun(const struct kld_file_stat *kfs,
    struct swrun_entry *entry)
{
 size_t name_len;

 assert(kfs != ((void*)0));
 assert(entry != ((void*)0));

 name_len = strlen(kfs->name) + 1;
 if (name_len > SWR_NAME_MLEN)
  name_len = SWR_NAME_MLEN;

 entry->name = reallocf(entry->name, name_len);
 if (entry->name != ((void*)0))
  strlcpy((char *)entry->name, kfs->name, name_len);


 entry->path = ((void*)0);


 entry->parameters = ((void*)0);

 entry->id = &oid_zeroDotZero;

 if (strcmp(kfs->name, "kernel") == 0) {
  entry->type = (int32_t)SRT_OPERATING_SYSTEM;
  SWOSIndex = entry->index;
 } else {
  entry->type = (int32_t)SRT_DEVICE_DRIVER;
 }
 entry->status = (int32_t)SRS_RUNNING;
 entry->perfCPU = 0;
 entry->perfMemory = kfs->size / 1024;
 entry->r_tick = get_ticks();
}
