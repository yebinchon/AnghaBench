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
typedef  int /*<<< orphan*/  uint64_t ;
struct adapter {int /*<<< orphan*/  ierrors; int /*<<< orphan*/  iqdrops; int /*<<< orphan*/  omcasts; int /*<<< orphan*/  imcasts; int /*<<< orphan*/  obytes; int /*<<< orphan*/  ibytes; int /*<<< orphan*/  opackets; int /*<<< orphan*/  ipackets; } ;
typedef  int ift_counter ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
#define  IFCOUNTER_COLLISIONS 137 
#define  IFCOUNTER_IBYTES 136 
#define  IFCOUNTER_IERRORS 135 
#define  IFCOUNTER_IMCASTS 134 
#define  IFCOUNTER_IPACKETS 133 
#define  IFCOUNTER_IQDROPS 132 
#define  IFCOUNTER_OBYTES 131 
#define  IFCOUNTER_OMCASTS 130 
#define  IFCOUNTER_OPACKETS 129 
#define  IFCOUNTER_OQDROPS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC3(if_ctx_t ctx, ift_counter cnt)
{
	struct adapter *adapter = FUNC2(ctx);
	if_t           ifp = FUNC1(ctx);

	switch (cnt) {
	case IFCOUNTER_IPACKETS:
		return (adapter->ipackets);
	case IFCOUNTER_OPACKETS:
		return (adapter->opackets);
	case IFCOUNTER_IBYTES:
		return (adapter->ibytes);
	case IFCOUNTER_OBYTES:
		return (adapter->obytes);
	case IFCOUNTER_IMCASTS:
		return (adapter->imcasts);
	case IFCOUNTER_OMCASTS:
		return (adapter->omcasts);
	case IFCOUNTER_COLLISIONS:
		return (0);
	case IFCOUNTER_IQDROPS:
		return (adapter->iqdrops);
	case IFCOUNTER_OQDROPS:
		return (0);
	case IFCOUNTER_IERRORS:
		return (adapter->ierrors);
	default:
		return (FUNC0(ifp, cnt));
	}
}