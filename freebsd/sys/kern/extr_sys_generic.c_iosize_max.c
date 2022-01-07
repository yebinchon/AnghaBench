
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INT_MAX ;
 size_t SSIZE_MAX ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_ILP32 ;
 scalar_t__ iosize_max_clamp ;

size_t
iosize_max(void)
{

 return (iosize_max_clamp || SV_CURPROC_FLAG(SV_ILP32) ?
     INT_MAX : SSIZE_MAX);
}
