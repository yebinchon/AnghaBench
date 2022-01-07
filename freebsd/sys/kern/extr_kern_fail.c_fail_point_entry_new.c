
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int fp_entry_queue; int fs_parent; } ;
struct fail_point_entry {int fe_count; int fe_pid; int fe_prob; int fe_parent; } ;


 int FE_COUNT_UNTRACKED ;
 int M_WAITOK ;
 int M_ZERO ;
 int NO_PID ;
 int PROB_MAX ;
 int TAILQ_INSERT_TAIL (int *,struct fail_point_entry*,int ) ;
 int fe_entries ;
 struct fail_point_entry* fp_malloc (int,int) ;

__attribute__((used)) static struct fail_point_entry *
fail_point_entry_new(struct fail_point_setting *fp_setting)
{
 struct fail_point_entry *fp_entry;

 fp_entry = fp_malloc(sizeof(struct fail_point_entry),
         M_WAITOK | M_ZERO);
 fp_entry->fe_parent = fp_setting->fs_parent;
 fp_entry->fe_prob = PROB_MAX;
 fp_entry->fe_pid = NO_PID;
 fp_entry->fe_count = FE_COUNT_UNTRACKED;
 TAILQ_INSERT_TAIL(&fp_setting->fp_entry_queue, fp_entry,
         fe_entries);

 return (fp_entry);
}
