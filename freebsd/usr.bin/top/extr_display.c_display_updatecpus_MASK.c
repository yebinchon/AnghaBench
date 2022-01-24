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
struct statics {int ncpus; } ;

/* Variables and functions */
 int cpustates_column ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int* lcpustates ; 
 int num_cpus ; 
 int num_cpustates ; 
 scalar_t__ pcpu_stats ; 

int
FUNC2(struct statics *statics)
{
    int lines;
    int i;

    /* call resize to do the dirty work */
    lines = FUNC1();
    if (pcpu_stats)
		num_cpus = statics->ncpus;
    else
		num_cpus = 1;
    cpustates_column = 5;	/* CPU: */
    if (num_cpus > 1) {
		cpustates_column += 1 + FUNC0(num_cpus); /* CPU #: */
	}

    /* fill the "last" array with all -1s, to insure correct updating */
	for (i = 0; i < num_cpustates * num_cpus; ++i) {
		lcpustates[i] = -1;
    }

    return(lines);
}