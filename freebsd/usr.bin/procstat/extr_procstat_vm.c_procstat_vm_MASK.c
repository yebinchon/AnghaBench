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
typedef  char const* uintmax_t ;
struct procstat {int dummy; } ;
struct kinfo_vmentry {int kve_protection; char const* kve_resident; char const* kve_private_resident; char const* kve_ref_count; char const* kve_shadow_count; int kve_flags; int kve_type; char const* kve_path; scalar_t__ kve_end; scalar_t__ kve_start; } ;
struct kinfo_proc {char const* ki_pid; } ;

/* Variables and functions */
 int KVME_FLAG_COW ; 
 int KVME_FLAG_GROWS_DOWN ; 
 int KVME_FLAG_GROWS_UP ; 
 int KVME_FLAG_NEEDS_COPY ; 
 int KVME_FLAG_SUPER ; 
 int KVME_FLAG_USER_WIRED ; 
 int KVME_PROT_EXEC ; 
 int KVME_PROT_READ ; 
 int KVME_PROT_WRITE ; 
#define  KVME_TYPE_DEAD 137 
#define  KVME_TYPE_DEFAULT 136 
#define  KVME_TYPE_DEVICE 135 
#define  KVME_TYPE_MGTDEVICE 134 
#define  KVME_TYPE_NONE 133 
#define  KVME_TYPE_PHYS 132 
#define  KVME_TYPE_SG 131 
#define  KVME_TYPE_SWAP 130 
#define  KVME_TYPE_UNKNOWN 129 
#define  KVME_TYPE_VNODE 128 
 int PS_OPT_NOHEADER ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_vmentry*) ; 
 struct kinfo_vmentry* FUNC1 (struct procstat*,struct kinfo_proc*,int*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(struct procstat *procstat, struct kinfo_proc *kipp)
{
	struct kinfo_vmentry *freep, *kve;
	int ptrwidth;
	int i, cnt;
	const char *str, *lstr;

	ptrwidth = 2*sizeof(void *) + 2;
	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC5("{T:/%5s %*s %*s %3s %4s %4s %3s %3s %-5s %-2s %-s}\n",
		    "PID", ptrwidth, "START", ptrwidth, "END", "PRT", "RES",
		    "PRES", "REF", "SHD", "FLAG", "TP", "PATH");

	FUNC5("{ek:process_id/%d}", kipp->ki_pid);

	freep = FUNC1(procstat, kipp, &cnt);
	if (freep == NULL)
		return;
	FUNC8("vm");
	for (i = 0; i < cnt; i++) {
		FUNC7("vm");
		kve = &freep[i];
		FUNC5("{dk:process_id/%5d} ", kipp->ki_pid);
		FUNC5("{d:kve_start/%#*jx} ", ptrwidth,
		    (uintmax_t)kve->kve_start);
		FUNC5("{d:kve_end/%#*jx} ", ptrwidth,
		    (uintmax_t)kve->kve_end);
		FUNC5("{e:kve_start/%#jx}", (uintmax_t)kve->kve_start);
		FUNC5("{e:kve_end/%#jx}", (uintmax_t)kve->kve_end);
		FUNC5("{d:read/%s}", kve->kve_protection & KVME_PROT_READ ?
		    "r" : "-");
		FUNC5("{d:write/%s}", kve->kve_protection & KVME_PROT_WRITE ?
		    "w" : "-");
		FUNC5("{d:exec/%s} ", kve->kve_protection & KVME_PROT_EXEC ?
		    "x" : "-");
		FUNC6("kve_protection");
		FUNC5("{en:read/%s}", kve->kve_protection & KVME_PROT_READ ?
		    "true" : "false");
		FUNC5("{en:write/%s}", kve->kve_protection & KVME_PROT_WRITE ?
		    "true" : "false");
		FUNC5("{en:exec/%s}", kve->kve_protection & KVME_PROT_EXEC ?
		    "true" : "false");
		FUNC2("kve_protection");
		FUNC5("{:kve_resident/%4d/%d} ", kve->kve_resident);
		FUNC5("{:kve_private_resident/%4d/%d} ",
		    kve->kve_private_resident);
		FUNC5("{:kve_ref_count/%3d/%d} ", kve->kve_ref_count);
		FUNC5("{:kve_shadow_count/%3d/%d} ", kve->kve_shadow_count);
		FUNC5("{d:copy_on_write/%-1s}", kve->kve_flags &
		    KVME_FLAG_COW ? "C" : "-");
		FUNC5("{d:need_copy/%-1s}", kve->kve_flags &
		    KVME_FLAG_NEEDS_COPY ? "N" : "-");
		FUNC5("{d:super_pages/%-1s}", kve->kve_flags &
		    KVME_FLAG_SUPER ? "S" : "-");
		FUNC5("{d:grows_down/%-1s}", kve->kve_flags &
		    KVME_FLAG_GROWS_UP ? "U" : kve->kve_flags &
		    KVME_FLAG_GROWS_DOWN ? "D" : "-");
		FUNC5("{d:wired/%-1s} ", kve->kve_flags &
		    KVME_FLAG_USER_WIRED ? "W" : "-");
		FUNC6("kve_flags");
		FUNC5("{en:copy_on_write/%s}", kve->kve_flags &
		    KVME_FLAG_COW ? "true" : "false");
		FUNC5("{en:needs_copy/%s}", kve->kve_flags &
		    KVME_FLAG_NEEDS_COPY ? "true" : "false");
		FUNC5("{en:super_pages/%s}", kve->kve_flags &
		    KVME_FLAG_SUPER ? "true" : "false");
		FUNC5("{en:grows_up/%s}", kve->kve_flags &
		    KVME_FLAG_GROWS_UP ? "true" : "false");
		FUNC5("{en:grows_down/%s}", kve->kve_flags &
		    KVME_FLAG_GROWS_DOWN ? "true" : "false");
		FUNC5("{en:wired/%s}", kve->kve_flags &
		    KVME_FLAG_USER_WIRED ? "true" : "false");
		FUNC2("kve_flags");
		switch (kve->kve_type) {
		case KVME_TYPE_NONE:
			str = "--";
			lstr = "none";
			break;
		case KVME_TYPE_DEFAULT:
			str = "df";
			lstr = "default";
			break;
		case KVME_TYPE_VNODE:
			str = "vn";
			lstr = "vnode";
			break;
		case KVME_TYPE_SWAP:
			str = "sw";
			lstr = "swap";
			break;
		case KVME_TYPE_DEVICE:
			str = "dv";
			lstr = "device";
			break;
		case KVME_TYPE_PHYS:
			str = "ph";
			lstr = "physical";
			break;
		case KVME_TYPE_DEAD:
			str = "dd";
			lstr = "dead";
			break;
		case KVME_TYPE_SG:
			str = "sg";
			lstr = "scatter/gather";
			break;
		case KVME_TYPE_MGTDEVICE:
			str = "md";
			lstr = "managed_device";
			break;
		case KVME_TYPE_UNKNOWN:
		default:
			str = "??";
			lstr = "unknown";
			break;
		}
		FUNC5("{d:kve_type/%-2s} ", str);
		FUNC5("{e:kve_type/%s}", lstr);
		FUNC5("{:kve_path/%-s/%s}\n", kve->kve_path);
		FUNC3("vm");
	}
	FUNC4("vm");
	FUNC0(freep);
}