
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CLEANABLE_FILE {int fn; } ;


 int LIST_INSERT_HEAD (int *,struct CLEANABLE_FILE*,int ) ;
 int files ;
 int sem_post (int *) ;
 int sem_wait (int *) ;
 struct CLEANABLE_FILE* sort_malloc (int) ;
 int sort_strdup (char const*) ;
 int tmp_files ;
 int tmp_files_sem ;

void
tmp_file_atexit(const char *tmp_file)
{

 if (tmp_file) {
  sem_wait(&tmp_files_sem);
  struct CLEANABLE_FILE *item =
      sort_malloc(sizeof(struct CLEANABLE_FILE));
  item->fn = sort_strdup(tmp_file);
  LIST_INSERT_HEAD(&tmp_files, item, files);
  sem_post(&tmp_files_sem);
 }
}
