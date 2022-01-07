
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int dummy; } ;


 int file_header_heap_swim (struct file_header**,size_t) ;

__attribute__((used)) static void
file_header_list_push(struct file_header *f, struct file_header **fh, size_t size)
{

 fh[size++] = f;
 file_header_heap_swim(fh, size - 1);
}
