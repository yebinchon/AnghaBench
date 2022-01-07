
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int asprintf (char**,char*,unsigned int,unsigned int,unsigned int) ;
 int err (int,char*) ;

__attribute__((used)) static char *
format_signature(uint32_t signature)
{
 char *buf;
 unsigned family, model, stepping;

 family = (signature & 0xf00) >> 8;
 model = (signature & 0xf0) >> 4;
 stepping = signature & 0xf;
 if (family == 0x06 || family == 0x0f)
  model += (signature & 0xf0000) >> 12;
 if (family == 0x0f)
  family += (signature & 0xff00000) >> 20;
 asprintf(&buf, "%02x-%02x-%02x", family, model, stepping);
 if (buf == ((void*)0))
  err(1, "asprintf");
 return (buf);
}
