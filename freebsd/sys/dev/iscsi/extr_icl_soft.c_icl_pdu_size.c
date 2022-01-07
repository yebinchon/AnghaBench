
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_bhs {int dummy; } ;
struct icl_pdu {scalar_t__ ip_ahs_len; int ip_data_len; TYPE_1__* ip_conn; } ;
struct TYPE_2__ {scalar_t__ ic_data_crc32c; scalar_t__ ic_header_crc32c; } ;


 scalar_t__ ISCSI_DATA_DIGEST_SIZE ;
 scalar_t__ ISCSI_HEADER_DIGEST_SIZE ;
 int KASSERT (int,char*) ;
 int icl_pdu_padding (struct icl_pdu const*) ;

__attribute__((used)) static size_t
icl_pdu_size(const struct icl_pdu *response)
{
 size_t len;

 KASSERT(response->ip_ahs_len == 0, ("responding with AHS"));

 len = sizeof(struct iscsi_bhs) + response->ip_data_len +
     icl_pdu_padding(response);
 if (response->ip_conn->ic_header_crc32c)
  len += ISCSI_HEADER_DIGEST_SIZE;
 if (response->ip_data_len != 0 && response->ip_conn->ic_data_crc32c)
  len += ISCSI_DATA_DIGEST_SIZE;

 return (len);
}
