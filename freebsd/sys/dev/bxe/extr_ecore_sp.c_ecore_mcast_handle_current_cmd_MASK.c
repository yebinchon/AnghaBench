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
struct ecore_mcast_ramrod_params {scalar_t__ mcast_list_len; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {int /*<<< orphan*/  (* hdl_restore ) (struct bxe_softc*,struct ecore_mcast_obj*,int /*<<< orphan*/ ,int*) ;} ;
struct bxe_softc {int dummy; } ;
typedef  enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ECORE_INVAL ; 
#define  ECORE_MCAST_CMD_ADD 130 
#define  ECORE_MCAST_CMD_DEL 129 
#define  ECORE_MCAST_CMD_RESTORE 128 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct ecore_mcast_obj*,struct ecore_mcast_ramrod_params*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct ecore_mcast_obj*,struct ecore_mcast_ramrod_params*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct ecore_mcast_obj*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static inline int FUNC5(struct bxe_softc *sc,
			struct ecore_mcast_ramrod_params *p,
			enum ecore_mcast_cmd cmd,
			int start_cnt)
{
	struct ecore_mcast_obj *o = p->mcast_obj;
	int cnt = start_cnt;

	FUNC1(sc, "p->mcast_list_len=%d\n", p->mcast_list_len);

	switch (cmd) {
	case ECORE_MCAST_CMD_ADD:
		FUNC2(sc, o, p, &cnt);
		break;

	case ECORE_MCAST_CMD_DEL:
		FUNC3(sc, o, p, &cnt);
		break;

	case ECORE_MCAST_CMD_RESTORE:
		o->hdl_restore(sc, o, 0, &cnt);
		break;

	default:
		FUNC0("Unknown command: %d\n", cmd);
		return ECORE_INVAL;
	}

	/* The current command has been handled */
	p->mcast_list_len = 0;

	return cnt;
}