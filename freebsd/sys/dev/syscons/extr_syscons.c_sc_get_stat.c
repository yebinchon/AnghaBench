
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
typedef int scr_stat ;


 int * SC_STAT (struct tty*) ;
 int main_console ;

__attribute__((used)) static scr_stat *
sc_get_stat(struct tty *tp)
{
 if (tp == ((void*)0))
  return (&main_console);
 return (SC_STAT(tp));
}
