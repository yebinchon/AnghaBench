
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end_standout ;
 int fputs (char const*,int ) ;
 int putcap (int ) ;
 scalar_t__ smart_terminal ;
 int start_standout ;
 int stdout ;

void
top_standout(const char *msg)
{
    if (smart_terminal)
    {
 putcap(start_standout);
 fputs(msg, stdout);
 putcap(end_standout);
    }
    else
    {
 fputs(msg, stdout);
    }
}
