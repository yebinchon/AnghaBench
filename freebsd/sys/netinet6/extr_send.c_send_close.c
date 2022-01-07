
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int SEND_LOCK () ;
 int SEND_UNLOCK () ;
 int * V_send_so ;

__attribute__((used)) static void
send_close(struct socket *so)
{

 SEND_LOCK();
 if (V_send_so)
  V_send_so = ((void*)0);
 SEND_UNLOCK();
}
