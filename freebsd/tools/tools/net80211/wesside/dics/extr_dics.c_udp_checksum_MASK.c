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
struct ippseudo {unsigned char ippseudo_src; unsigned char ippseudo_dst; int /*<<< orphan*/  ippseudo_len; int /*<<< orphan*/  ippseudo_p; scalar_t__ ippseudo_pad; } ;
typedef  unsigned char in_addr ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (unsigned short*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

unsigned int FUNC6(unsigned char *stuff0, int len, struct in_addr *sip,
                          struct in_addr *dip) {
        unsigned char *stuff;
        struct ippseudo *ph;

        stuff = (unsigned char*) FUNC3(len + sizeof(struct ippseudo));
        if(!stuff) {
                FUNC5("malloc()");
                FUNC0(1);
        }

        ph = (struct ippseudo*) stuff;

        FUNC4(&ph->ippseudo_src, sip, 4);
        FUNC4(&ph->ippseudo_dst, dip, 4);
        ph->ippseudo_pad =  0;
        ph->ippseudo_p = IPPROTO_UDP;
        ph->ippseudo_len = FUNC1(len);

        FUNC4(stuff + sizeof(struct ippseudo), stuff0, len);

        return FUNC2((unsigned short*)stuff, len+sizeof(struct ippseudo));
}