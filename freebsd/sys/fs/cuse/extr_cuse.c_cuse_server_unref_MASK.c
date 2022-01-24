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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct cuse_server_dev {scalar_t__ refs; int /*<<< orphan*/  cv; TYPE_1__ selinfo; int /*<<< orphan*/  hmem; int /*<<< orphan*/  hdev; } ;
struct cuse_server {scalar_t__ refs; int /*<<< orphan*/  cv; TYPE_1__ selinfo; int /*<<< orphan*/  hmem; int /*<<< orphan*/  hdev; } ;
struct cuse_memory {scalar_t__ refs; int /*<<< orphan*/  cv; TYPE_1__ selinfo; int /*<<< orphan*/  hmem; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CUSE ; 
 struct cuse_server_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cuse_server_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cuse_server_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_server_dev*) ; 
 int /*<<< orphan*/  cuse_server_head ; 
 int /*<<< orphan*/  FUNC5 (struct cuse_server_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cuse_server_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cuse_server_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC10 (struct cuse_server_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC14(struct cuse_server *pcs)
{
	struct cuse_server_dev *pcsd;
	struct cuse_memory *mem;

	FUNC3();
	pcs->refs--;
	if (pcs->refs != 0) {
		FUNC7();
		return;
	}
	FUNC5(pcs);
	/* final client wakeup, if any */
	FUNC6(pcs);

	FUNC1(&cuse_server_head, pcs, entry);

	while ((pcsd = FUNC0(&pcs->hdev)) != NULL) {
		FUNC1(&pcs->hdev, pcsd, entry);
		FUNC7();
		FUNC4(pcsd);
		FUNC3();
	}

	FUNC2(pcs, -1);

	while ((mem = FUNC0(&pcs->hmem)) != NULL) {
		FUNC1(&pcs->hmem, mem, entry);
		FUNC7();
		FUNC8(mem);
		FUNC3();
	}

	FUNC11(&pcs->selinfo.si_note, 1);
	FUNC12(&pcs->selinfo.si_note);

	FUNC7();

	FUNC13(&pcs->selinfo);

	FUNC9(&pcs->cv);

	FUNC10(pcs, M_CUSE);
}