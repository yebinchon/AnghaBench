
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error (int ,char*) ;
 int safe_create_leading_directories (char*) ;

__attribute__((used)) static int ensure_leading_directories(char *path)
{
 switch (safe_create_leading_directories(path)) {
  case 128:
  case 129:
   return 0;
  default:
   return error(_("could not create leading directories "
           "of '%s'"), path);
 }
}
