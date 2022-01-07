
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_file {int lineno; } ;


 int pbunsigned (int ) ;

void
doprintlineno(struct input_file *f)
{
 pbunsigned(f->lineno);
}
