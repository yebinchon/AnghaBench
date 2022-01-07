
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int dummy; } ;


 scalar_t__ file_header_cmp (struct file_header*,struct file_header*) ;
 int file_header_swap (struct file_header**,size_t,size_t) ;

__attribute__((used)) static void
file_header_heap_swim(struct file_header **fh, size_t indx)
{

 if (indx > 0) {
  size_t parent_index;

  parent_index = (indx - 1) >> 1;

  if (file_header_cmp(fh[indx], fh[parent_index]) < 0) {

   file_header_swap(fh, indx, parent_index);
   file_header_heap_swim(fh, parent_index);
  }
 }
}
