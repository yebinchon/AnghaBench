
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_get_encoded_number (unsigned char*,int) ;
 int printf (char*,char const*,int,char const*) ;

void
debug_dump_integer(const char *element, char* buf, int mode)
{
 printf("<%s>%i</%s>\n", element,
     debug_get_encoded_number((unsigned char *)buf, mode), element);
}
