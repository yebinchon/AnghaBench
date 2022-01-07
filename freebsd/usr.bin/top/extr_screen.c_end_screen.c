
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int TCSADRAIN ;
 int clear_line ;
 int fflush (int ) ;
 scalar_t__ is_a_terminal ;
 int lower_left ;
 int old_settings ;
 int putcap (int ) ;
 scalar_t__ smart_terminal ;
 int stdout ;
 int tcsetattr (int ,int ,int *) ;
 int terminal_end ;

void
end_screen(void)
{

    if (smart_terminal)
    {
 putcap(lower_left);
 putcap(clear_line);
 fflush(stdout);
 putcap(terminal_end);
    }


    if (is_a_terminal)
    {
 tcsetattr(STDOUT_FILENO, TCSADRAIN, &old_settings);
    }
}
