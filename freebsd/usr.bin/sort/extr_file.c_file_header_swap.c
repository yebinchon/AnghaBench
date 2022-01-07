
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int dummy; } ;



__attribute__((used)) static void
file_header_swap(struct file_header **fh, size_t i1, size_t i2)
{
 struct file_header *tmp;

 tmp = fh[i1];
 fh[i1] = fh[i2];
 fh[i2] = tmp;
}
