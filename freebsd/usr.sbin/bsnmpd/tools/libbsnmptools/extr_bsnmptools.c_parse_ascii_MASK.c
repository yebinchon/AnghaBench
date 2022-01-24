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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static int32_t
FUNC3(char *ascii, uint8_t *binstr, size_t binlen)
{
	char dptr[3];
	size_t count;
	int32_t alen, i, saved_errno;
	uint32_t val;

	/* Filter 0x at the beginning */
	if ((alen = FUNC0(ascii)) > 2 && ascii[0] == '0' && ascii[1] == 'x')
		i = 2;
	else
		i = 0;

	saved_errno = errno;
	errno = 0;
	for (count = 0; i < alen; i += 2) {
		/* XXX: consider strlen(ascii) % 2 != 0 */
		dptr[0] = ascii[i];
		dptr[1] = ascii[i + 1];
		dptr[2] = '\0';
		if ((val = FUNC1(dptr, NULL, 16)) > 0xFF || errno != 0) {
			errno = saved_errno;
			return (-1);
		}
		binstr[count] = (uint8_t) val;
		if (++count >= binlen) {
			FUNC2("Key %s too long - truncating to %zu octets",
			    ascii, binlen);
			break;
		}
	}

	return (count);
}