
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_file {int name; } ;


 int lquote ;
 int pbstr (int ) ;
 int rquote ;

void
doprintfilename(struct input_file *f)
{
 pbstr(rquote);
 pbstr(f->name);
 pbstr(lquote);
}
