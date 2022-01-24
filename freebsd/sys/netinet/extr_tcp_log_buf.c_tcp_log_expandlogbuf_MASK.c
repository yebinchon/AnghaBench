#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct tcp_log_verbose {int dummy; } ;
struct tcp_log_header {int tlh_length; int /*<<< orphan*/  tlh_reason; int /*<<< orphan*/  tlh_id; int /*<<< orphan*/  tlh_offset; int /*<<< orphan*/  tlh_af; int /*<<< orphan*/  tlh_ie; int /*<<< orphan*/  tlh_type; int /*<<< orphan*/  tlh_version; } ;
struct tcp_log_dev_queue {int dummy; } ;
struct tcp_log_dev_log_queue {int tldl_count; int /*<<< orphan*/  tldl_reason; int /*<<< orphan*/  tldl_id; int /*<<< orphan*/  tldl_af; int /*<<< orphan*/  tldl_ie; int /*<<< orphan*/  tldl_entries; } ;
struct tcp_log_common_header {int dummy; } ;
struct tcp_log_buffer {int dummy; } ;
struct sockopt {int sopt_valsize; int /*<<< orphan*/ * sopt_td; struct tcp_log_header* sopt_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TCPLOGDEV ; 
 int /*<<< orphan*/  TCP_LOG_BUF_VER ; 
 int /*<<< orphan*/  TCP_LOG_DEV_TYPE_BBR ; 
 int /*<<< orphan*/  TCP_LOG_ID_LEN ; 
 int /*<<< orphan*/  TCP_LOG_REASON_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_log_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcp_log_header* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_log_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (struct sockopt*,int /*<<< orphan*/ *,struct tcp_log_buffer**,int) ; 
 int /*<<< orphan*/  tcp_log_que_fail5 ; 

__attribute__((used)) static struct tcp_log_common_header *
FUNC8(struct tcp_log_dev_queue *param)
{
	struct tcp_log_dev_log_queue *entry;
	struct tcp_log_header *hdr;
	uint8_t *end;
	struct sockopt sopt;
	int error;

	entry = (struct tcp_log_dev_log_queue *)param;

	/* Take a worst-case guess at space needs. */
	sopt.sopt_valsize = sizeof(struct tcp_log_header) +
	    entry->tldl_count * (sizeof(struct tcp_log_buffer) +
	    sizeof(struct tcp_log_verbose));
	hdr = FUNC3(sopt.sopt_valsize, M_TCPLOGDEV, M_NOWAIT);
	if (hdr == NULL) {
#ifdef TCPLOG_DEBUG_COUNTERS
		counter_u64_add(tcp_log_que_fail5, entry->tldl_count);
#endif
		return (NULL);
	}
	sopt.sopt_val = hdr + 1;
	sopt.sopt_valsize -= sizeof(struct tcp_log_header);
	sopt.sopt_td = NULL;
	
	error = FUNC7(&sopt, &entry->tldl_entries,
	    (struct tcp_log_buffer **)&end, entry->tldl_count);
	if (error) {
		FUNC1(hdr, M_TCPLOGDEV);
		return (NULL);
	}

	/* Free the entries. */
	FUNC6(&entry->tldl_entries, &entry->tldl_count);
	entry->tldl_count = 0;

	FUNC4(hdr, 0, sizeof(struct tcp_log_header));
	hdr->tlh_version = TCP_LOG_BUF_VER;
	hdr->tlh_type = TCP_LOG_DEV_TYPE_BBR;
	hdr->tlh_length = end - (uint8_t *)hdr;
	hdr->tlh_ie = entry->tldl_ie;
	hdr->tlh_af = entry->tldl_af;
	FUNC2(&hdr->tlh_offset);
	FUNC5(hdr->tlh_id, entry->tldl_id, TCP_LOG_ID_LEN);
	FUNC5(hdr->tlh_reason, entry->tldl_reason, TCP_LOG_REASON_LEN);
	return ((struct tcp_log_common_header *)hdr);
}