
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int CURS_LEFT ;
 int PRINT (int ) ;
 int UNDERL ;
 int UNDER_CHAR ;
 int curmode ;
 scalar_t__ must_use_uc ;
 int putwchar (int ) ;

__attribute__((used)) static void
outc(wint_t c, int width)
{
 int i;

 putwchar(c);
 if (must_use_uc && (curmode&UNDERL)) {
  for (i = 0; i < width; i++)
   PRINT(CURS_LEFT);
  for (i = 0; i < width; i++)
   PRINT(UNDER_CHAR);
 }
}
