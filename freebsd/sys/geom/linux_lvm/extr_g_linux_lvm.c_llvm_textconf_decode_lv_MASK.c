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
struct g_llvm_vg {int /*<<< orphan*/  vg_lvs; } ;
struct g_llvm_segment {scalar_t__ lv_sgcount; scalar_t__ lv_numsegs; int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  lv_uuid; int /*<<< orphan*/  lv_name; void* lv_firstsg; struct g_llvm_vg* lv_vg; } ;
struct g_llvm_lv {scalar_t__ lv_sgcount; scalar_t__ lv_numsegs; int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  lv_uuid; int /*<<< orphan*/  lv_name; void* lv_firstsg; struct g_llvm_vg* lv_vg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct g_llvm_segment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_llvm_segment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GLLVM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_llvm_segment*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char**,char*,struct g_llvm_segment*) ; 
 int /*<<< orphan*/  lv_next ; 
 struct g_llvm_segment* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sg_next ; 
 char* FUNC12 (char**,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

__attribute__((used)) static int
FUNC14(char **buf, char *tok, struct g_llvm_vg *vg)
{
	struct g_llvm_lv	*lv;
	struct g_llvm_segment *sg;
	char *v;
	size_t len;

	if (*buf == NULL || **buf == '\0')
		return (EINVAL);

	lv = FUNC11(sizeof(*lv), M_GLLVM, M_NOWAIT|M_ZERO);
	if (lv == NULL)
		return (ENOMEM);

	lv->lv_vg = vg;
	FUNC4(&lv->lv_segs);

	if (tok == NULL)
		goto bad;
	len = FUNC9(lv->lv_name, tok);
	if (len == 0)
		goto bad;

	while ((tok = FUNC12(buf, "\n")) != NULL) {
		if (FUNC13(tok, "{")) {
			if (FUNC13(tok, "segment")) {
				FUNC10(buf, tok, lv);
				continue;
			} else
				/* unexpected section */
				goto bad;
		}

		if (FUNC13(tok, "}"))
			break;

		/* parse 'key = value' lines */
		if (FUNC13(tok, "=")) {
			FUNC7(v, tok, "=");
			FUNC1("id", v, tok, lv->lv_uuid, sizeof(lv->lv_uuid));
			FUNC0("segment_count", v, tok, lv->lv_sgcount);
			continue;
		}
	}
	if (tok == NULL)
		goto bad;
	if (lv->lv_sgcount == 0 || lv->lv_sgcount != lv->lv_numsegs)
		/* zero or incomplete segment list */
		goto bad;

	/* Optimize for only one segment on the pv */
	lv->lv_firstsg = FUNC3(&lv->lv_segs);
	FUNC5(&vg->vg_lvs, lv, lv_next);
	FUNC2(3, "lv: name=%s uuid=%s", lv->lv_name, lv->lv_uuid);

	return (0);
bad:
	while ((sg = FUNC3(&lv->lv_segs)) != NULL) {
		FUNC6(sg, sg_next);
		FUNC8(sg, M_GLLVM);
	}
	FUNC8(lv, M_GLLVM);
	return (-1);
}