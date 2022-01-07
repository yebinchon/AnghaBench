
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ caddr_t ;



__attribute__((used)) static size_t
store_gcov_uint32(void *buffer, size_t off, uint32_t v)
{
 uint32_t *data;

 if (buffer) {
  data = (void*)((caddr_t)buffer + off);
  *data = v;
 }

 return sizeof(*data);
}
