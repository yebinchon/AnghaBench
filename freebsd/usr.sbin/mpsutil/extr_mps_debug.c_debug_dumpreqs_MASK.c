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
typedef  int /*<<< orphan*/  sysctlbuf ;
struct mps_dumpreq_hdr {int numframes; int smid; int state; int deschi; int desclo; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t MPS_FRAME_LEN ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char*) ; 
 scalar_t__ is_mps ; 
 char* FUNC1 (size_t) ; 
 int mps_unit ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int) ; 
 int FUNC5 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int ac, char **av)
{
	struct mps_dumpreq_hdr *hdr;
	char *buf, sysctlbuf[128];
	size_t len;
	int numframes, error, offset;

	len = 0;
	buf = NULL;
	FUNC4(sysctlbuf, sizeof(sysctlbuf), "dev.%s.%d.dump_reqs",
	    is_mps ? "mps" : "mpr", mps_unit);

	error = FUNC5(sysctlbuf, NULL, &len, NULL, 0);
	if (error)
		return (error);

	if (len == 0)
		return (0);

	buf = FUNC1(len);
	if (buf == NULL)
		return (ENOMEM);

	error = FUNC5(sysctlbuf, buf, &len, NULL, 0);
	if (error) {
		FUNC3("len= %zd, error= %d errno= %d\n", len, error, errno);
		return (error);
	}

	while (len >= MPS_FRAME_LEN) {
		hdr = (struct mps_dumpreq_hdr *)buf;
		numframes = hdr->numframes;

		FUNC3("SMID= %d state= %#x numframes= %d desc.hi= %#08x "
		    "desc.lo= %#08x\n", hdr->smid, hdr->state,
		    hdr->numframes, hdr->deschi, hdr->desclo);

		buf += sizeof(struct mps_dumpreq_hdr);
		len -= sizeof(struct mps_dumpreq_hdr);

		if ((offset = FUNC0(buf)) != -1)
			FUNC2(buf, offset, numframes);

		buf += MPS_FRAME_LEN * numframes;
		len -= MPS_FRAME_LEN * numframes;
	}

	return (error);
}