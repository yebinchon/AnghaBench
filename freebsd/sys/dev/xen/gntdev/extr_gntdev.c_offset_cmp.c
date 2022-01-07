
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_offset_struct {int file_offset; } ;



__attribute__((used)) static int
offset_cmp(struct file_offset_struct *f1, struct file_offset_struct *f2)
{
 return (f1->file_offset - f2->file_offset);
}
