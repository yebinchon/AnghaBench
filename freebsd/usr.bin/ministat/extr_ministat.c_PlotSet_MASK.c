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
struct plot {scalar_t__ span; char** bar; int width; int x0; int dx; int height; char* data; int /*<<< orphan*/  num_datasets; scalar_t__ separate_bars; } ;
struct dataset {unsigned int n; int* points; } ;

/* Variables and functions */
 int FUNC0 (struct dataset*) ; 
 int FUNC1 (struct dataset*) ; 
 int FUNC2 (struct dataset*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char** FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 struct plot plot ; 
 char* FUNC8 (char*,int) ; 

__attribute__((used)) static void
FUNC9(struct dataset *ds, int val)
{
	struct plot *pl;
	int i, j, m, x;
	unsigned n;
	int bar;

	pl = &plot;
	if (pl->span == 0)
		return;

	if (pl->separate_bars)
		bar = val-1;
	else
		bar = 0;

	if (pl->bar == NULL) {
		pl->bar = FUNC4(sizeof(char *), pl->num_datasets);
		FUNC3(pl->bar != NULL);
	}

	if (pl->bar[bar] == NULL) {
		pl->bar[bar] = FUNC6(pl->width);
		FUNC3(pl->bar[bar] != NULL);
		FUNC7(pl->bar[bar], 0, pl->width);
	}

	m = 1;
	i = -1;
	j = 0;
	for (n = 0; n < ds->n; n++) {
		x = (ds->points[n] - pl->x0) / pl->dx;
		if (x == i) {
			j++;
			if (j > m)
				m = j;
		} else {
			j = 1;
			i = x;
		}
	}
	m += 1;
	if (m > pl->height) {
		pl->data = FUNC8(pl->data, pl->width * m);
		FUNC3(pl->data != NULL);
		FUNC7(pl->data + pl->height * pl->width, 0,
		    (m - pl->height) * pl->width);
	}
	pl->height = m;
	i = -1;
	for (n = 0; n < ds->n; n++) {
		x = (ds->points[n] - pl->x0) / pl->dx;
		if (x == i) {
			j++;
		} else {
			j = 1;
			i = x;
		}
		pl->data[j * pl->width + x] |= val;
	}
	if (!FUNC5(FUNC2(ds))) {
		x = ((FUNC0(ds) - FUNC2(ds)) - pl->x0) / pl->dx;
		m = ((FUNC0(ds) + FUNC2(ds)) - pl->x0) / pl->dx;
		pl->bar[bar][m] = '|';
		pl->bar[bar][x] = '|';
		for (i = x + 1; i < m; i++)
			if (pl->bar[bar][i] == 0)
				pl->bar[bar][i] = '_';
	}
	x = (FUNC1(ds) - pl->x0) / pl->dx;
	pl->bar[bar][x] = 'M';
	x = (FUNC0(ds) - pl->x0) / pl->dx;
	pl->bar[bar][x] = 'A';
}