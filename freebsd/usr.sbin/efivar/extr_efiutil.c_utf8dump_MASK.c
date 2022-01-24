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
typedef  char efi_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 

void
FUNC5(uint8_t *data, size_t datalen)
{
	char *utf8 = NULL;
	efi_char *ucs2;

	/*
	 * NUL terminate the string. Not all strings need it, but some
	 * do and an extra NUL won't change what's printed.
	 */
	ucs2 = FUNC1(datalen + sizeof(efi_char));
	FUNC2(ucs2, data, datalen);
	ucs2[datalen / sizeof(efi_char)] = 0;
	FUNC4(ucs2, &utf8);
	FUNC3("%s\n", utf8);
	FUNC0(utf8);
	FUNC0(ucs2);
}