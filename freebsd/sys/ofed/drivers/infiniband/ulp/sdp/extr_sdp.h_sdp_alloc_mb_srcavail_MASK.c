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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct socket {int dummy; } ;
struct sdp_srcah {int /*<<< orphan*/  vaddr; void* rkey; void* len; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDP_MID_SRCAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mbuf*,int) ; 
 struct mbuf* FUNC3 (struct socket*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline struct mbuf *
FUNC4(struct socket *sk, u32 len, u32 rkey, u64 vaddr, int wait)
{
	struct mbuf *mb;
	struct sdp_srcah *srcah;

	mb = FUNC3(sk, SDP_MID_SRCAVAIL, sizeof(*srcah), wait);
	if (mb == NULL)
		return (NULL);
	srcah = (struct sdp_srcah *)FUNC2(mb, sizeof(*srcah));
	srcah->len = FUNC1(len);
	srcah->rkey = FUNC1(rkey);
	srcah->vaddr = FUNC0(vaddr);

	return mb;
}