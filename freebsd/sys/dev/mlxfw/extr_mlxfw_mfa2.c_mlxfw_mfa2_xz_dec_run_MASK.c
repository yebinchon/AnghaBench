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
struct xz_dec {int dummy; } ;
struct xz_buf {int dummy; } ;
typedef  enum xz_ret { ____Placeholder_xz_ret } xz_ret ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  XZ_DATA_ERROR 134 
#define  XZ_FORMAT_ERROR 133 
#define  XZ_MEMLIMIT_ERROR 132 
#define  XZ_MEM_ERROR 131 
#define  XZ_OK 130 
#define  XZ_OPTIONS_ERROR 129 
#define  XZ_STREAM_END 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct xz_dec*,struct xz_buf*) ; 

__attribute__((used)) static int FUNC2(struct xz_dec *xz_dec, struct xz_buf *xz_buf,
				 bool *finished)
{
	enum xz_ret xz_ret;

	xz_ret = FUNC1(xz_dec, xz_buf);

	switch (xz_ret) {
	case XZ_STREAM_END:
		*finished = true;
		return 0;
	case XZ_OK:
		*finished = false;
		return 0;
	case XZ_MEM_ERROR:
		FUNC0("xz no memory\n");
		return -ENOMEM;
	case XZ_DATA_ERROR:
		FUNC0("xz file corrupted\n");
		return -EINVAL;
	case XZ_FORMAT_ERROR:
		FUNC0("xz format not found\n");
		return -EINVAL;
	case XZ_OPTIONS_ERROR:
		FUNC0("unsupported xz option\n");
		return -EINVAL;
	case XZ_MEMLIMIT_ERROR:
		FUNC0("xz dictionary too small\n");
		return -EINVAL;
	default:
		FUNC0("xz error %d\n", xz_ret);
		return -EINVAL;
	}
}