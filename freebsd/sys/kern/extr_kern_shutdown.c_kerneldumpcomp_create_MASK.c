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
typedef  int uint8_t ;
struct kerneldumpcomp {int kdc_format; void* kdc_buf; int /*<<< orphan*/ * kdc_stream; } ;
struct dumperinfo {int maxiosize; } ;

/* Variables and functions */
 int COMPRESS_GZIP ; 
 int COMPRESS_ZSTD ; 
#define  KERNELDUMP_COMP_GZIP 129 
#define  KERNELDUMP_COMP_ZSTD 128 
 int /*<<< orphan*/  M_DUMPER ; 
 int M_NODUMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct dumperinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kerneldumpcomp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kerneldump_gzlevel ; 
 int /*<<< orphan*/  kerneldumpcomp_write_cb ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct kerneldumpcomp *
FUNC3(struct dumperinfo *di, uint8_t compression)
{
	struct kerneldumpcomp *kdcomp;
	int format;

	switch (compression) {
	case KERNELDUMP_COMP_GZIP:
		format = COMPRESS_GZIP;
		break;
	case KERNELDUMP_COMP_ZSTD:
		format = COMPRESS_ZSTD;
		break;
	default:
		return (NULL);
	}

	kdcomp = FUNC2(sizeof(*kdcomp), M_DUMPER, M_WAITOK | M_ZERO);
	kdcomp->kdc_format = compression;
	kdcomp->kdc_stream = FUNC0(kerneldumpcomp_write_cb,
	    format, di->maxiosize, kerneldump_gzlevel, di);
	if (kdcomp->kdc_stream == NULL) {
		FUNC1(kdcomp, M_DUMPER);
		return (NULL);
	}
	kdcomp->kdc_buf = FUNC2(di->maxiosize, M_DUMPER, M_WAITOK | M_NODUMP);
	return (kdcomp);
}