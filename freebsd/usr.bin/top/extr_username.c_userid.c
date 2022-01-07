
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;


 int enter_user (int,char*,int) ;
 struct passwd* getpwnam (char*) ;

int
userid(char username_[])
{
    struct passwd *pwd;





    if ((pwd = getpwnam(username_)) == ((void*)0))
    {
 return(-1);
    }


    enter_user(pwd->pw_uid, username_, 1);


    return(pwd->pw_uid);
}
