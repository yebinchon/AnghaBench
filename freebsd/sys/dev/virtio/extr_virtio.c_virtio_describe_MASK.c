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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct virtio_feature_desc {int dummy; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int VIRTIO_F_BAD_FEATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 scalar_t__ FUNC6 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*,char*,char const*,...) ; 
 char* FUNC10 (int,struct virtio_feature_desc*) ; 

void
FUNC11(device_t dev, const char *msg,
    uint64_t features, struct virtio_feature_desc *desc)
{
	struct sbuf sb;
	uint64_t val;
	char *buf;
	const char *name;
	int n;

	if ((buf = FUNC2(512, M_TEMP, M_NOWAIT)) == NULL) {
		FUNC0(dev, "%s features: %#jx\n", msg, (uintmax_t) features);
		return;
	}

	FUNC7(&sb, buf, 512, SBUF_FIXEDLEN);
	FUNC9(&sb, "%s features: %#jx", msg, (uintmax_t) features);

	for (n = 0, val = 1ULL << 63; val != 0; val >>= 1) {
		/*
		 * BAD_FEATURE is used to detect broken Linux clients
		 * and therefore is not applicable to FreeBSD.
		 */
		if (((features & val) == 0) || val == VIRTIO_F_BAD_FEATURE)
			continue;

		if (n++ == 0)
			FUNC3(&sb, " <");
		else
			FUNC3(&sb, ",");

		name = FUNC10(val, desc);
		if (name == NULL)
			FUNC9(&sb, "%#jx", (uintmax_t) val);
		else
			FUNC3(&sb, name);
	}

	if (n > 0)
		FUNC3(&sb, ">");

#if __FreeBSD_version < 900020
	FUNC6(&sb);
	if (FUNC8(&sb) == 0)
#else
	if (sbuf_finish(&sb) == 0)
#endif
		FUNC0(dev, "%s\n", FUNC4(&sb));

	FUNC5(&sb);
	FUNC1(buf, M_TEMP);
}