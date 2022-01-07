
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_UPTR ;
typedef int HPT_U16 ;


 int inw (unsigned int) ;

HPT_U16 os_inw (void *port) { return inw((unsigned)(HPT_UPTR)port); }
