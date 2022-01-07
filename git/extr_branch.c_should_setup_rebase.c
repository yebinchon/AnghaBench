
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autorebase ;

__attribute__((used)) static int should_setup_rebase(const char *origin)
{
 switch (autorebase) {
 case 129:
  return 0;
 case 130:
  return origin == ((void*)0);
 case 128:
  return origin != ((void*)0);
 case 131:
  return 1;
 }
 return 0;
}
