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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__ tokenstr_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AU_OFLAG_NONE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*,char const*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static bool
FUNC11(const char *auditregex, FILE *pipestream)
{
	uint8_t *buff;
	tokenstr_t token;
	ssize_t size = 1024;
	char membuff[size];
	char del[] = ",";
	int reclen, bytes = 0;
	FILE *memstream;

	/*
	 * Open a stream on 'membuff' (address to memory buffer) for storing
	 * the audit records in the default mode.'reclen' is the length of the
	 * available records from auditpipe which is passed to the functions
	 * au_fetch_tok(3) and au_print_flags_tok(3) for further use.
	 */
	FUNC0((memstream = FUNC8(membuff, size, "w")) != NULL);
	FUNC0((reclen = FUNC6(pipestream, &buff)) != -1);

	/*
	 * Iterate through each BSM token, extracting the bits that are
	 * required to start processing the token sequences.
	 */
	while (bytes < reclen) {
		if (FUNC4(&token, buff + bytes, reclen - bytes) == -1) {
			FUNC10("au_read_rec");
			FUNC2("Incomplete Audit Record");
		}

		/* Print the tokens as they are obtained, in the default form */
		FUNC5(memstream, &token, del, AU_OFLAG_NONE);
		bytes += token.len;
	}

	FUNC9(buff);
	FUNC1(0, FUNC7(memstream));
	return (FUNC3("%s", membuff, auditregex));
}