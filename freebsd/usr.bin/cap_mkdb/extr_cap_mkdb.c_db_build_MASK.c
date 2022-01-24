#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int recno_t ;
struct TYPE_10__ {int (* put ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {char* data; size_t size; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 char RECOK ; 
 int /*<<< orphan*/  R_NOOVERWRITE ; 
 char SHADOW ; 
 char TCERR ; 
 TYPE_2__* capdbp ; 
 int FUNC2 (char**,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 char* FUNC7 (char*,size_t) ; 
 char* FUNC8 (char*,char) ; 
 size_t FUNC9 (char*) ; 
 int FUNC10 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC13(char **ifiles)
{
	DBT key, data;
	recno_t reccnt;
	size_t len, bplen;
	int st;
	char *bp, *p, *t;

	data.data = NULL;
	key.data = NULL;
	for (reccnt = 0, bplen = 0; (st = FUNC2(&bp, ifiles)) > 0;) {

		/*
		 * Allocate enough memory to store record, terminating
		 * NULL and one extra byte.
		 */
		len = FUNC9(bp);
		if (bplen <= len + 2) {
			bplen += FUNC0(256, len + 2);
			if ((data.data = FUNC7(data.data, bplen)) == NULL)
				FUNC4(1, "malloc failed");
		}

		/* Find the end of the name field. */
		if ((p = FUNC8(bp, ':')) == NULL) {
			FUNC12("no name field: %.*s", (int)FUNC1(len, 20), bp);
			continue;
		}

		/* First byte of stored record indicates status. */
		switch(st) {
		case 1:
			((char *)(data.data))[0] = RECOK;
			break;
		case 2:
			((char *)(data.data))[0] = TCERR;
			FUNC12("record not tc expanded: %.*s", (int)(p - bp),
			    bp);
			break;
		}

		/* Create the stored record. */
		FUNC5(&((u_char *)(data.data))[1], bp, len + 1);
		data.size = len + 2;

		/* Store the record under the name field. */
		key.data = bp;
		key.size = p - bp;

		switch(capdbp->put(capdbp, &key, &data, R_NOOVERWRITE)) {
		case -1:
			FUNC3(1, "put");
			/* NOTREACHED */
		case 1:
			FUNC12("ignored duplicate: %.*s",
			    (int)key.size, (char *)key.data);
			continue;
		}
		++reccnt;

		/* If only one name, ignore the rest. */
		*p = '\0';
		if (FUNC8(bp, '|') == NULL)
			continue;
		*p = ':';

		/* The rest of the names reference the entire name. */
		((char *)(data.data))[0] = SHADOW;
		FUNC5(&((u_char *)(data.data))[1], key.data, key.size);
		data.size = key.size + 1;

		/* Store references for other names. */
		for (p = t = bp;; ++p) {
			if (p > t && (*p == ':' || *p == '|')) {
				key.size = p - t;
				key.data = t;
				switch(capdbp->put(capdbp,
				    &key, &data, R_NOOVERWRITE)) {
				case -1:
					FUNC3(1, "put");
					/* NOTREACHED */
				case 1:
					FUNC12("ignored duplicate: %.*s",
					    (int)key.size, (char *)key.data);
				}
				t = p + 1;
			}
			if (*p == ':')
				break;
		}
	}

	switch(st) {
	case -1:
		FUNC3(1, "file argument");
		/* NOTREACHED */
	case -2:
		FUNC4(1, "potential reference loop detected");
		/* NOTREACHED */
	}

	if (verbose)
		(void)FUNC6("cap_mkdb: %d capability records\n", reccnt);
}