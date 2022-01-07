
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_STOP ;
 int set_i8254_freq (int ,int ) ;

void
i8254_init(void)
{

 set_i8254_freq(MODE_STOP, 0);
}
