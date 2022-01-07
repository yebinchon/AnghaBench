
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_lflag; int* c_cc; int c_oflag; } ;


 int ECHO ;
 int ICANON ;
 int STDOUT_FILENO ;
 int TAB3 ;
 int TCSADRAIN ;
 size_t VERASE ;
 size_t VKILL ;
 size_t VMIN ;
 size_t VTIME ;
 int ch_erase ;
 int ch_kill ;
 int is_a_terminal ;
 TYPE_1__ new_settings ;
 TYPE_1__ old_settings ;
 int putcap (int ) ;
 int smart_terminal ;
 int tcgetattr (int ,TYPE_1__*) ;
 int tcsetattr (int ,int ,TYPE_1__*) ;
 int terminal_init ;

void
init_screen(void)
{

    if (tcgetattr(STDOUT_FILENO, &old_settings) != -1)
    {

 new_settings = old_settings;


 new_settings.c_lflag &= ~(ICANON|ECHO);
 new_settings.c_oflag &= ~(TAB3);
 new_settings.c_cc[VMIN] = 1;
 new_settings.c_cc[VTIME] = 0;
 tcsetattr(STDOUT_FILENO, TCSADRAIN, &new_settings);


 ch_erase = old_settings.c_cc[VERASE];
 ch_kill = old_settings.c_cc[VKILL];


 is_a_terminal = 1;


 putcap(terminal_init);
    }

    if (!is_a_terminal)
    {

 smart_terminal = 0;
    }
}
