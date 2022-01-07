
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* acc; } ;
typedef TYPE_2__ accentmap_t ;
struct TYPE_4__ {scalar_t__ accchar; int** map; } ;


 scalar_t__ ACC (void*) ;
 scalar_t__ F_ACC ;
 scalar_t__ L_ACC ;
 int NUM_ACCENTCHARS ;


 int errx (int,char*) ;
 void* letter ;
 void* number ;
 char token ;
 int warnx (char*) ;
 char yylex () ;

__attribute__((used)) static int
get_accent_definition_line(accentmap_t *map)
{
 int accent;
 int c1, c2;
 int i;

 if (ACC(number) < F_ACC || ACC(number) > L_ACC)

  return -1;
 accent = number;
 if (map->acc[accent].accchar != 0) {

  errx(1, "duplicated accent key definition");
 }

 switch ((token = yylex())) {
 case 129:
  map->acc[accent].accchar = letter;
  break;
 case 128:
  map->acc[accent].accchar = number;
  break;
 default:
  return -1;
 }

 for (i = 0; (token = yylex()) == '(';) {
  switch ((token = yylex())) {
  case 129:
   c1 = letter;
   break;
  case 128:
   c1 = number;
   break;
  default:
   return -1;
  }
  switch ((token = yylex())) {
  case 129:
   c2 = letter;
   break;
  case 128:
   c2 = number;
   break;
  default:
   return -1;
  }
  if ((token = yylex()) != ')')
   return -1;
  if (i >= NUM_ACCENTCHARS) {
   warnx("too many accented characters, ignored");
   continue;
  }
  map->acc[accent].map[i][0] = c1;
  map->acc[accent].map[i][1] = c2;
  ++i;
 }
 return (accent + 1);
}
