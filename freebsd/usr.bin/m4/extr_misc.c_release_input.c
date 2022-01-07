
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_file {scalar_t__ file; int c; int name; } ;


 int EOF ;
 int errx (int,char*,int ) ;
 int fclose (scalar_t__) ;
 scalar_t__ ferror (scalar_t__) ;
 scalar_t__ stdin ;

void
release_input(struct input_file *f)
{
 if (ferror(f->file))
  errx(1, "Fatal error reading from %s\n", f->name);
 if (f->file != stdin)
     fclose(f->file);
 f->c = EOF;




}
