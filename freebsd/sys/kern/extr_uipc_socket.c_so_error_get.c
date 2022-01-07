
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_error; } ;



int
so_error_get(const struct socket *so)
{

 return (so->so_error);
}
