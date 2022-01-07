
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int dummy; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int EV_ADD ;
 int EV_DISABLE ;
 struct mevent* mevent_add_state (int,int,void (*) (int,int,void*),void*,int) ;

struct mevent *
mevent_add_disabled(int tfd, enum ev_type type,
      void (*func)(int, enum ev_type, void *), void *param)
{

 return (mevent_add_state(tfd, type, func, param, EV_ADD | EV_DISABLE));
}
