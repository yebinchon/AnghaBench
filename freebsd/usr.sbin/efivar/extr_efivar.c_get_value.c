
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buffer ;


 size_t read (int ,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static uint8_t *
get_value(char *val, size_t *datalen)
{
 static char buffer[16*1024];

 if (val != ((void*)0)) {
  *datalen = strlen(val);
  return ((uint8_t *)val);
 }

 *datalen = sizeof(buffer);
 *datalen = read(0, buffer, *datalen);
 return ((uint8_t *)buffer);
}
