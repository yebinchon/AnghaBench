
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;


 int M_SONAME ;
 int bcopy (struct sockaddr const*,struct sockaddr*,int ) ;
 struct sockaddr* malloc (int ,int ,int) ;

struct sockaddr *
sodupsockaddr(const struct sockaddr *sa, int mflags)
{
 struct sockaddr *sa2;

 sa2 = malloc(sa->sa_len, M_SONAME, mflags);
 if (sa2)
  bcopy(sa, sa2, sa->sa_len);
 return sa2;
}
