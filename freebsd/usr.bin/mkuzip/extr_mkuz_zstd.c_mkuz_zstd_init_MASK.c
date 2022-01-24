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
typedef  void ZSTD_CCtx ;

/* Variables and functions */
 int USE_DEFAULT_LEVEL ; 
 size_t FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 void* FUNC1 () ; 
 int FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

void *
FUNC7(int *comp_level)
{
	ZSTD_CCtx *cctx;
	size_t rc;

	/* Default chosen for near-parity with mkuzip zlib default. */
	if (*comp_level == USE_DEFAULT_LEVEL)
		*comp_level = 9;
	if (*comp_level < FUNC5() || *comp_level == 0 ||
	    *comp_level > FUNC4())
		FUNC6(1, "provided compression level %d is invalid",
		    *comp_level);

	cctx = FUNC1();
	if (cctx == NULL)
		FUNC6(1, "could not allocate Zstd context");

	rc = FUNC0(cctx, ZSTD_c_compressionLevel,
	    *comp_level);
	if (FUNC3(rc))
		FUNC6(1, "Could not set zstd compression level %d: %s",
		    *comp_level, FUNC2(rc));

	rc = FUNC0(cctx, ZSTD_c_checksumFlag, 1);
	if (FUNC3(rc))
		FUNC6(1, "Could not enable zstd checksum: %s",
		    FUNC2(rc));

	return (cctx);
}