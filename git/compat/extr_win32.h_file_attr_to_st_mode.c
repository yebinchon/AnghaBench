
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_READONLY ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IREAD ;
 int S_IWRITE ;

__attribute__((used)) static inline int file_attr_to_st_mode (DWORD attr)
{
 int fMode = S_IREAD;
 if (attr & FILE_ATTRIBUTE_DIRECTORY)
  fMode |= S_IFDIR;
 else
  fMode |= S_IFREG;
 if (!(attr & FILE_ATTRIBUTE_READONLY))
  fMode |= S_IWRITE;
 return fMode;
}
