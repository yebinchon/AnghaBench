
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_file {int lineno; int name; scalar_t__ c; int * file; } ;
typedef int FILE ;


 int emit_synchline () ;
 int xstrdup (char const*) ;

void
set_input(struct input_file *f, FILE *real, const char *name)
{
 f->file = real;
 f->lineno = 1;
 f->c = 0;
 f->name = xstrdup(name);
 emit_synchline();
}
