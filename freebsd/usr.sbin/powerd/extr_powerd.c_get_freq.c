
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curfreq ;


 int freq_mib ;
 scalar_t__ sysctl (int ,int,int*,size_t*,int *,int ) ;
 scalar_t__ vflag ;
 int warn (char*) ;

__attribute__((used)) static int
get_freq(void)
{
 size_t len;
 int curfreq;

 len = sizeof(curfreq);
 if (sysctl(freq_mib, 4, &curfreq, &len, ((void*)0), 0) != 0) {
  if (vflag)
   warn("error reading current CPU frequency");
  curfreq = 0;
 }
 return (curfreq);
}
