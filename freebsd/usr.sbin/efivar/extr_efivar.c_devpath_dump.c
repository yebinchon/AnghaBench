
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const_efidp ;
typedef int buffer ;


 int Nflag ;
 int efidp_format_device_path (char*,int,int ,size_t) ;
 int printf (char*,...) ;

__attribute__((used)) static void
devpath_dump(uint8_t *data, size_t datalen)
{
 char buffer[1024];

 efidp_format_device_path(buffer, sizeof(buffer),
     (const_efidp)data, datalen);
 if (!Nflag)
  printf(": ");
 printf("%s\n", buffer);
}
