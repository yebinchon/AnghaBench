#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  size_t u_int ;
struct procstat {int dummy; } ;
struct kinfo_proc {int ki_pid; char* ki_comm; } ;
typedef  int /*<<< orphan*/  prefix ;
struct TYPE_5__ {int a_val; int /*<<< orphan*/  a_ptr; } ;
struct TYPE_6__ {int a_type; TYPE_1__ a_un; } ;
typedef  TYPE_2__ Elf_Auxinfo ;

/* Variables and functions */
#define  AT_BASE 154 
#define  AT_CANARY 153 
#define  AT_CANARYLEN 152 
#define  AT_EGID 151 
#define  AT_EHDRFLAGS 150 
#define  AT_ENTRY 149 
#define  AT_EUID 148 
#define  AT_EXECFD 147 
#define  AT_EXECPATH 146 
#define  AT_FLAGS 145 
#define  AT_GID 144 
#define  AT_HWCAP 143 
#define  AT_HWCAP2 142 
#define  AT_IGNORE 141 
#define  AT_NCPUS 140 
#define  AT_NOTELF 139 
#define  AT_NULL 138 
#define  AT_OSRELDATE 137 
#define  AT_PAGESIZES 136 
#define  AT_PAGESIZESLEN 135 
#define  AT_PAGESZ 134 
#define  AT_PHDR 133 
#define  AT_PHENT 132 
#define  AT_PHNUM 131 
#define  AT_STACKPROT 130 
#define  AT_TIMEKEEP 129 
#define  AT_UID 128 
 int PS_OPT_NOHEADER ; 
 int VM_PROT_EXECUTE ; 
 int /*<<< orphan*/  FUNC0 (struct procstat*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (struct procstat*,struct kinfo_proc*,size_t*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4(struct procstat *procstat, struct kinfo_proc *kipp)
{
	Elf_Auxinfo *auxv;
	u_int count, i;
	static char prefix[256];

	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC3("{T:/%5s %-16s %-16s %-16s}\n", "PID", "COMM", "AUXV",
		    "VALUE");

	auxv = FUNC1(procstat, kipp, &count);
	if (auxv == NULL)
		return;
        FUNC2(prefix, sizeof(prefix), "%5d %-16s", kipp->ki_pid,
            kipp->ki_comm);

	FUNC3("{e:process_id/%5d/%d}{e:command/%-16s/%s}", kipp->ki_pid,
	    kipp->ki_comm);

	for (i = 0; i < count; i++) {
		switch(auxv[i].a_type) {
		case AT_NULL:
			return;
		case AT_IGNORE:
			break;
		case AT_EXECFD:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_EXECFD/%ld}\n",
			    prefix, "AT_EXECFD", (long)auxv[i].a_un.a_val);
			break;
		case AT_PHDR:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_PHDR/%p}\n",
			    prefix, "AT_PHDR", auxv[i].a_un.a_ptr);
			break;
		case AT_PHENT:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_PHENT/%ld}\n",
			    prefix, "AT_PHENT", (long)auxv[i].a_un.a_val);
			break;
		case AT_PHNUM:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_PHNUM/%ld}\n",
			    prefix, "AT_PHNUM", (long)auxv[i].a_un.a_val);
			break;
		case AT_PAGESZ:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESZ/%ld}\n",
			    prefix, "AT_PAGESZ", (long)auxv[i].a_un.a_val);
			break;
		case AT_BASE:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_BASE/%p}\n",
			    prefix, "AT_BASE", auxv[i].a_un.a_ptr);
			break;
		case AT_FLAGS:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_FLAGS/%#lx}\n",
			    prefix, "AT_FLAGS", (u_long)auxv[i].a_un.a_val);
			break;
		case AT_ENTRY:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_ENTRY/%p}\n",
			    prefix, "AT_ENTRY", auxv[i].a_un.a_ptr);
			break;
#ifdef AT_NOTELF
		case AT_NOTELF:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_NOTELF/%ld}\n",
			    prefix, "AT_NOTELF", (long)auxv[i].a_un.a_val);
			break;
#endif
#ifdef AT_UID
		case AT_UID:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_UID/%ld}\n",
			    prefix, "AT_UID", (long)auxv[i].a_un.a_val);
			break;
#endif
#ifdef AT_EUID
		case AT_EUID:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_EUID/%ld}\n",
			    prefix, "AT_EUID", (long)auxv[i].a_un.a_val);
			break;
#endif
#ifdef AT_GID
		case AT_GID:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_GID/%ld}\n",
			    prefix, "AT_GID", (long)auxv[i].a_un.a_val);
			break;
#endif
#ifdef AT_EGID
		case AT_EGID:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_EGID/%ld}\n",
			    prefix, "AT_EGID", (long)auxv[i].a_un.a_val);
			break;
#endif
		case AT_EXECPATH:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_EXECPATH/%p}\n",
			    prefix, "AT_EXECPATH", auxv[i].a_un.a_ptr);
			break;
		case AT_CANARY:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_CANARY/%p}\n",
			    prefix, "AT_CANARY", auxv[i].a_un.a_ptr);
			break;
		case AT_CANARYLEN:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_CANARYLEN/%ld}\n",
			    prefix, "AT_CANARYLEN", (long)auxv[i].a_un.a_val);
			break;
		case AT_OSRELDATE:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_OSRELDATE/%ld}\n",
			    prefix, "AT_OSRELDATE", (long)auxv[i].a_un.a_val);
			break;
		case AT_NCPUS:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_NCPUS/%ld}\n",
			    prefix, "AT_NCPUS", (long)auxv[i].a_un.a_val);
			break;
		case AT_PAGESIZES:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESIZES/%p}\n",
			    prefix, "AT_PAGESIZES", auxv[i].a_un.a_ptr);
			break;
		case AT_PAGESIZESLEN:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}"
			    "{:AT_PAGESIZESLEN/%ld}\n", prefix,
			    "AT_PAGESIZESLEN", (long)auxv[i].a_un.a_val);
			break;
		case AT_STACKPROT:
			if ((auxv[i].a_un.a_val & VM_PROT_EXECUTE) != 0)
				FUNC3("{dw:/%s}{Lw:/%-16s/%s}"
				    "{:AT_STACKPROT/%s}\n", prefix,
				    "AT_STACKPROT", "EXECUTABLE");
			else
				FUNC3("{dw:/%s}{Lw:/%-16s/%s}"
				    "{:AT_STACKPROT/%s}\n", prefix,
				    "AT_STACKPROT", "NONEXECUTABLE");
			break;
#ifdef AT_TIMEKEEP
		case AT_TIMEKEEP:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_TIMEKEEP/%p}\n",
			    prefix, "AT_TIMEKEEP", auxv[i].a_un.a_ptr);
			break;
#endif
#ifdef AT_EHDRFLAGS
		case AT_EHDRFLAGS:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_EHDRFLAGS/%#lx}\n",
			    prefix, "AT_EHDRFLAGS", (u_long)auxv[i].a_un.a_val);
			break;
#endif
#ifdef AT_HWCAP
		case AT_HWCAP:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_HWCAP/%#lx}\n",
			    prefix, "AT_HWCAP", (u_long)auxv[i].a_un.a_val);
			break;
#endif
#ifdef AT_HWCAP2
		case AT_HWCAP2:
			FUNC3("{dw:/%s}{Lw:/%-16s/%s}{:AT_HWCAP2/%#lx}\n",
			    prefix, "AT_HWCAP2", (u_long)auxv[i].a_un.a_val);
			break;
#endif
		default:
			FUNC3("{dw:/%s}{Lw:/%16ld/%ld}{:UNKNOWN/%#lx}\n",
			    prefix, auxv[i].a_type, auxv[i].a_un.a_val);
			break;
		}
	}
	FUNC3("\n");
	FUNC0(procstat, auxv);
}