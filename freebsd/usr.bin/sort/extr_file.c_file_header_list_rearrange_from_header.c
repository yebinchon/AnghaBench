
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int dummy; } ;


 int file_header_heap_sink (struct file_header**,int ,size_t) ;

__attribute__((used)) static void
file_header_list_rearrange_from_header(struct file_header **fh, size_t size)
{

 file_header_heap_sink(fh, 0, size);
}
