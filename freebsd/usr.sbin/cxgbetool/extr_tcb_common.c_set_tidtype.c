
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TIDTYPE_FCB ;
 unsigned int TIDTYPE_SCB ;
 int g_got_fcb ;
 int g_got_scb ;

void set_tidtype(unsigned int tidtype)
{
    if (tidtype == TIDTYPE_SCB)
    {
        g_got_scb = 1;
    }
    else if (tidtype == TIDTYPE_FCB)
    {
        g_got_fcb = 1;
    }
    else
    {
        g_got_scb = 0;
        g_got_fcb = 0;
    }

}
