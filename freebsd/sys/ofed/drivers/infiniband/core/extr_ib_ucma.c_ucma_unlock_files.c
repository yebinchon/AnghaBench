
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int mut; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void ucma_unlock_files(struct ucma_file *file1, struct ucma_file *file2)
{
 if (file1 < file2) {
  mutex_unlock(&file2->mut);
  mutex_unlock(&file1->mut);
 } else {
  mutex_unlock(&file1->mut);
  mutex_unlock(&file2->mut);
 }
}
