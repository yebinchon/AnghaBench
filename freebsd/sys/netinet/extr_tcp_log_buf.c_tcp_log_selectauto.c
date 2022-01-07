
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_fetchadd_long (int *,int) ;
 int tcp_log_auto_ratio ;
 int tcp_log_auto_ratio_cur ;

__attribute__((used)) static __inline bool
tcp_log_selectauto(void)
{





 if (tcp_log_auto_ratio &&
     (atomic_fetchadd_long(&tcp_log_auto_ratio_cur, 1) %
     tcp_log_auto_ratio) == 0)
  return (1);
 return (0);
}
