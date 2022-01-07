
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_LOCK ;
 int getopt (int,char**,char*) ;
 int pw_userlock (char*,int ) ;

int
pw_user_lock(int argc, char **argv, char *arg1)
{
 int ch;

 while ((ch = getopt(argc, argv, "Cq")) != -1) {
  switch (ch) {
  case 'C':
  case 'q':

   break;
  }
 }

 return (pw_userlock(arg1, M_LOCK));
}
