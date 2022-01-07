
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_format {struct mkimg_format* next; } ;


 struct mkimg_format* first ;

void
format_register(struct mkimg_format *f)
{

 f->next = first;
 first = f;
}
