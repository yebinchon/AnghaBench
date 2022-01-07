
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tcp_log_verbose {int dummy; } ;
struct tcp_log_header {int tlh_length; int tlh_reason; int tlh_id; int tlh_offset; int tlh_af; int tlh_ie; int tlh_type; int tlh_version; } ;
struct tcp_log_dev_queue {int dummy; } ;
struct tcp_log_dev_log_queue {int tldl_count; int tldl_reason; int tldl_id; int tldl_af; int tldl_ie; int tldl_entries; } ;
struct tcp_log_common_header {int dummy; } ;
struct tcp_log_buffer {int dummy; } ;
struct sockopt {int sopt_valsize; int * sopt_td; struct tcp_log_header* sopt_val; } ;


 int M_NOWAIT ;
 int M_TCPLOGDEV ;
 int TCP_LOG_BUF_VER ;
 int TCP_LOG_DEV_TYPE_BBR ;
 int TCP_LOG_ID_LEN ;
 int TCP_LOG_REASON_LEN ;
 int counter_u64_add (int ,int) ;
 int free (struct tcp_log_header*,int ) ;
 int getboottime (int *) ;
 struct tcp_log_header* malloc (int,int ,int ) ;
 int memset (struct tcp_log_header*,int ,int) ;
 int strlcpy (int ,int ,int ) ;
 int tcp_log_free_entries (int *,int*) ;
 int tcp_log_logs_to_buf (struct sockopt*,int *,struct tcp_log_buffer**,int) ;
 int tcp_log_que_fail5 ;

__attribute__((used)) static struct tcp_log_common_header *
tcp_log_expandlogbuf(struct tcp_log_dev_queue *param)
{
 struct tcp_log_dev_log_queue *entry;
 struct tcp_log_header *hdr;
 uint8_t *end;
 struct sockopt sopt;
 int error;

 entry = (struct tcp_log_dev_log_queue *)param;


 sopt.sopt_valsize = sizeof(struct tcp_log_header) +
     entry->tldl_count * (sizeof(struct tcp_log_buffer) +
     sizeof(struct tcp_log_verbose));
 hdr = malloc(sopt.sopt_valsize, M_TCPLOGDEV, M_NOWAIT);
 if (hdr == ((void*)0)) {



  return (((void*)0));
 }
 sopt.sopt_val = hdr + 1;
 sopt.sopt_valsize -= sizeof(struct tcp_log_header);
 sopt.sopt_td = ((void*)0);

 error = tcp_log_logs_to_buf(&sopt, &entry->tldl_entries,
     (struct tcp_log_buffer **)&end, entry->tldl_count);
 if (error) {
  free(hdr, M_TCPLOGDEV);
  return (((void*)0));
 }


 tcp_log_free_entries(&entry->tldl_entries, &entry->tldl_count);
 entry->tldl_count = 0;

 memset(hdr, 0, sizeof(struct tcp_log_header));
 hdr->tlh_version = TCP_LOG_BUF_VER;
 hdr->tlh_type = TCP_LOG_DEV_TYPE_BBR;
 hdr->tlh_length = end - (uint8_t *)hdr;
 hdr->tlh_ie = entry->tldl_ie;
 hdr->tlh_af = entry->tldl_af;
 getboottime(&hdr->tlh_offset);
 strlcpy(hdr->tlh_id, entry->tldl_id, TCP_LOG_ID_LEN);
 strlcpy(hdr->tlh_reason, entry->tldl_reason, TCP_LOG_REASON_LEN);
 return ((struct tcp_log_common_header *)hdr);
}
