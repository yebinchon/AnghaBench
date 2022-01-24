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
typedef  int ssize_t ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(int sd, char * resbuf, int * resbuflen, int * resbufpos)
{
	ssize_t len;

	while (FUNC2(resbuf + *resbufpos, "\r\n",
	    *resbuflen - *resbufpos) == NULL) {
		/* Move buffered data to the start of the buffer */
		if (*resbufpos != 0) {
			FUNC0(resbuf, resbuf + *resbufpos,
			    *resbuflen - *resbufpos);
			*resbuflen -= *resbufpos;
			*resbufpos = 0;
		}

		/* If the buffer is full, complain */
		if (*resbuflen == BUFSIZ)
			return -1;

		/* Read more data into the buffer */
		len = FUNC1(sd, resbuf + *resbuflen, BUFSIZ - *resbuflen, 0);
		if ((len == 0) ||
		    ((len == -1) && (errno != EINTR)))
			return -1;

		if (len != -1)
			*resbuflen += len;
	}

	return 0;
}