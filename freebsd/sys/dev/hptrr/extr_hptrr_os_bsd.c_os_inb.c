
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_UPTR ;
typedef int HPT_U8 ;


 int inb (unsigned int) ;

HPT_U8 os_inb (void *port) { return inb((unsigned)(HPT_UPTR)port); }
