
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_UPTR ;
typedef int HPT_U32 ;


 int outl (unsigned int,int ) ;

void os_outl (void *port, HPT_U32 value) { outl((unsigned)(HPT_UPTR)port, (value)); }
