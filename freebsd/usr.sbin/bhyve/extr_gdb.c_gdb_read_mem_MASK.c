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
typedef  int const uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  cur_vcpu ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int* FUNC5 (int const*,char,size_t) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int,size_t) ; 
 void* FUNC7 (int const*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(const uint8_t *data, size_t len)
{
	uint64_t gpa, gva, val;
	uint8_t *cp;
	size_t resid, todo, bytes;
	bool started;
	int error;

	/* Skip 'm' */
	data += 1;
	len -= 1;

	/* Parse and consume address. */
	cp = FUNC5(data, ',', len);
	if (cp == NULL || cp == data) {
		FUNC9(EINVAL);
		return;
	}
	gva = FUNC7(data, cp - data);
	len -= (cp - data) + 1;
	data += (cp - data) + 1;

	/* Parse length. */
	resid = FUNC7(data, len);

	started = false;
	while (resid > 0) {
		error = FUNC4(cur_vcpu, gva, &gpa);
		if (error == -1) {
			if (started)
				FUNC2();
			else
				FUNC9(errno);
			return;
		}
		if (error == 0) {
			if (started)
				FUNC2();
			else
				FUNC9(EFAULT);
			return;
		}

		/* Read bytes from current page. */
		todo = FUNC3() - gpa % FUNC3();
		if (todo > resid)
			todo = resid;

		cp = FUNC6(ctx, gpa, todo);
		if (cp != NULL) {
			/*
			 * If this page is guest RAM, read it a byte
			 * at a time.
			 */
			if (!started) {
				FUNC10();
				started = true;
			}
			while (todo > 0) {
				FUNC0(*cp);
				cp++;
				gpa++;
				gva++;
				resid--;
				todo--;
			}
		} else {
			/*
			 * If this page isn't guest RAM, try to handle
			 * it via MMIO.  For MMIO requests, use
			 * aligned reads of words when possible.
			 */
			while (todo > 0) {
				if (gpa & 1 || todo == 1)
					bytes = 1;
				else if (gpa & 2 || todo == 2)
					bytes = 2;
				else
					bytes = 4;
				error = FUNC8(ctx, cur_vcpu, gpa, &val,
				    bytes);
				if (error == 0) {
					if (!started) {
						FUNC10();
						started = true;
					}
					gpa += bytes;
					gva += bytes;
					resid -= bytes;
					todo -= bytes;
					while (bytes > 0) {
						FUNC0(val);
						val >>= 8;
						bytes--;
					}
				} else {
					if (started)
						FUNC2();
					else
						FUNC9(EFAULT);
					return;
				}
			}
		}
		FUNC1(resid == 0 || gpa % FUNC3() == 0);
	}
	if (!started)
		FUNC10();
	FUNC2();
}