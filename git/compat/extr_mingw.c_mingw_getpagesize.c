
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwAllocationGranularity; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int GetSystemInfo (TYPE_1__*) ;

int mingw_getpagesize(void)
{
 SYSTEM_INFO si;
 GetSystemInfo(&si);
 return si.dwAllocationGranularity;
}
