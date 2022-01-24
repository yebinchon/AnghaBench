#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  uncompressed_size; } ;
typedef  TYPE_1__ unpack_descriptor_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,size_t,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static off_t
FUNC5(int in, int out, char *pre, size_t prelen, off_t *bytes_in)
{
	unpack_descriptor_t unpackd;

	in = FUNC0(in);
	if (in == -1)
		FUNC1("dup");
	out = FUNC0(out);
	if (out == -1)
		FUNC1("dup");

	FUNC4(in, out, pre, prelen, bytes_in, &unpackd);
	FUNC2(&unpackd, bytes_in);
	FUNC3(&unpackd);

	/* If we reached here, the unpack was successful */
	return (unpackd.uncompressed_size);
}