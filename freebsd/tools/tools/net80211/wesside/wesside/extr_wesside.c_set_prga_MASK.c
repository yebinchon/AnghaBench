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
struct TYPE_2__ {int len; unsigned char* prga; unsigned char* iv; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PRGA_FILE ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ prgainfo ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,unsigned char,unsigned char,unsigned char) ; 
 int FUNC10 (int,unsigned char*,int) ; 

void FUNC11(unsigned char* iv, unsigned char* cipher, 
	      unsigned char* clear, int len) {

	int i;
	int fd;

	if (prgainfo.len != 0)
		FUNC2(prgainfo.prga);
	
	prgainfo.prga = (unsigned char*) FUNC4(len);
	if (!prgainfo.prga) {
		FUNC7("malloc()");
		FUNC1(1);
	}

	prgainfo.len = len;
	FUNC5(prgainfo.iv, iv, 3);
	
	for (i = 0; i < len; i++) {
		prgainfo.prga[i] =  ( cipher ? (clear[i] ^ cipher[i]) :
				 	        clear[i]);
	}	

	FUNC9("Got %d bytes of prga IV=(%.02x:%.02x:%.02x) PRGA=", 
	       prgainfo.len, prgainfo.iv[0], prgainfo.iv[1], prgainfo.iv[2]);
	FUNC3(prgainfo.prga, prgainfo.len);

	if (!cipher)
		return;

	fd = FUNC6(PRGA_FILE, O_WRONLY | O_CREAT, 
		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);

	if (fd == -1) {
		FUNC7("open()");
		FUNC1(1);
	}

	i = FUNC10(fd, prgainfo.iv, 3);
	if (i == -1) {
		FUNC7("write()");
		FUNC1(1);
	}
	if (i != 3) {
		FUNC8("Wrote %d out of %d\n", i, 3);
		FUNC1(1);
	}

	i = FUNC10(fd, prgainfo.prga, prgainfo.len);
	if (i == -1) {
		FUNC7("write()");
		FUNC1(1);
	}
	if (i != prgainfo.len) {
		FUNC8("Wrote %d out of %d\n", i, prgainfo.len);
		FUNC1(1);
	}

	FUNC0(fd);
}