
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int EX_OSERR ;
 int accept (int,int *,int *) ;
 int close (int) ;
 int err (int ,char*) ;
 int read (int,char*,int) ;
 int reflect_conn (int,char*,int,int ,int *,int ) ;

__attribute__((used)) static int
reflect_tcp6_conn(int as)
{
 char buf[1500];
 ssize_t l;
 int error, s;

 s = accept(as, ((void*)0), ((void*)0));
 if (s == -1)
  err(EX_OSERR, "accept()");

 l = read(s, buf, sizeof(buf));
 error = reflect_conn(s, buf, sizeof(buf), l, ((void*)0), 0);
 close(s);

 return (error);
}
