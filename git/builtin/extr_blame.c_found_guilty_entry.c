
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct progress_info {int blamed_lines; int progress; } ;
struct blame_origin {TYPE_2__* commit; } ;
struct blame_entry {int s_lno; int lno; int num_lines; struct blame_origin* suspect; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int display_progress (int ,int ) ;
 int emit_one_suspect_detail (struct blame_origin*,int ) ;
 scalar_t__ incremental ;
 int maybe_flush_or_die (int ,char*) ;
 char* oid_to_hex (int *) ;
 int printf (char*,char*,int,int,int) ;
 int stdout ;
 int write_filename_info (struct blame_origin*) ;

__attribute__((used)) static void found_guilty_entry(struct blame_entry *ent, void *data)
{
 struct progress_info *pi = (struct progress_info *)data;

 if (incremental) {
  struct blame_origin *suspect = ent->suspect;

  printf("%s %d %d %d\n",
         oid_to_hex(&suspect->commit->object.oid),
         ent->s_lno + 1, ent->lno + 1, ent->num_lines);
  emit_one_suspect_detail(suspect, 0);
  write_filename_info(suspect);
  maybe_flush_or_die(stdout, "stdout");
 }
 pi->blamed_lines += ent->num_lines;
 display_progress(pi->progress, pi->blamed_lines);
}
