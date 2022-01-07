
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BYTE_IS_BINARY (unsigned char const) ;
 scalar_t__ BYTE_IS_TEXT (unsigned char const) ;

__attribute__((used)) static int
check_binary(const unsigned char *buf, size_t len)
{
 int rv;
 for (rv = 1; len--; ++buf) {
  if (BYTE_IS_BINARY(*buf))
   return 1;
  if (BYTE_IS_TEXT(*buf))
   rv = 0;
 }

 return rv;
}
