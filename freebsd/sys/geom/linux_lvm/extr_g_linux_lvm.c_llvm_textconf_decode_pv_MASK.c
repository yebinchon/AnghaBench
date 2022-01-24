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
struct g_llvm_vg {int /*<<< orphan*/  vg_pvs; } ;
struct g_llvm_pv {scalar_t__ pv_start; scalar_t__ pv_count; int /*<<< orphan*/  pv_uuid; int /*<<< orphan*/  pv_name; struct g_llvm_vg* pv_vg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct g_llvm_pv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GLLVM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_llvm_pv*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct g_llvm_pv* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pv_next ; 
 char* FUNC8 (char**,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(char **buf, char *tok, struct g_llvm_vg *vg)
{
	struct g_llvm_pv	*pv;
	char *v;
	size_t len;

	if (*buf == NULL || **buf == '\0')
		return (EINVAL);

	pv = FUNC7(sizeof(*pv), M_GLLVM, M_NOWAIT|M_ZERO);
	if (pv == NULL)
		return (ENOMEM);

	pv->pv_vg = vg;
	len = 0;
	if (tok == NULL)
		goto bad;
	len = FUNC6(pv->pv_name, tok);
	if (len == 0)
		goto bad;

	while ((tok = FUNC8(buf, "\n")) != NULL) {
		if (FUNC9(tok, "{"))
			goto bad;

		if (FUNC9(tok, "}"))
			break;

		/* parse 'key = value' lines */
		if (FUNC9(tok, "=")) {
			FUNC4(v, tok, "=");
			FUNC1("id", v, tok, pv->pv_uuid, sizeof(pv->pv_uuid));
			FUNC0("pe_start", v, tok, pv->pv_start);
			FUNC0("pe_count", v, tok, pv->pv_count);
			continue;
		}
	}
	if (tok == NULL)
		goto bad;
	/* basic checking */
	if (pv->pv_count == 0)
		goto bad;

	FUNC3(&vg->vg_pvs, pv, pv_next);
	FUNC2(3, "pv: name=%s uuid=%s", pv->pv_name, pv->pv_uuid);

	return (0);
bad:
	FUNC5(pv, M_GLLVM);
	return (-1);
}