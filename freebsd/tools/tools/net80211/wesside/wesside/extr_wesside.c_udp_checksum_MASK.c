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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (unsigned short*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 

unsigned int FUNC5(unsigned char *stuff, int len, struct in_addr *sip,
                          struct in_addr *dip) {
        unsigned char *tmp;
        struct ippseudo *ph;

        tmp = (unsigned char*) FUNC3(len + sizeof(struct ippseudo));
        if(!tmp)
		FUNC0(1, "malloc()");

        ph = (struct ippseudo*) tmp;

        FUNC4(&ph->ippseudo_src, sip, 4);
        FUNC4(&ph->ippseudo_dst, dip, 4);
        ph->ippseudo_pad =  0;
        ph->ippseudo_p = IPPROTO_UDP;
        ph->ippseudo_len = FUNC1(len);

        FUNC4(tmp + sizeof(struct ippseudo), stuff, len);

        return FUNC2((unsigned short*)tmp, len+sizeof(struct ippseudo));
}