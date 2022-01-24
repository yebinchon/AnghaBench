#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sctp_paramhdr {int /*<<< orphan*/  param_length; int /*<<< orphan*/  param_type; } ;
struct TYPE_3__ {struct sctp_paramhdr* Asconf; } ;
struct sctp_nat_msg {int chunk_length; TYPE_2__* sctp_hdr; TYPE_1__ sctpchnk; } ;
struct libalias {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  v_tag; } ;

/* Variables and functions */
 scalar_t__ SCTP_ADD_IP_ADDRESS ; 
 scalar_t__ SCTP_DEL_IP_ADDRESS ; 
 int FUNC0 (scalar_t__) ; 
 int SN_ASCONFACK_PARAM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_LOG_EVENT ; 
 int SN_MIN_PARAM_SIZE ; 
 struct sctp_paramhdr* FUNC2 (struct sctp_paramhdr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int sysctl_param_proc_limit ; 

__attribute__((used)) static int
FUNC5(struct libalias *la, struct sctp_nat_msg *sm, int direction)
{
	struct sctp_paramhdr *param;
	int bytes_left;
	int param_size;
	int param_count;

	param_count = 1;
	param = sm->sctpchnk.Asconf;
	param_size = FUNC0(FUNC4(param->param_length));

	bytes_left = sm->chunk_length;
	if (bytes_left < param_size)
		return (0); /* not found */
	/* step through Asconf parameters */
	while(bytes_left >= SN_ASCONFACK_PARAM_SIZE) {
		if (FUNC4(param->param_type) == SCTP_ADD_IP_ADDRESS)
			return (SCTP_ADD_IP_ADDRESS);
		else if (FUNC4(param->param_type) == SCTP_DEL_IP_ADDRESS)
			return (SCTP_DEL_IP_ADDRESS);
		/* check others just in case */
		bytes_left -= param_size;
		if (bytes_left >= SN_MIN_PARAM_SIZE) {
			param = FUNC2(param);
		} else {
			return (0); /*Neither found */
		}
		param_size = FUNC0(FUNC4(param->param_length));
		if (bytes_left < param_size) return (0);

		if (++param_count > sysctl_param_proc_limit) {
			FUNC1(SN_LOG_EVENT,
			    FUNC3("Parameter parse limit exceeded IsADDorDEL)",
				sm->sctp_hdr->v_tag, sysctl_param_proc_limit, direction));
			return (0); /* not found limit exceeded*/
		}
	}
	return (0);  /*Neither found */
}