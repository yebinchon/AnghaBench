#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uintmax_t ;
typedef  size_t uint16_t ;
struct voistatdata_numeric {int dummy; } ;
struct voistatdata_hist {int dummy; } ;
struct voistatdata {int dummy; } ;
struct sbuf {int dummy; } ;
typedef  enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;
typedef  enum sb_str_fmt { ____Placeholder_sb_str_fmt } sb_str_fmt ;
struct TYPE_2__ {int /*<<< orphan*/  cnt; int /*<<< orphan*/  val; int /*<<< orphan*/  ub; int /*<<< orphan*/  lb; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t LIM_MAX ; 
#define  SB_STRFMT_FREEFORM 135 
#define  SB_STRFMT_JSON 134 
 struct voistatdata_numeric* FUNC1 (struct voistatdata_hist const*,int,int /*<<< orphan*/ ) ; 
 struct voistatdata_numeric* FUNC2 (struct voistatdata_hist const*,int,int /*<<< orphan*/ ) ; 
 struct voistatdata_numeric* FUNC3 (struct voistatdata_hist const*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct voistatdata_hist const*,int,int /*<<< orphan*/ ) ; 
#define  VSD_DTYPE_CRHIST32 133 
#define  VSD_DTYPE_CRHIST64 132 
#define  VSD_DTYPE_DRHIST32 131 
#define  VSD_DTYPE_DRHIST64 130 
#define  VSD_DTYPE_DVHIST32 129 
#define  VSD_DTYPE_DVHIST64 128 
 TYPE_1__* bkts ; 
 int /*<<< orphan*/  crhist32 ; 
 int /*<<< orphan*/  crhist64 ; 
 int /*<<< orphan*/  drhist32 ; 
 int /*<<< orphan*/  drhist64 ; 
 int /*<<< orphan*/  dvhist32 ; 
 int /*<<< orphan*/  dvhist64 ; 
 struct voistatdata_numeric** numeric_limits ; 
 int /*<<< orphan*/  oob ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct voistatdata const*,int,int,int,int,struct sbuf*,int) ; 

__attribute__((used)) static inline void
FUNC9(enum vsd_dtype voi_dtype,
    const struct voistatdata_hist *hist, enum vsd_dtype hist_dtype,
    size_t hist_dsz, enum sb_str_fmt fmt, struct sbuf *buf, int objdump)
{
	const struct voistatdata_numeric *bkt_lb, *bkt_ub;
	const char *fmtstr;
	int is32bit;
	uint16_t i, nbkts;

	switch (hist_dtype) {
	case VSD_DTYPE_CRHIST32:
		nbkts = FUNC0(crhist32, hist_dsz);
		is32bit = 1;
		break;
	case VSD_DTYPE_DRHIST32:
		nbkts = FUNC0(drhist32, hist_dsz);
		is32bit = 1;
		break;
	case VSD_DTYPE_DVHIST32:
		nbkts = FUNC0(dvhist32, hist_dsz);
		is32bit = 1;
		break;
	case VSD_DTYPE_CRHIST64:
		nbkts = FUNC0(crhist64, hist_dsz);
		is32bit = 0;
		break;
	case VSD_DTYPE_DRHIST64:
		nbkts = FUNC0(drhist64, hist_dsz);
		is32bit = 0;
		break;
	case VSD_DTYPE_DVHIST64:
		nbkts = FUNC0(dvhist64, hist_dsz);
		is32bit = 0;
		break;
	default:
		return;
	}

	switch (fmt) {
	case SB_STRFMT_FREEFORM:
		fmtstr = "nbkts=%hu, ";
		break;
	case SB_STRFMT_JSON:
	default:
		fmtstr = "\"nbkts\":%hu,";
		break;
	}
	FUNC6(buf, fmtstr, nbkts);

	switch (fmt) {
		case SB_STRFMT_FREEFORM:
			fmtstr = (is32bit ? "oob=%u" : "oob=%ju");
			break;
		case SB_STRFMT_JSON:
		default:
			fmtstr = (is32bit ? "\"oob\":%u,\"bkts\":[" :
			    "\"oob\":%ju,\"bkts\":[");
			break;
	}
	FUNC6(buf, fmtstr, is32bit ? FUNC4(hist,
	    hist_dtype, oob) : (uintmax_t)FUNC4(hist,
	    hist_dtype, oob));

	for (i = 0; i < nbkts; i++) {
		switch (hist_dtype) {
		case VSD_DTYPE_CRHIST32:
		case VSD_DTYPE_CRHIST64:
			bkt_lb = FUNC1(hist, hist_dtype,
			    bkts[i].lb);
			if (i < nbkts - 1)
				bkt_ub = FUNC1(hist,
				    hist_dtype, bkts[i + 1].lb);
			else
				bkt_ub = &numeric_limits[LIM_MAX][voi_dtype];
			break;
		case VSD_DTYPE_DRHIST32:
		case VSD_DTYPE_DRHIST64:
			bkt_lb = FUNC2(hist, hist_dtype,
			    bkts[i].lb);
			bkt_ub = FUNC2(hist, hist_dtype,
			    bkts[i].ub);
			break;
		case VSD_DTYPE_DVHIST32:
		case VSD_DTYPE_DVHIST64:
			bkt_lb = bkt_ub = FUNC3(hist,
			    hist_dtype, bkts[i].val);
			break;
		default:
			break;
		}

		switch (fmt) {
		case SB_STRFMT_FREEFORM:
			fmtstr = "\n\t\t\t\t";
			break;
		case SB_STRFMT_JSON:
		default:
			fmtstr = "{";
			break;
		}
		FUNC5(buf, fmtstr);

		if (objdump) {
			switch (fmt) {
			case SB_STRFMT_FREEFORM:
				fmtstr = "bkt[%hu].";
				break;
			case SB_STRFMT_JSON:
			default:
				fmtstr = "\"bkt\":%hu,";
				break;
			}
			FUNC6(buf, fmtstr, i);
		}

		switch (fmt) {
		case SB_STRFMT_FREEFORM:
			fmtstr = "{lb=";
			break;
		case SB_STRFMT_JSON:
		default:
			fmtstr = "\"lb\":";
			break;
		}
		FUNC5(buf, fmtstr);
		FUNC8((const struct voistatdata *)bkt_lb,
		    voi_dtype, voi_dtype, sizeof(struct voistatdata_numeric),
		    fmt, buf, objdump);

		switch (fmt) {
		case SB_STRFMT_FREEFORM:
			fmtstr = ",ub=";
			break;
		case SB_STRFMT_JSON:
		default:
			fmtstr = ",\"ub\":";
			break;
		}
		FUNC5(buf, fmtstr);
		FUNC8((const struct voistatdata *)bkt_ub,
		    voi_dtype, voi_dtype, sizeof(struct voistatdata_numeric),
		    fmt, buf, objdump);

		switch (fmt) {
		case SB_STRFMT_FREEFORM:
			fmtstr = is32bit ? ",cnt=%u}" : ",cnt=%ju}";
			break;
		case SB_STRFMT_JSON:
		default:
			fmtstr = is32bit ? ",\"cnt\":%u}" : ",\"cnt\":%ju}";
			break;
		}
		FUNC6(buf, fmtstr, is32bit ?
		    FUNC4(hist, hist_dtype, bkts[i].cnt) :
		    (uintmax_t)FUNC4(hist, hist_dtype,
		    bkts[i].cnt));

		if (fmt == SB_STRFMT_JSON && i < nbkts - 1)
			FUNC7(buf, ',');
	}
	if (fmt == SB_STRFMT_JSON)
		FUNC5(buf, "]");
}