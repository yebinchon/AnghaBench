
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_error; } ;



void
so_error_set(struct socket *so, int val)
{

 so->so_error = val;
}
