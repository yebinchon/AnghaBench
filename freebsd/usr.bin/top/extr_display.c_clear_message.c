
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_eol (int ) ;
 int msglen ;
 int putchar (char) ;

void
clear_message(void)
{
    if (clear_eol(msglen) == 1)
    {
 putchar('\r');
    }
}
