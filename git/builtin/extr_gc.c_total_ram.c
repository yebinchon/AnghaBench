
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct sysinfo {int totalram; } ;
typedef int int64_t ;
struct TYPE_3__ {int dwLength; int ullTotalPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;


 int CTL_HW ;
 scalar_t__ GlobalMemoryStatusEx (TYPE_1__*) ;
 int HW_MEMSIZE ;
 int HW_PHYSMEM ;
 int sysctl (int*,int,int *,size_t*,int *,int ) ;
 int sysinfo (struct sysinfo*) ;

__attribute__((used)) static uint64_t total_ram(void)
{
 return 0;
}
