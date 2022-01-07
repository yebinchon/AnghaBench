
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icl_conn {int (* ic_error ) (struct icl_conn*) ;TYPE_1__* ic_socket; } ;
struct TYPE_2__ {int so_error; } ;


 int EDOOFUS ;
 int stub1 (struct icl_conn*) ;

__attribute__((used)) static void
icl_conn_fail(struct icl_conn *ic)
{
 if (ic->ic_socket == ((void*)0))
  return;




 ic->ic_socket->so_error = EDOOFUS;
 (ic->ic_error)(ic);
}
