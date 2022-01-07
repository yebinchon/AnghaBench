
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_file {int c; int lineno; int file; } ;


 int EOF ;
 int fgetc (int ) ;

int
obtain_char(struct input_file *f)
{
 if (f->c == EOF)
  return EOF;

 f->c = fgetc(f->file);
 if (f->c == '\n')
  f->lineno++;

 return f->c;
}
