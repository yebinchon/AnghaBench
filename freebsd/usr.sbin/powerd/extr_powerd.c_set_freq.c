
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int freq ;


 scalar_t__ EPERM ;
 scalar_t__ errno ;
 int freq_mib ;
 scalar_t__ sysctl (int ,int,int *,int *,int*,int) ;

__attribute__((used)) static int
set_freq(int freq)
{

 if (sysctl(freq_mib, 4, ((void*)0), ((void*)0), &freq, sizeof(freq))) {
  if (errno != EPERM)
   return (-1);
 }

 return (0);
}
