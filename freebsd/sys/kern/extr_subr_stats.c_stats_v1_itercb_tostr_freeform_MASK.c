#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct voistat {size_t stype; size_t dtype; int /*<<< orphan*/  dsz; int /*<<< orphan*/  data_off; int /*<<< orphan*/  flags; int /*<<< orphan*/  errs; } ;
struct voi {size_t id; size_t dtype; int /*<<< orphan*/  stats_off; int /*<<< orphan*/  voistatmaxid; int /*<<< orphan*/  flags; } ;
struct statsblobv1 {int /*<<< orphan*/  tplhash; int /*<<< orphan*/  statsdata_off; int /*<<< orphan*/  stats_off; int /*<<< orphan*/  flags; int /*<<< orphan*/  lastrst; int /*<<< orphan*/  created; int /*<<< orphan*/  cursz; int /*<<< orphan*/  maxsz; int /*<<< orphan*/  endian; int /*<<< orphan*/  abi; } ;
struct sbuf {int dummy; } ;
struct sb_tostrcb_ctx {int flags; int /*<<< orphan*/  fmt; TYPE_1__* tpl; struct sbuf* buf; } ;
struct sb_iter_ctx {int flags; int /*<<< orphan*/  vsslot; int /*<<< orphan*/  vslot; struct sb_tostrcb_ctx* usrctx; } ;
struct metablob {TYPE_2__* voi_meta; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {struct metablob* mb; } ;

/* Variables and functions */
 void* FUNC0 (struct statsblobv1*,int /*<<< orphan*/ ) ; 
 int SB_IT_FIRST_CB ; 
 int SB_IT_FIRST_VOISTAT ; 
 int SB_TOSTR_OBJDUMP ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sbuf*,int) ; 
 int /*<<< orphan*/ * vs_stype2name ; 
 int /*<<< orphan*/ * vsd_dtype2name ; 

__attribute__((used)) static void
FUNC3(struct statsblobv1 *sb, struct voi *v,
    struct voistat *vs, struct sb_iter_ctx *ctx)
{
	struct sb_tostrcb_ctx *sctx;
	struct metablob *tpl_mb;
	struct sbuf *buf;
	void *vsd;
	uint8_t dump;

	sctx = ctx->usrctx;
	buf = sctx->buf;
	tpl_mb = sctx->tpl ? sctx->tpl->mb : NULL;
	dump = ((sctx->flags & SB_TOSTR_OBJDUMP) != 0);

	if (ctx->flags & SB_IT_FIRST_CB) {
		FUNC1(buf, "struct statsblobv1@%p", sb);
		if (dump) {
			FUNC1(buf, ", abi=%hhu, endian=%hhu, maxsz=%hu, "
			    "cursz=%hu, created=%jd, lastrst=%jd, flags=0x%04hx, "
			    "stats_off=%hu, statsdata_off=%hu",
			    sb->abi, sb->endian, sb->maxsz, sb->cursz,
			    sb->created, sb->lastrst, sb->flags, sb->stats_off,
			    sb->statsdata_off);
		}
		FUNC1(buf, ", tplhash=%u", sb->tplhash);
	}

	if (ctx->flags & SB_IT_FIRST_VOISTAT) {
		FUNC1(buf, "\n\tvois[%hd]: id=%hd", ctx->vslot, v->id);
		if (v->id < 0)
			return;
		FUNC1(buf, ", name=\"%s\"", (tpl_mb == NULL) ? "" :
		    tpl_mb->voi_meta[v->id].name);
		if (dump)
		    FUNC1(buf, ", flags=0x%04hx, dtype=%s, "
		    "voistatmaxid=%hhd, stats_off=%hu", v->flags,
		    vsd_dtype2name[v->dtype], v->voistatmaxid, v->stats_off);
	}

	if (!dump && vs->stype <= 0)
		return;

	FUNC1(buf, "\n\t\tvois[%hd]stat[%hhd]: stype=", v->id, ctx->vsslot);
	if (vs->stype < 0) {
		FUNC1(buf, "%hhd", vs->stype);
		return;
	} else
		FUNC1(buf, "%s, errs=%hu", vs_stype2name[vs->stype],
		    vs->errs);
	vsd = FUNC0(sb, vs->data_off);
	if (dump)
		FUNC1(buf, ", flags=0x%04x, dtype=%s, dsz=%hu, "
		    "data_off=%hu", vs->flags, vsd_dtype2name[vs->dtype],
		    vs->dsz, vs->data_off);

	FUNC1(buf, "\n\t\t\tvoistatdata: ");
	FUNC2(vsd, v->dtype, vs->dtype, vs->dsz,
	    sctx->fmt, buf, dump);
}