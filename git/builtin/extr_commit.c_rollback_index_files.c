
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int commit_style ;
 int false_lock ;
 int index_lock ;
 int rollback_lock_file (int *) ;

__attribute__((used)) static void rollback_index_files(void)
{
 switch (commit_style) {
 case 130:
  break;
 case 129:
  rollback_lock_file(&index_lock);
  break;
 case 128:
  rollback_lock_file(&index_lock);
  rollback_lock_file(&false_lock);
  break;
 }
}
