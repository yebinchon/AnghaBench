#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ off_t ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ ERROR_COMMITMENT_LIMIT ; 
 int /*<<< orphan*/  FILE_MAP_COPY ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int,size_t,void*) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  PAGE_WRITECOPY ; 
 int PROT_READ ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (scalar_t__) ; 

void *FUNC9(void *start, size_t length, int prot, int flags, int fd, off_t offset)
{
	HANDLE osfhandle, hmap;
	void *temp;
	LARGE_INTEGER len;
	uint64_t o = offset;
	uint32_t l = o & 0xFFFFFFFF;
	uint32_t h = (o >> 32) & 0xFFFFFFFF;

	osfhandle = (HANDLE)FUNC5(fd);
	if (!FUNC2(osfhandle, &len))
		FUNC6("mmap: could not determine filesize");

	if ((length + offset) > len.QuadPart)
		length = FUNC8(len.QuadPart - offset);

	if (!(flags & MAP_PRIVATE))
		FUNC6("Invalid usage of mmap when built with USE_WIN32_MMAP");

	hmap = FUNC1(osfhandle, NULL,
		prot == PROT_READ ? PAGE_READONLY : PAGE_WRITECOPY, 0, 0, NULL);

	if (!hmap) {
		errno = EINVAL;
		return MAP_FAILED;
	}

	temp = FUNC4(hmap, prot == PROT_READ ?
			FILE_MAP_READ : FILE_MAP_COPY, h, l, length, start);

	if (!FUNC0(hmap))
		FUNC7("unable to close file mapping handle");

	if (temp)
		return temp;

	errno = FUNC3() == ERROR_COMMITMENT_LIMIT ? EFBIG : EINVAL;
	return MAP_FAILED;
}