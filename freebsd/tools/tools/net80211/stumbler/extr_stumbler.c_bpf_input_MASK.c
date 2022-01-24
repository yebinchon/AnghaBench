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
struct bpf_hdr {int bh_hdrlen; int bh_caplen; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bpf_s ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 

void FUNC4() {
	static unsigned char buf[4096];
	int rd;
	struct bpf_hdr* bpfh;
	unsigned char* data;

	rd = FUNC3(bpf_s, buf, sizeof(buf));
	if (rd == -1)
		FUNC1(1,"read()");
	
	bpfh = (struct bpf_hdr*) buf;
	rd -= bpfh->bh_hdrlen;

	if (rd != bpfh->bh_caplen) {
		FUNC0( rd > bpfh->bh_caplen);
		rd = bpfh->bh_caplen;
	}

	data = (unsigned char*) bpfh + bpfh->bh_hdrlen;
	FUNC2(data, rd);
}