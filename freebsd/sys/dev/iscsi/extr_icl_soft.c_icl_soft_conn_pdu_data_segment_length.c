
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;


 size_t icl_pdu_data_segment_length (struct icl_pdu const*) ;

size_t
icl_soft_conn_pdu_data_segment_length(struct icl_conn *ic,
    const struct icl_pdu *request)
{

 return (icl_pdu_data_segment_length(request));
}
