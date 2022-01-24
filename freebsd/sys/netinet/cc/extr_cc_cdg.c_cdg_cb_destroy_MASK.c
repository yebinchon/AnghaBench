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
struct qdiff_sample {int dummy; } ;
struct cdg {int /*<<< orphan*/  qdiffmax_q; int /*<<< orphan*/  qdiffmin_q; } ;
struct cc_var {struct cdg* cc_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CDG ; 
 struct qdiff_sample* FUNC0 (int /*<<< orphan*/ *) ; 
 struct qdiff_sample* FUNC1 (struct qdiff_sample*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qdiff_lnk ; 
 int /*<<< orphan*/  qdiffsample_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct qdiff_sample*) ; 

__attribute__((used)) static void
FUNC4(struct cc_var *ccv)
{
	struct cdg *cdg_data;
	struct qdiff_sample *qds, *qds_n;

	cdg_data = ccv->cc_data;

	qds = FUNC0(&cdg_data->qdiffmin_q);
	while (qds != NULL) {
		qds_n = FUNC1(qds, qdiff_lnk);
		FUNC3(qdiffsample_zone,qds);
		qds = qds_n;
	}

	qds = FUNC0(&cdg_data->qdiffmax_q);
	while (qds != NULL) {
		qds_n = FUNC1(qds, qdiff_lnk);
		FUNC3(qdiffsample_zone,qds);
		qds = qds_n;
	}

	FUNC2(ccv->cc_data, M_CDG);
}