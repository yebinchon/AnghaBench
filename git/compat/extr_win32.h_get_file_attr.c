
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FILE_ATTRIBUTE_DATA ;


 int EACCES ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOMEM ;






 scalar_t__ GetFileAttributesExA (char const*,int ,int *) ;
 int GetFileExInfoStandard ;
 int GetLastError () ;

__attribute__((used)) static inline int get_file_attr(const char *fname, WIN32_FILE_ATTRIBUTE_DATA *fdata)
{
 if (GetFileAttributesExA(fname, GetFileExInfoStandard, fdata))
  return 0;

 switch (GetLastError()) {
 case 133:
 case 128:
 case 131:
 case 129:
  return EACCES;
 case 132:
  return ENAMETOOLONG;
 case 130:
  return ENOMEM;
 default:
  return ENOENT;
 }
}
