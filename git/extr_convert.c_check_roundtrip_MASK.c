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

/* Variables and functions */
 char const* check_roundtrip_encoding ; 
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *enc_name)
{
	/*
	 * check_roundtrip_encoding contains a string of comma and/or
	 * space separated encodings (eg. "UTF-16, ASCII, CP1125").
	 * Search for the given encoding in that string.
	 */
	const char *found = FUNC1(check_roundtrip_encoding, enc_name);
	const char *next;
	int len;
	if (!found)
		return 0;
	next = found + FUNC2(enc_name);
	len = FUNC2(check_roundtrip_encoding);
	return (found && (
			/*
			 * check that the found encoding is at the
			 * beginning of check_roundtrip_encoding or
			 * that it is prefixed with a space or comma
			 */
			found == check_roundtrip_encoding || (
				(FUNC0(found[-1]) || found[-1] == ',')
			)
		) && (
			/*
			 * check that the found encoding is at the
			 * end of check_roundtrip_encoding or
			 * that it is suffixed with a space or comma
			 */
			next == check_roundtrip_encoding + len || (
				next < check_roundtrip_encoding + len &&
				(FUNC0(next[0]) || next[0] == ',')
			)
		));
}