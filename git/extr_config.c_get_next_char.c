
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* do_fgetc ) (TYPE_1__*) ;int eof; int linenr; int (* do_ungetc ) (int,TYPE_1__*) ;} ;


 int EOF ;
 TYPE_1__* cf ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (int,TYPE_1__*) ;

__attribute__((used)) static int get_next_char(void)
{
 int c = cf->do_fgetc(cf);

 if (c == '\r') {

  c = cf->do_fgetc(cf);
  if (c != '\n') {
   if (c != EOF)
    cf->do_ungetc(c, cf);
   c = '\r';
  }
 }
 if (c == '\n')
  cf->linenr++;
 if (c == EOF) {
  cf->eof = 1;
  cf->linenr++;
  c = '\n';
 }
 return c;
}
