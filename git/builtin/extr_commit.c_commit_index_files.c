
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int commit_lock_file (int *) ;
 int commit_style ;
 int false_lock ;
 int index_lock ;
 int rollback_lock_file (int *) ;

__attribute__((used)) static int commit_index_files(void)
{
 int err = 0;

 switch (commit_style) {
 case 130:
  break;
 case 129:
  err = commit_lock_file(&index_lock);
  break;
 case 128:
  err = commit_lock_file(&index_lock);
  rollback_lock_file(&false_lock);
  break;
 }

 return err;
}
