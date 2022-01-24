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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  temp ;
struct header_32 {int hdrlen; int align; void* datalen; void* caplen; void* ts_usec; void* ts_sec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct bpf_hdr {int bh_caplen; int bh_datalen; int bh_hdrlen; TYPE_1__ bh_tstamp; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct header_32*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(uint8_t *data, const int datalen)
{
	struct header_32 temp;
	uint8_t *ptr;
	uint8_t *next;
	uint32_t hdrlen;
	uint32_t caplen;

	for (ptr = data; ptr < (data + datalen); ptr = next) {

		const struct bpf_hdr *hdr;

		hdr = (const struct bpf_hdr *)ptr;

		temp.ts_sec = FUNC2(hdr->bh_tstamp.tv_sec);
		temp.ts_usec = FUNC2(hdr->bh_tstamp.tv_usec);
		temp.caplen = FUNC2(hdr->bh_caplen);
		temp.datalen = FUNC2(hdr->bh_datalen);
		temp.hdrlen = hdr->bh_hdrlen;
		temp.align = FUNC0(1);

		hdrlen = hdr->bh_hdrlen;
		caplen = hdr->bh_caplen;

		if ((hdrlen >= sizeof(temp)) && (hdrlen <= 255) &&
		    ((ptr + hdrlen) <= (data + datalen))) {
			FUNC3(ptr, &temp, sizeof(temp));
			FUNC4(ptr + sizeof(temp), 0, hdrlen - sizeof(temp));
		} else {
			FUNC1(EXIT_FAILURE, "Invalid header length %d", hdrlen);
		}

		next = ptr + FUNC0(hdrlen + caplen);

		if (next <= ptr)
			FUNC1(EXIT_FAILURE, "Invalid length");
	}
}