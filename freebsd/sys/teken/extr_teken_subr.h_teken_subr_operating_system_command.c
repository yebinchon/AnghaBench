
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; } ;
typedef TYPE_1__ teken_t ;


 int TS_INSTRING ;
 int teken_printf (char*) ;

__attribute__((used)) static void
teken_subr_operating_system_command(teken_t *t)
{

 teken_printf("Unsupported operating system command\n");
 t->t_stateflags |= TS_INSTRING;
}
