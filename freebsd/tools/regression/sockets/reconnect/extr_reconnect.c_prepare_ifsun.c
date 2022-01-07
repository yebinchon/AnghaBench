
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; int sun_len; } ;


 int AF_LOCAL ;
 int memset (struct sockaddr_un*,char,int) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
prepare_ifsun(struct sockaddr_un *ifsun, const char *path)
{

    memset(ifsun, '\0', sizeof(*ifsun));



    ifsun->sun_family = AF_LOCAL;
    strcpy(ifsun->sun_path, path);
}
