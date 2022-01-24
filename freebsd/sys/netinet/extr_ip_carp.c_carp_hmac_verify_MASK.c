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
typedef  int /*<<< orphan*/  uint32_t ;
struct carp_softc {int dummy; } ;
typedef  int /*<<< orphan*/  md2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct carp_softc*,int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static int
FUNC3(struct carp_softc *sc, uint32_t counter[2],
    unsigned char md[20])
{
	unsigned char md2[20];

	FUNC0(sc);

	FUNC2(sc, counter, md2);

	return (FUNC1(md, md2, sizeof(md2)));
}