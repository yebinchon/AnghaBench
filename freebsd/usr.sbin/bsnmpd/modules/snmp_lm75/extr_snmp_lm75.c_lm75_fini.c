
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closelog () ;
 int free_sensors () ;
 int lm75_index ;
 int or_unregister (int ) ;

__attribute__((used)) static int
lm75_fini(void)
{

 or_unregister(lm75_index);
 free_sensors();
 closelog();

 return (0);
}
