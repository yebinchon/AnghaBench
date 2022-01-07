
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_name; } ;


 int enter_user (int,int ,int) ;
 struct passwd* getpwuid (int) ;
 int itoa7 (int) ;

int
get_user(int uid)
{
    struct passwd *pwd;


    if ((pwd = getpwuid(uid)) != ((void*)0))
    {
  return(enter_user(pwd->pw_uid, pwd->pw_name, 1));
    }


    return(enter_user(uid, itoa7(uid), 1));
}
