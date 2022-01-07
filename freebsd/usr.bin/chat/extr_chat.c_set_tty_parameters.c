
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_iflag; int* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; } ;
typedef TYPE_1__ term_parms ;


 int IGNBRK ;
 int IGNPAR ;
 int ISTRIP ;
 size_t VERASE ;
 size_t VKILL ;
 size_t VMIN ;
 size_t VTIME ;
 int fatal (int,char*) ;
 scalar_t__ get_term_param (TYPE_1__*) ;
 int have_tty_parameters ;
 TYPE_1__ saved_tty_parameters ;
 scalar_t__ set_term_param (TYPE_1__*) ;

void set_tty_parameters(void)
{
}
