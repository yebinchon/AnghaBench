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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,char*) ; 
 int /*<<< orphan*/  bxe_prev_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(struct bxe_softc *sc,
             char             *tag,
             uint8_t          *mem,
             uint32_t         len)
{
    char buf[256];
    char c[32];
    int  xx;

    FUNC1(&bxe_prev_mtx);

    FUNC0(sc, "++++++++++++ %s\n", tag);
    FUNC5(buf, "** 000: ");

    for (xx = 0; xx < len; xx++)
    {
        if ((xx != 0) && (xx % 16 == 0))
        {
            FUNC0(sc, "%s\n", buf);
            FUNC5(buf, "** ");
            FUNC3(c, sizeof(c), "%03x", xx);
            FUNC4(buf, c);
            FUNC4(buf, ": ");
        }

        FUNC3(c, sizeof(c), "%02x ", *mem);
        FUNC4(buf, c);

        mem++;
    }

    FUNC0(sc, "%s\n", buf);
    FUNC0(sc, "------------ %s\n", tag);

    FUNC2(&bxe_prev_mtx);
}