
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int n_keys; } ;
typedef TYPE_1__ keymap_t ;
struct TYPE_8__ {int n_accs; } ;
typedef TYPE_2__ accentmap_t ;
typedef int FILE ;




 int errx (int,char*) ;
 int get_accent_definition_line (TYPE_2__*) ;
 int get_key_definition_line (TYPE_1__*) ;
 int token ;
 int * yyin ;
 int yylex () ;

__attribute__((used)) static int
get_definition_line(FILE *file, keymap_t *keymap, accentmap_t *accentmap)
{
 int c;

 yyin = file;

 if (token < 0)
  token = yylex();
 switch (token) {
 case 128:
  c = get_key_definition_line(keymap);
  if (c < 0)
   errx(1, "invalid key definition");
  if (c > keymap->n_keys)
   keymap->n_keys = c;
  break;
 case 129:
  c = get_accent_definition_line(accentmap);
  if (c < 0)
   errx(1, "invalid accent key definition");
  if (c > accentmap->n_accs)
   accentmap->n_accs = c;
  break;
 case 0:

  return -1;
 default:
  errx(1, "illegal definition line");
 }
 return c;
}
