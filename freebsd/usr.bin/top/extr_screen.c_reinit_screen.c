
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int TCSADRAIN ;
 scalar_t__ is_a_terminal ;
 int new_settings ;
 int putcap (int ) ;
 scalar_t__ smart_terminal ;
 int tcsetattr (int ,int ,int *) ;
 int terminal_init ;

void
reinit_screen(void)
{

    if (is_a_terminal)
    {
 tcsetattr(STDOUT_FILENO, TCSADRAIN, &new_settings);
    }


    if (smart_terminal)
    {
 putcap(terminal_init);
    }
}
