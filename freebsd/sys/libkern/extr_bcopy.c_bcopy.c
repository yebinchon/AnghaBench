
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;

void
(bcopy)(const void *src0, void *dst0, size_t length)
{

 memcpy(dst0, src0, length);
}
