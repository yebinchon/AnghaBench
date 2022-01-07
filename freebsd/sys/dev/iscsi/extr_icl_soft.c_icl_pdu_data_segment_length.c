
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct TYPE_2__ {scalar_t__* bhs_data_segment_len; } ;



__attribute__((used)) static size_t
icl_pdu_data_segment_length(const struct icl_pdu *request)
{
 uint32_t len = 0;

 len += request->ip_bhs->bhs_data_segment_len[0];
 len <<= 8;
 len += request->ip_bhs->bhs_data_segment_len[1];
 len <<= 8;
 len += request->ip_bhs->bhs_data_segment_len[2];

 return (len);
}
