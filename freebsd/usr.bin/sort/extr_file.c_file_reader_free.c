
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_reader {int dummy; } ;


 int file_reader_clean (struct file_reader*) ;
 int sort_free (struct file_reader*) ;

void
file_reader_free(struct file_reader *fr)
{

 if (fr) {
  file_reader_clean(fr);
  sort_free(fr);
 }
}
