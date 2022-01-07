
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,char,size_t) ;
 size_t strnlen (char const*,size_t) ;

__attribute__((used)) static __inline void
cpywithpad(char *dst, size_t dst_size, const char *src, char pad)
{
 size_t len;

 len = strnlen(src, dst_size);
 memset(dst, pad, dst_size);
 memcpy(dst, src, len);
}
