
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int AT_FDCWD ;
 int connectat (int ,int,struct sockaddr const*,int ) ;

__attribute__((used)) static int
connectat_fdcwd(int s, const struct sockaddr *name, socklen_t namelen)
{

 return (connectat(AT_FDCWD, s, name, namelen));
}
