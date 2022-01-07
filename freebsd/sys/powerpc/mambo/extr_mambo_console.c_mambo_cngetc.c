
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int MAMBO_CONSOLE_READ ;
 int alt_break_state ;
 int kdb_alt_break (int,int *) ;
 int mambocall (int ) ;

__attribute__((used)) static int
mambo_cngetc(struct consdev *cp)
{
 int ch;

 ch = mambocall(MAMBO_CONSOLE_READ);

 if (ch > 0 && ch < 0xff) {



  return (ch);
 }

 return (-1);
}
