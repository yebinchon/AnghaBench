
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int cpufreq_post_change ;
 int cpufreq_pre_change ;
 int vcoregpio_post_change ;
 int vcoregpio_pre_change ;

__attribute__((used)) static int
vcoregpio_attach(device_t dev)
{
 EVENTHANDLER_REGISTER(cpufreq_pre_change, vcoregpio_pre_change, dev,
     EVENTHANDLER_PRI_ANY);
 EVENTHANDLER_REGISTER(cpufreq_post_change, vcoregpio_post_change, dev,
     EVENTHANDLER_PRI_ANY);

 return (0);
}
