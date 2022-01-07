
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int fp_entry_queue; } ;
struct fail_point_entry {int dummy; } ;


 int TAILQ_EMPTY (int *) ;
 struct fail_point_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct fail_point_entry*,int ) ;
 int fail_point_entry_destroy (struct fail_point_entry*) ;
 int fe_entries ;
 int fs_free (struct fail_point_setting*) ;

__attribute__((used)) static void
fail_point_setting_destroy(struct fail_point_setting *fp_setting)
{
 struct fail_point_entry *ent;

 while (!TAILQ_EMPTY(&fp_setting->fp_entry_queue)) {
  ent = TAILQ_FIRST(&fp_setting->fp_entry_queue);
  TAILQ_REMOVE(&fp_setting->fp_entry_queue, ent, fe_entries);
  fail_point_entry_destroy(ent);
 }

 fs_free(fp_setting);
}
