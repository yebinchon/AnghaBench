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
struct pf_altq {int scheduler; } ;

/* Variables and functions */
#define  ALTQT_CBQ 132 
#define  ALTQT_CODEL 131 
#define  ALTQT_FAIRQ 130 
#define  ALTQT_HFSC 129 
#define  ALTQT_PRIQ 128 
 int ENXIO ; 
 int FUNC0 (struct pf_altq*,void*,int*,int) ; 
 int FUNC1 (struct pf_altq*,void*,int*,int) ; 
 int FUNC2 (struct pf_altq*,void*,int*,int) ; 
 int FUNC3 (struct pf_altq*,void*,int*,int) ; 
 int FUNC4 (struct pf_altq*,void*,int*,int) ; 

int
FUNC5(struct pf_altq *a, void *ubuf, int *nbytes, int version)
{
	int error = 0;

	switch (a->scheduler) {
#ifdef ALTQ_CBQ
	case ALTQT_CBQ:
		error = cbq_getqstats(a, ubuf, nbytes, version);
		break;
#endif
#ifdef ALTQ_PRIQ
	case ALTQT_PRIQ:
		error = priq_getqstats(a, ubuf, nbytes, version);
		break;
#endif
#ifdef ALTQ_HFSC
	case ALTQT_HFSC:
		error = hfsc_getqstats(a, ubuf, nbytes, version);
		break;
#endif
#ifdef ALTQ_FAIRQ
        case ALTQT_FAIRQ:
                error = fairq_getqstats(a, ubuf, nbytes, version);
                break;
#endif
#ifdef ALTQ_CODEL
	case ALTQT_CODEL:
		error = codel_getqstats(a, ubuf, nbytes, version);
		break;
#endif
	default:
		error = ENXIO;
	}

	return (error);
}