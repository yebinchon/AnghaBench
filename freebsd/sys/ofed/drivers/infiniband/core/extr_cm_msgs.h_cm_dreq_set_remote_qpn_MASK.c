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
struct cm_dreq_msg {int /*<<< orphan*/  offset8; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct cm_dreq_msg *dreq_msg, __be32 qpn)
{
	dreq_msg->offset8 = FUNC1((FUNC0(qpn) << 8) |
			    (FUNC0(dreq_msg->offset8) & 0x000000FF));
}