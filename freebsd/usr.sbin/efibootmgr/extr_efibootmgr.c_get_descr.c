
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef char efi_char ;


 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int ucs2len (char*) ;

__attribute__((used)) static char *
get_descr(uint8_t *data)
{
 uint8_t *pos = data;
 efi_char *desc;
 int len;
 char *buf;
 int i = 0;

 pos += sizeof(uint32_t) + sizeof(uint16_t);
 desc = (efi_char*)(intptr_t)(void *)pos;
 len = ucs2len(desc);
 buf = malloc(len + 1);
 memset(buf, 0, len + 1);
 while (desc[i]) {
  buf[i] = desc[i];
  i++;
 }
 return (char*)buf;
}
