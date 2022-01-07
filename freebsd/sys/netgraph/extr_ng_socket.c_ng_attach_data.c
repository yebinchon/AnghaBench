
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int NG_DATA ;
 int ng_attach_common (struct socket*,int ) ;

__attribute__((used)) static int
ng_attach_data(struct socket *so)
{
 return (ng_attach_common(so, NG_DATA));
}
