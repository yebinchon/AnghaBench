
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPT_UPTR ;
typedef int HPT_U32 ;


 int inl (unsigned int) ;

HPT_U32 os_inl (void *port) { return inl((unsigned)(HPT_UPTR)port); }
