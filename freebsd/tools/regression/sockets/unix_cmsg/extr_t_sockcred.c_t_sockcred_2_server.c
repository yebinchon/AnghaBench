
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int t_sockcred_server (int,int) ;

__attribute__((used)) static int
t_sockcred_2_server(int fd)
{
 return (t_sockcred_server(2, fd));
}
