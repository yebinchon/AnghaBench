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
struct otus_softc {int dummy; } ;
struct otus_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct otus_softc*) ; 
 struct otus_data* FUNC1 (struct otus_softc*) ; 

__attribute__((used)) static struct otus_data *
FUNC2(struct otus_softc *sc)
{
	struct otus_data *bf;

	FUNC0(sc);

	bf = FUNC1(sc);
	return (bf);
}