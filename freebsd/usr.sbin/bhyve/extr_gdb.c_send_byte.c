
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int format_byte (int ,int *) ;
 int send_data (int *,int) ;

__attribute__((used)) static void
send_byte(uint8_t v)
{
 uint8_t buf[2];

 format_byte(v, buf);
 send_data(buf, sizeof(buf));
}
