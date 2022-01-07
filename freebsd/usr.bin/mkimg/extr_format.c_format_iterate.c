
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_format {struct mkimg_format* next; } ;


 struct mkimg_format* first ;

struct mkimg_format *
format_iterate(struct mkimg_format *f)
{

 return ((f == ((void*)0)) ? first : f->next);
}
