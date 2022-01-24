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
struct mbuf {int* m_data; int m_len; struct mbuf* m_next; } ;
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
                   struct mbuf      *m,
                   uint8_t          contents)
{
    char buf[256];
    char c[32];
    uint8_t *memp;
    int i, xx = 0;

    FUNC1(&bxe_prev_mtx);

    FUNC0(sc, "++++++++++++ %s\n", tag);

    while (m)
    {
        memp = m->m_data;
        FUNC5(buf, "** > ");
        FUNC3(c, sizeof(c), "%03x", xx);
        FUNC4(buf, c);
        FUNC4(buf, ": ");

        if (contents)
        {
            for (i = 0; i < m->m_len; i++)
            {
                if ((xx != 0) && (xx % 16 == 0))
                {
                    FUNC0(sc, "%s\n", buf);
                    FUNC5(buf, "**   ");
                    FUNC3(c, sizeof(c), "%03x", xx);
                    FUNC4(buf, c);
                    FUNC4(buf, ": ");
                }

                FUNC3(c, sizeof(c), "%02x ", *memp);
                FUNC4(buf, c);

                memp++;
                xx++;
            }
        }
        else
        {
            FUNC3(c, sizeof(c), "%d", m->m_len);
            FUNC4(buf, c);
            xx += m->m_len;
        }

        FUNC0(sc, "%s\n", buf);
        m = m->m_next;
    }

    FUNC0(sc, "------------ %s\n", tag);

    FUNC2(&bxe_prev_mtx);
}