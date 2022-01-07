
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef char efi_char ;


 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,int *,size_t) ;
 int printf (char*,char*) ;
 int ucs2_to_utf8 (char*,char**) ;

void
utf8dump(uint8_t *data, size_t datalen)
{
 char *utf8 = ((void*)0);
 efi_char *ucs2;





 ucs2 = malloc(datalen + sizeof(efi_char));
 memcpy(ucs2, data, datalen);
 ucs2[datalen / sizeof(efi_char)] = 0;
 ucs2_to_utf8(ucs2, &utf8);
 printf("%s\n", utf8);
 free(utf8);
 free(ucs2);
}
