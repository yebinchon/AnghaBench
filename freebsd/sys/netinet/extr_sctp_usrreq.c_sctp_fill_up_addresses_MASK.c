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
struct sockaddr_storage {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int /*<<< orphan*/  def_vrf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (struct sctp_inpcb*,struct sctp_tcb*,size_t,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(struct sctp_inpcb *inp,
    struct sctp_tcb *stcb,
    size_t limit,
    struct sockaddr_storage *sas)
{
	size_t size = 0;

	FUNC0();
	/* fill up addresses for the endpoint's default vrf */
	size = FUNC2(inp, stcb, limit, sas,
	    inp->def_vrf_id);
	FUNC1();
	return (size);
}