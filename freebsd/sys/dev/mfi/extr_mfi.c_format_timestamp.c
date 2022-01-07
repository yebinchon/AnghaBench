
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buffer ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
format_timestamp(uint32_t timestamp)
{
 static char buffer[32];

 if ((timestamp & 0xff000000) == 0xff000000)
  snprintf(buffer, sizeof(buffer), "boot + %us", timestamp &
      0x00ffffff);
 else
  snprintf(buffer, sizeof(buffer), "%us", timestamp);
 return (buffer);
}
