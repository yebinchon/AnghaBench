
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct TYPE_4__ {int have_repository; } ;
struct TYPE_3__ {int commit_graft_prepared; } ;


 char* get_graft_file (struct repository*) ;
 int is_repository_shallow (struct repository*) ;
 int read_graft_file (struct repository*,char*) ;
 TYPE_2__* startup_info ;

void prepare_commit_graft(struct repository *r)
{
 char *graft_file;

 if (r->parsed_objects->commit_graft_prepared)
  return;
 if (!startup_info->have_repository)
  return;

 graft_file = get_graft_file(r);
 read_graft_file(r, graft_file);

 is_repository_shallow(r);
 r->parsed_objects->commit_graft_prepared = 1;
}
