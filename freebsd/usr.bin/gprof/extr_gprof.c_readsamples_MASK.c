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
typedef  double u_int8_t ;
typedef  double u_int64_t ;
typedef  double u_int32_t ;
typedef  double u_int16_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  double int8_t ;
typedef  double int64_t ;
typedef  double int32_t ;
typedef  double int16_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  histcounter_size ; 
 int histcounter_type ; 
 int nsamples ; 
 double* samples ; 

void
FUNC5(FILE *pfile)
{
    int		i;
    intmax_t	sample;

    if (samples == 0) {
	samples = (double *) FUNC0(nsamples, sizeof(double));
	if (samples == NULL)
	    FUNC2(0, "no room for %d sample pc's", nsamples);
    }
    for (i = 0; i < nsamples; i++) {
	FUNC4(&sample, histcounter_size, 1, pfile);
	if (FUNC3(pfile))
		break;
	switch ( histcounter_type ) {
	case -8:
	    samples[i] += *(int8_t *)&sample;
	    break;
	case 8:
	    samples[i] += *(u_int8_t *)&sample;
	    break;
	case -16:
	    samples[i] += *(int16_t *)&sample;
	    break;
	case 16:
	    samples[i] += *(u_int16_t *)&sample;
	    break;
	case -32:
	    samples[i] += *(int32_t *)&sample;
	    break;
	case 32:
	    samples[i] += *(u_int32_t *)&sample;
	    break;
	case -64:
	    samples[i] += *(int64_t *)&sample;
	    break;
	case 64:
	    samples[i] += *(u_int64_t *)&sample;
	    break;
	default:
	    FUNC1(1, "unsupported histogram counter type %d", histcounter_type);
	}
    }
    if (i != nsamples)
	FUNC2(1, "unexpected EOF after reading %d/%d samples", --i , nsamples );
}