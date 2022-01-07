
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERASE ;
 scalar_t__ ON ;
 scalar_t__ header_status ;

void
display_header(int t)
{

    if (t)
    {
 header_status = ON;
    }
    else if (header_status == ON)
    {
 header_status = ERASE;
    }
}
