#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int uncompressed_size; unsigned char treelevels; unsigned char* symbolsin; int symbol_size; int /*<<< orphan*/ * symbol_eob; int /*<<< orphan*/ * fpIn; int /*<<< orphan*/ ** tree; int /*<<< orphan*/ * symbol; int /*<<< orphan*/ * inodesin; int /*<<< orphan*/ * fpOut; } ;
typedef  TYPE_1__ unpack_descriptor_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int EOF ; 
 unsigned char HTREE_MAXLEVEL ; 
 int PACK_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,char*,size_t) ; 
 scalar_t__ FUNC8 (int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(int in, int out, char *pre, size_t prelen, off_t *bytes_in,
    unpack_descriptor_t *unpackd)
{
	unsigned char hdr[PACK_HEADER_LENGTH];	/* buffer for header */
	ssize_t bytesread;		/* Bytes read from the file */
	int i, j, thisbyte;

	if (prelen > sizeof hdr)
		FUNC5("prelen too long");

	/* Prepend the header buffer if we already read some data */
	if (prelen != 0)
		FUNC7(hdr, pre, prelen);

	/* Read in and fill the rest bytes of header */
	bytesread = FUNC8(in, hdr + prelen, PACK_HEADER_LENGTH - prelen);
	if (bytesread < 0)
		FUNC5("Error reading pack header");
	FUNC4(bytesread);

	FUNC0(bytes_in, PACK_HEADER_LENGTH);

	/* Obtain uncompressed length (bytes 2,3,4,5) */
	unpackd->uncompressed_size = 0;
	for (i = 2; i <= 5; i++) {
		unpackd->uncompressed_size <<= 8;
		unpackd->uncompressed_size |= hdr[i];
	}

	/* Get the levels of the tree */
	unpackd->treelevels = hdr[6];
	if (unpackd->treelevels > HTREE_MAXLEVEL || unpackd->treelevels < 1)
		FUNC6("Huffman tree has insane levels");

	/* Let libc take care for buffering from now on */
	if ((unpackd->fpIn = FUNC2(in, "r")) == NULL)
		FUNC5("Can not fdopen() input stream");
	if ((unpackd->fpOut = FUNC2(out, "w")) == NULL)
		FUNC5("Can not fdopen() output stream");

	/* Allocate for the tables of bounds and the tree itself */
	unpackd->inodesin =
	    FUNC1(unpackd->treelevels, sizeof(*(unpackd->inodesin)));
	unpackd->symbolsin =
	    FUNC1(unpackd->treelevels, sizeof(*(unpackd->symbolsin)));
	unpackd->tree =
	    FUNC1(unpackd->treelevels, (sizeof(*(unpackd->tree))));
	if (unpackd->inodesin == NULL || unpackd->symbolsin == NULL ||
	    unpackd->tree == NULL)
		FUNC5("calloc");

	/* We count from 0 so adjust to match array upper bound */
	unpackd->treelevels--;

	/* Read the levels symbol count table and calculate total */
	unpackd->symbol_size = 1;	/* EOB */
	for (i = 0; i <= unpackd->treelevels; i++) {
		if ((thisbyte = FUNC3(unpackd->fpIn)) == EOF)
			FUNC5("File appears to be truncated");
		unpackd->symbolsin[i] = (unsigned char)thisbyte;
		unpackd->symbol_size += unpackd->symbolsin[i];
	}
	FUNC0(bytes_in, unpackd->treelevels);
	if (unpackd->symbol_size > 256)
		FUNC6("Bad symbol table");
	FUNC4(unpackd->treelevels);

	/* Allocate for the symbol table, point symbol_eob at the beginning */
	unpackd->symbol_eob = unpackd->symbol = FUNC1(1, unpackd->symbol_size);
	if (unpackd->symbol == NULL)
		FUNC5("calloc");

	/*
	 * Read in the symbol table, which contain [2, 256] symbols.
	 * In order to fit the count in one byte, pack(1) would offset
	 * it by reducing 2 from the actual number from the last level.
	 *
	 * We adjust the last level's symbol count by 1 here, because
	 * the EOB symbol is not being transmitted explicitly.  Another
	 * adjustment would be done later afterward.
	 */
	unpackd->symbolsin[unpackd->treelevels]++;
	for (i = 0; i <= unpackd->treelevels; i++) {
		unpackd->tree[i] = unpackd->symbol_eob;
		for (j = 0; j < unpackd->symbolsin[i]; j++) {
			if ((thisbyte = FUNC3(unpackd->fpIn)) == EOF)
				FUNC6("Symbol table truncated");
			*unpackd->symbol_eob++ = (char)thisbyte;
		}
		FUNC4(unpackd->symbolsin[i]);
		FUNC0(bytes_in, unpackd->symbolsin[i]);
	}

	/* Now, take account for the EOB symbol as well */
	unpackd->symbolsin[unpackd->treelevels]++;

	/*
	 * The symbolsin table has been constructed now.
	 * Calculate the internal nodes count table based on it.
	 */
	FUNC9(unpackd, 0);
}