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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
	size_t tmplen;
	uint8_t *tmp;
	size_t i;
	uint8_t *p;

	tmplen = FUNC5(inlen, outlen);
	tmp = FUNC6(tmplen, M_GSSAPI, M_WAITOK);

	FUNC0(in, tmp, inlen);
	for (i = inlen, p = tmp; i < tmplen; i += inlen, p += inlen) {
		FUNC4(p + inlen, p, inlen);
	}
	FUNC1(out, outlen);
	for (i = 0, p = tmp; i < tmplen; i += outlen, p += outlen) {
		FUNC3(out, p, outlen);
	}
	FUNC2(tmp, M_GSSAPI);
}