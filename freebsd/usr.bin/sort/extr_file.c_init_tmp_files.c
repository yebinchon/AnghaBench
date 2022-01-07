
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int sem_init (int *,int ,int) ;
 int tmp_files ;
 int tmp_files_sem ;

void
init_tmp_files(void)
{

 LIST_INIT(&tmp_files);
 sem_init(&tmp_files_sem, 0, 1);
}
