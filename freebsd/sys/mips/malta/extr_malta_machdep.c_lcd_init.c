
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int malta_lcd_print (char*) ;

void
lcd_init(void)
{
 malta_lcd_print("FreeBSD_");
}
