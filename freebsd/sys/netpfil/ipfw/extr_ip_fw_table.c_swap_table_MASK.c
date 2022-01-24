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
struct tid_info {int dummy; } ;
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_header {int /*<<< orphan*/  ntlv; } ;
typedef  int /*<<< orphan*/  ipfw_obj_ntlv ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tid_info*) ; 
 int FUNC1 (struct ip_fw_chain*,struct tid_info*,struct tid_info*) ; 

__attribute__((used)) static int
FUNC2(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	int error;
	struct _ipfw_obj_header *oh;
	struct tid_info ti_a, ti_b;

	if (sd->valsize != sizeof(*oh) + sizeof(ipfw_obj_ntlv))
		return (EINVAL);

	oh = (struct _ipfw_obj_header *)op3;
	FUNC0(&oh->ntlv, &ti_a);
	FUNC0((ipfw_obj_ntlv *)(oh + 1), &ti_b);

	error = FUNC1(ch, &ti_a, &ti_b);

	return (error);
}