
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned char hexchar_to_byte (unsigned char) ;
 int isxdigit (unsigned char) ;
 size_t strlen (unsigned char*) ;

__attribute__((used)) static int
hexstring_to_bin(unsigned char *buf)
{
 size_t i, len;
 unsigned char byte;

 len = strlen(buf);
 for (i = 0; i < len / 2; i++) {
  if (!isxdigit(buf[2 * i]) || !isxdigit(buf[2 * i + 1]))
   return (EINVAL);

  byte = hexchar_to_byte(buf[2 * i]) << 4;
  byte += hexchar_to_byte(buf[2 * i + 1]);
  buf[i] = byte;
 }
 return (0);
}
