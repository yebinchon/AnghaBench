
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;


 struct icl_pdu* iser_new_pdu (struct icl_conn*,int) ;

struct icl_pdu *
iser_conn_new_pdu(struct icl_conn *ic, int flags)
{
 return (iser_new_pdu(ic, flags));
}
