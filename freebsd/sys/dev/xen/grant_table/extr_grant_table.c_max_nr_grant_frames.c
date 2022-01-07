
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __max_nr_grant_frames () ;
 unsigned int boot_max_nr_grant_frames ;

__attribute__((used)) static inline
unsigned int max_nr_grant_frames(void)
{
 unsigned int xen_max = __max_nr_grant_frames();

 if (xen_max > boot_max_nr_grant_frames)
  return (boot_max_nr_grant_frames);
 return (xen_max);
}
