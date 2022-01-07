
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_UPTR ;
typedef int HPT_U32 ;
typedef int HPT_U16 ;


 int outsw (unsigned int,void*,int ) ;

void os_outsw(void *port, HPT_U16 *buffer, HPT_U32 count)
{ outsw((unsigned)(HPT_UPTR)port, (void *)buffer, count); }
