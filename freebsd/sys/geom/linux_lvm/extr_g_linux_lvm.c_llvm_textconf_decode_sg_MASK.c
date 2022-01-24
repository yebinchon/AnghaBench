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
struct g_llvm_segment {int sg_start; int sg_count; int sg_end; int /*<<< orphan*/  sg_pvstart; int /*<<< orphan*/  sg_pvname; } ;
struct g_llvm_lv {int lv_extentcount; int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  lv_numsegs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct g_llvm_segment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GLLVM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_llvm_segment*,int /*<<< orphan*/ ) ; 
 struct g_llvm_segment* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sg_next ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC7 (char**,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC10(char **buf, char *tok, struct g_llvm_lv *lv)
{
	struct g_llvm_segment *sg;
	char *v;
	int count = 0;

	if (*buf == NULL || **buf == '\0')
		return (EINVAL);

	sg = FUNC4(sizeof(*sg), M_GLLVM, M_NOWAIT|M_ZERO);
	if (sg == NULL)
		return (ENOMEM);

	while ((tok = FUNC7(buf, "\n")) != NULL) {
		/* only a single linear stripe is supported */
		if (FUNC8(tok, "stripe_count")) {
			FUNC2(v, tok, "=");
			FUNC0("stripe_count", v, tok, count);
			if (count != 1)
				goto bad;
		}

		if (FUNC8(tok, "{"))
			goto bad;

		if (FUNC8(tok, "}"))
			break;

		if (FUNC5(tok, "stripes = [") == 0) {
			tok = FUNC7(buf, "\n");
			if (tok == NULL)
				goto bad;

			FUNC7(&tok, "\"");
			if (tok == NULL)
				goto bad;	/* missing open quotes */
			v = FUNC7(&tok, "\"");
			if (tok == NULL)
				goto bad;	/* missing close quotes */
			FUNC6(sg->sg_pvname, v, sizeof(sg->sg_pvname));
			if (*tok != ',')
				goto bad;	/* missing comma for stripe */
			tok++;

			sg->sg_pvstart = FUNC9(tok, &v, 10);
			if (v == tok)
				/* strtol did not eat any of the buffer */
				goto bad;

			continue;
		}

		/* parse 'key = value' lines */
		if (FUNC8(tok, "=")) {
			FUNC2(v, tok, "=");
			FUNC0("start_extent", v, tok, sg->sg_start);
			FUNC0("extent_count", v, tok, sg->sg_count);
			continue;
		}
	}
	if (tok == NULL)
		goto bad;
	/* basic checking */
	if (count != 1 || sg->sg_count == 0)
		goto bad;

	sg->sg_end = sg->sg_start + sg->sg_count - 1;
	lv->lv_numsegs++;
	lv->lv_extentcount += sg->sg_count;
	FUNC1(&lv->lv_segs, sg, sg_next);

	return (0);
bad:
	FUNC3(sg, M_GLLVM);
	return (-1);
}