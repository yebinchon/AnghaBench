#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct PROCENTRY {int dummy; } ;
struct IOAPICENTRY {int dummy; } ;
struct INTENTRY {int dummy; } ;
struct BUSENTRY {int dummy; } ;
typedef  TYPE_1__* proc_entry_ptr ;
typedef  TYPE_2__* mpfps_t ;
typedef  TYPE_2__* mpcth_t ;
struct TYPE_8__ {scalar_t__ config_type; int entry_count; int /*<<< orphan*/  pap; } ;
struct TYPE_7__ {int cpu_flags; int /*<<< orphan*/  apic_id; } ;

/* Variables and functions */
 int PROCENTRY_FLAG_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char,...) ; 

int
FUNC7(void)
{
    mpfps_t mpfps;
    mpcth_t mpcth;
    char *entry_type_p;
    proc_entry_ptr proc;
    int ncpu, i;

    if (!FUNC5())
	return -1;		/* XXX 0? */
    /* locate and validate the mpfps */
    mpfps = FUNC2();
    mpcth = NULL;
    if (mpfps == NULL) {
	ncpu = 0;
    } else if (mpfps->config_type != 0) {
	/* 
	 * If thie config_type is nonzero then this is a default configuration
	 * from Chapter 5 in the MP spec.  Report 2 cpus and 1 I/O APIC.
	 */
    	ncpu = 2;
    } else {
	ncpu = 0;
	mpcth = FUNC1(FUNC0(mpfps->pap));
	if (mpcth != NULL) {
	    entry_type_p = (char *)(mpcth + 1);
	    for (i = 0; i < mpcth->entry_count; i++) {
		switch (*entry_type_p) {
		case 0:
		    entry_type_p += sizeof(struct PROCENTRY);
		    proc = (proc_entry_ptr) entry_type_p;
		    FUNC6("MPTable: Found CPU APIC ID %d %s",
			proc->apic_id,
			proc->cpu_flags & PROCENTRY_FLAG_EN ?
				"enabled" : "disabled");
		    if (proc->cpu_flags & PROCENTRY_FLAG_EN)
			ncpu++;
		    break;
		case 1:
		    entry_type_p += sizeof(struct BUSENTRY);
		    break;
		case 2:
		    entry_type_p += sizeof(struct IOAPICENTRY);
		    break;
		case 3:
		case 4:
		    entry_type_p += sizeof(struct INTENTRY);
		    break;
		default:
		    FUNC6("unknown mptable entry type (%d)", *entry_type_p);
		    goto done;		/* XXX error return? */
		}
	    }
	done:
	    ;
	}
    }
    FUNC4();
    if (mpcth != NULL)
	FUNC3(mpcth);
    if (mpfps != NULL)
	FUNC3(mpfps);

    return ncpu;
}