
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MD5File (char const*,int *) ;
 char* RIPEMD160_File (char const*,int *) ;
 char* SHA1_File (char const*,int *) ;
 char* SHA256_File (char const*,int *) ;
 char* SHA512_File (char const*,int *) ;
 int digesttype ;

__attribute__((used)) static char *
digest_file(const char *name)
{

 switch (digesttype) {
 case 132:
  return (MD5File(name, ((void*)0)));
 case 131:
  return (RIPEMD160_File(name, ((void*)0)));
 case 130:
  return (SHA1_File(name, ((void*)0)));
 case 129:
  return (SHA256_File(name, ((void*)0)));
 case 128:
  return (SHA512_File(name, ((void*)0)));
 default:
  return (((void*)0));
 }
}
