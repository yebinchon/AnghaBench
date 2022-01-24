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
typedef  int uint8_t ;
typedef  size_t uint32_t ;
typedef  int u_char ;

/* Variables and functions */
 size_t MAX_OCTSTRING_LEN ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static char *
FUNC2(uint32_t len, char *octets, char *buf)
{
	uint8_t binary = 0;
	uint32_t i;
	char *ptr;

	if (len > MAX_OCTSTRING_LEN || octets == NULL || buf == NULL)
		return (NULL);

	for (ptr = buf, i = 0; i < len; i++)
		if (!FUNC0(octets[i])) {
			binary = 1;
			buf += FUNC1(buf, "0x");
			break;
		}

	for (ptr = buf, i = 0; i < len; i++)
		if (!binary)
			ptr += FUNC1(ptr, "%c", octets[i]);
		else
			ptr += FUNC1(ptr, "%2.2x", (u_char)octets[i]);

	return (buf);
}