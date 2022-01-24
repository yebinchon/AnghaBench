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
typedef  int u_int8_t ;
struct an_softc {int /*<<< orphan*/  an_ifp; } ;
struct an_ltv_gen {int an_len; int an_type; int /*<<< orphan*/  an_val; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int an_dump ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct an_softc *sc, struct an_ltv_gen *ltv, char *string)
{
	u_int8_t		*ptr2;
	int			len;
	int			i;
	int			count = 0;
	char			buf[17], temp;

	len = ltv->an_len - 4;
	FUNC1(sc->an_ifp, "RID %4x, Length %4d, Mode %s\n",
		ltv->an_type, ltv->an_len - 4, string);

	if (an_dump == 1 || (an_dump == ltv->an_type)) {
		FUNC1(sc->an_ifp, "\t");
		FUNC0(buf,sizeof(buf));

		ptr2 = (u_int8_t *)&ltv->an_val;
		for (i = len; i > 0; i--) {
			FUNC3("%02x ", *ptr2);

			temp = *ptr2++;
			if (FUNC2(temp))
				buf[count] = temp;
			else
				buf[count] = '.';
			if (++count == 16) {
				count = 0;
				FUNC3("%s\n",buf);
				FUNC1(sc->an_ifp, "\t");
				FUNC0(buf,sizeof(buf));
			}
		}
		for (; count != 16; count++) {
			FUNC3("   ");
		}
		FUNC3(" %s\n",buf);
	}
}