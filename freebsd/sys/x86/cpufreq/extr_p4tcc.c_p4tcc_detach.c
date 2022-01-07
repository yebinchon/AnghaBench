
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int freq; } ;
typedef int device_t ;


 int cpufreq_unregister (int ) ;
 int p4tcc_set (int ,struct cf_setting*) ;

__attribute__((used)) static int
p4tcc_detach(device_t dev)
{
 struct cf_setting set;
 int error;

 error = cpufreq_unregister(dev);
 if (error)
  return (error);




 set.freq = 10000;
 p4tcc_set(dev, &set);
 return(0);
}
