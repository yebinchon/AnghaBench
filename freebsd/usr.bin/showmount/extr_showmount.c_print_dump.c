
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountlist {char* ml_host; char* ml_dirp; struct mountlist* ml_right; struct mountlist* ml_left; } ;




 int printf (char*,char*,...) ;
 int type ;

void
print_dump(struct mountlist *mp)
{

 if (mp == ((void*)0))
  return;
 if (mp->ml_left)
  print_dump(mp->ml_left);
 switch (type) {
 case 129:
  printf("%s:%s\n", mp->ml_host, mp->ml_dirp);
  break;
 case 128:
  printf("%s\n", mp->ml_dirp);
  break;
 default:
  printf("%s\n", mp->ml_host);
  break;
 }
 if (mp->ml_right)
  print_dump(mp->ml_right);
}
