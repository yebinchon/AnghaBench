
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int malta_lcd_putc (int,char) ;

__attribute__((used)) static void
malta_lcd_print(char *str)
{
 int i;

 if (str == ((void*)0))
  return;

 for (i = 0; *str != '\0'; i++, str++)
  malta_lcd_putc(i, *str);
}
