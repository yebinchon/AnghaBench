
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int FALSE ;
 int TRUE ;
 int kbdcp (int ) ;
 int wait_while_controller_busy (int ) ;
 int write_command (int ,int) ;

int
write_controller_command(KBDC p, int c)
{
    if (!wait_while_controller_busy(kbdcp(p)))
 return FALSE;
    write_command(kbdcp(p), c);
    return TRUE;
}
