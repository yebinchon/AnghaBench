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
struct sysctl_req {size_t oldidx; int /*<<< orphan*/ * oldptr; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  g_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 size_t PAGE_SIZE ; 
 int SBUF_AUTOEXTEND ; 
 int SBUF_FIXEDLEN ; 
 int SBUF_INCLUDENUL ; 
 int FUNC0 (struct sysctl_req*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sbuf_count_drain ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 size_t FUNC4 (struct sbuf*) ; 
 struct sbuf* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC7(struct sysctl_req *req, g_event_t *func, size_t *hint)
{
	size_t len = 0;
	int error = 0;
	struct sbuf *sb;

	if (req->oldptr == NULL) {
		sb = FUNC5(NULL, NULL, PAGE_SIZE, SBUF_FIXEDLEN |
		    SBUF_INCLUDENUL);
		FUNC6(sb, sbuf_count_drain, &len);
		FUNC1(func, sb, M_WAITOK, NULL);
		req->oldidx = *hint = len;
	} else {
		sb = FUNC5(NULL, NULL, *hint, SBUF_AUTOEXTEND |
		    SBUF_INCLUDENUL);
		FUNC1(func, sb, M_WAITOK, NULL);
		*hint = FUNC4(sb);
		error = FUNC0(req, FUNC2(sb), FUNC4(sb));
	}
	FUNC3(sb);
	return error;
}