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
struct TYPE_3__ {int* inodesin; int* symbolsin; char** tree; char const* symbol_eob; scalar_t__ uncompressed_size; int treelevels; int /*<<< orphan*/  fpOut; int /*<<< orphan*/  fpIn; } ;
typedef  TYPE_1__ unpack_descriptor_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(const unpack_descriptor_t *unpackd, off_t *bytes_in)
{
	int thislevel, thiscode, thisbyte, inlevelindex;
	int i;
	off_t bytes_out = 0;
	const char *thissymbol;	/* The symbol pointer decoded from stream */

	/*
	 * Decode huffman.  Fetch every bytes from the file, get it
	 * into 'thiscode' bit-by-bit, then output the symbol we got
	 * when one has been found.
	 *
	 * Assumption: sizeof(int) > ((max tree levels + 1) / 8).
	 * bad things could happen if not.
	 */
	thislevel = 0;
	thiscode = thisbyte = 0;

	while ((thisbyte = FUNC2(unpackd->fpIn)) != EOF) {
		FUNC0(bytes_in, 1);
		FUNC4(1);
		FUNC1();

		/*
		 * Split one bit from thisbyte, from highest to lowest,
		 * feed the bit into thiscode, until we got a symbol from
		 * the tree.
		 */
		for (i = 7; i >= 0; i--) {
			thiscode = (thiscode << 1) | ((thisbyte >> i) & 1);

			/* Did we got a symbol? (referencing leaf node) */
			if (thiscode >= unpackd->inodesin[thislevel]) {
				inlevelindex =
				    thiscode - unpackd->inodesin[thislevel];
				if (inlevelindex > unpackd->symbolsin[thislevel])
					FUNC5("File corrupt");

				thissymbol =
				    &(unpackd->tree[thislevel][inlevelindex]);
				if ((thissymbol == unpackd->symbol_eob) &&
				    (bytes_out == unpackd->uncompressed_size))
					goto finished;

				FUNC3((*thissymbol), unpackd->fpOut);
				bytes_out++;

				/* Prepare for next input */
				thislevel = 0; thiscode = 0;
			} else {
				thislevel++;
				if (thislevel > unpackd->treelevels)
					FUNC5("File corrupt");
			}
		}
	}

finished:
	if (bytes_out != unpackd->uncompressed_size)
		FUNC5("Premature EOF");
}