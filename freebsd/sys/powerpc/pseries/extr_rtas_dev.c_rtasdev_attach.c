
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int SHUTDOWN_PRI_LAST ;
 int clock_register (int ,int) ;
 int rtas_shutdown ;
 int rtas_token_lookup (char*) ;
 int shutdown_final ;

__attribute__((used)) static int
rtasdev_attach(device_t dev)
{
 if (rtas_token_lookup("get-time-of-day") != -1)
  clock_register(dev, 2000);

 EVENTHANDLER_REGISTER(shutdown_final, rtas_shutdown, ((void*)0),
     SHUTDOWN_PRI_LAST);

 return (0);
}
