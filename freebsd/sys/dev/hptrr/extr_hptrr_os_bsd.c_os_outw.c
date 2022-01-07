
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_UPTR ;
typedef int HPT_U16 ;


 int outw (unsigned int,int ) ;

void os_outw (void *port, HPT_U16 value) { outw((unsigned)(HPT_UPTR)port, (value)); }
