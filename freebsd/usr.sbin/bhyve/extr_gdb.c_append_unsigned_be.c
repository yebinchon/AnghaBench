
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int buf ;


 int append_packet_data (char*,int) ;
 int format_byte (int,char*) ;

__attribute__((used)) static void
append_unsigned_be(uintmax_t value, size_t len)
{
 char buf[len * 2];
 size_t i;

 for (i = 0; i < len; i++) {
  format_byte(value, buf + (len - i - 1) * 2);
  value >>= 8;
 }
 append_packet_data(buf, sizeof(buf));
}
