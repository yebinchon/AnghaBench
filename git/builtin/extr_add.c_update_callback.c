
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct update_callback_data {int flags; int add_errors; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {int status; TYPE_1__* one; } ;
struct TYPE_2__ {char* path; } ;


 int ADD_CACHE_IGNORE_ERRORS ;
 int ADD_CACHE_IGNORE_REMOVAL ;
 int ADD_CACHE_PRETEND ;
 int ADD_CACHE_VERBOSE ;



 char* _ (char*) ;
 int add_file_to_index (int *,char const*,int) ;
 int die (char*,...) ;
 int fix_unmerged_status (struct diff_filepair*,struct update_callback_data*) ;
 int printf (char*,char const*) ;
 int remove_file_from_index (int *,char const*) ;
 int the_index ;

__attribute__((used)) static void update_callback(struct diff_queue_struct *q,
       struct diff_options *opt, void *cbdata)
{
 int i;
 struct update_callback_data *data = cbdata;

 for (i = 0; i < q->nr; i++) {
  struct diff_filepair *p = q->queue[i];
  const char *path = p->one->path;
  switch (fix_unmerged_status(p, data)) {
  default:
   die(_("unexpected diff status %c"), p->status);
  case 129:
  case 128:
   if (add_file_to_index(&the_index, path, data->flags)) {
    if (!(data->flags & ADD_CACHE_IGNORE_ERRORS))
     die(_("updating files failed"));
    data->add_errors++;
   }
   break;
  case 130:
   if (data->flags & ADD_CACHE_IGNORE_REMOVAL)
    break;
   if (!(data->flags & ADD_CACHE_PRETEND))
    remove_file_from_index(&the_index, path);
   if (data->flags & (ADD_CACHE_PRETEND|ADD_CACHE_VERBOSE))
    printf(_("remove '%s'\n"), path);
   break;
  }
 }
}
