
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int ng_hci_unit_p ;


 int NG_FREE_M (struct mbuf*) ;

__attribute__((used)) static int le_connection_update(ng_hci_unit_p unit, struct mbuf *event)
{
 int error = 0;


 NG_FREE_M(event);
 return error;

}
