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
struct g_slicer {unsigned int nslice; void* slices; int /*<<< orphan*/ * softc; } ;
struct g_slice {int dummy; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 void* FUNC0 (unsigned int,int) ; 

__attribute__((used)) static struct g_slicer *
FUNC1(unsigned nslice, unsigned scsize)
{
	struct g_slicer *gsp;

	gsp = FUNC0(sizeof *gsp, M_WAITOK | M_ZERO);
	if (scsize > 0)
		gsp->softc = FUNC0(scsize, M_WAITOK | M_ZERO);
	else
		gsp->softc = NULL;
	gsp->slices = FUNC0(nslice * sizeof(struct g_slice),
	    M_WAITOK | M_ZERO);
	gsp->nslice = nslice;
	return (gsp);
}