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
struct tentry_info {scalar_t__ subtype; } ;
struct ta_buf_fhash {struct fhashentry* ent_ptr; } ;
struct ip_fw_chain {int dummy; } ;
struct fhashentry6 {int dummy; } ;
struct fhashentry4 {int dummy; } ;
struct fhashentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_IPFW_TBL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct fhashentry*,int /*<<< orphan*/ ) ; 
 struct fhashentry* FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct tentry_info*,struct fhashentry*) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
	struct ta_buf_fhash *tb;
	struct fhashentry *ent;
	size_t sz;
	int error;

	tb = (struct ta_buf_fhash *)ta_buf;

	if (tei->subtype == AF_INET)
		sz = sizeof(struct fhashentry4);
	else if (tei->subtype == AF_INET6)
		sz = sizeof(struct fhashentry6);
	else
		return (EINVAL);

	ent = FUNC1(sz, M_IPFW_TBL, M_WAITOK | M_ZERO);

	error = FUNC2(tei, ent);
	if (error != 0) {
		FUNC0(ent, M_IPFW_TBL);
		return (error);
	}
	tb->ent_ptr = ent;

	return (0);
}