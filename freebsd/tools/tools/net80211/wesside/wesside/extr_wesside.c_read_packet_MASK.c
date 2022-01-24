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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char* FUNC1 (unsigned char**,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int FUNC3 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(int fd, unsigned char *dst, int len)
{
	static unsigned char buf[4096];
	static int totlen = 0;
	static unsigned char *next = buf;
        unsigned char *pkt;
        int plen;
        
        FUNC0(len > 0);

        /* need to read more */
        if (totlen == 0) {
                totlen = FUNC3(fd, buf, sizeof(buf));
                if (totlen == -1) {
                        totlen = 0;
                        return -1;
                }
                next = buf;
        }
        
        /* read 802.11 packet */
        pkt = FUNC1(&next, &totlen, &plen);
        if (plen > len)
                plen = len;
        FUNC0(plen > 0);
        FUNC2(dst, pkt, plen);

        return plen;
}