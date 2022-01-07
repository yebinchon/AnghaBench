
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;





__attribute__((used)) static inline int is_file_in_use_error(DWORD errcode)
{
 switch (errcode) {
 case 128:
 case 129:
  return 1;
 }

 return 0;
}
