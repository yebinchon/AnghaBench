
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lro_ctrl {int dummy; } ;


 int tcp_lro_entries ;
 int tcp_lro_init_args (struct lro_ctrl*,int *,int ,int ) ;

int
tcp_lro_init(struct lro_ctrl *lc)
{
 return (tcp_lro_init_args(lc, ((void*)0), tcp_lro_entries, 0));
}
