
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_U32 ;


 scalar_t__ random () ;

HPT_U32 os_get_stamp(void)
{
    HPT_U32 stamp;
    do { stamp = random(); } while (stamp==0);
    return stamp;
}
