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
struct g_uzip_zstd {int /*<<< orphan*/  guz_dctx; } ;
struct g_uzip_dapi {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  ZSTD_reset_session_and_parameters ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 struct g_uzip_zstd* FUNC4 (struct g_uzip_dapi*) ; 

__attribute__((used)) static int
FUNC5(struct g_uzip_dapi *zpp, const char *gp_name)
{
	struct g_uzip_zstd *sc;
	size_t rc;

	sc = FUNC4(zpp);
	rc = FUNC0(sc->guz_dctx, ZSTD_reset_session_and_parameters);
	if (FUNC2(rc)) {
		FUNC3("%s: UZIP(zstd) rewind failed: %s\n", gp_name,
		    FUNC1(rc));
		return (EIO);
	}
	return (0);
}