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
typedef  int uint16_t ;

/* Variables and functions */
 int OK ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int optreset ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[], char *buf, int *len)
{
	char *buflast  =  buf + (*len);
	char *curbuf = buf;
	char *token,*lenpos;
	int ch;
	int datalen;
	uint16_t value;
	optreset = 1;
	optind = 0;
	while ((ch = FUNC1(argc, argv , "n:f:u:")) != -1) {
		switch(ch){
		case 'n':
			datalen = FUNC3(optarg);
			if ((curbuf + datalen + 2) >= buflast)
				goto done;
			curbuf[0] = datalen + 1;
			curbuf[1] = 8;
			curbuf += 2;
			FUNC2(curbuf, optarg, datalen);
			curbuf += datalen;
			break;
		case 'f':
			if (curbuf+3 > buflast)
				goto done;
			curbuf[0] = 2;
			curbuf[1] = 1;
			curbuf[2] = FUNC0(optarg);
			curbuf += 3;
			break;
		case 'u':
			lenpos = buf;
			if ((buf+2) >= buflast)
				goto done;
			curbuf[1] = 2;
			*lenpos = 1;
			curbuf += 2;
			while ((token = FUNC4(&optarg, ",")) != NULL) {
				value = FUNC5(token, NULL, 16);
				if ((curbuf+2) >= buflast)
					break;
				curbuf[0] = value &0xff;
				curbuf[1] = (value>>8)&0xff;
				curbuf += 2;
			}
				
		}
	}
done:
	*len = curbuf - buf;

	return OK;
}