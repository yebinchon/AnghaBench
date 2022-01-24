#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xdrproc_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
struct TYPE_4__ {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
struct TYPE_3__ {int /*<<< orphan*/  where; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct accepted_reply {int ar_stat; TYPE_2__ ar_vers; TYPE_1__ ar_results; int /*<<< orphan*/  ar_verf; } ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  enum accept_stat { ____Placeholder_accept_stat } accept_stat ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  GARBAGE_ARGS 133 
#define  PROC_UNAVAIL 132 
#define  PROG_MISMATCH 131 
#define  PROG_UNAVAIL 130 
#define  SUCCESS 129 
#define  SYSTEM_ERR 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_void ; 

bool_t
FUNC5(XDR *xdrs, struct accepted_reply *ar)
{
	enum accept_stat *par_stat;

	FUNC0(xdrs != NULL);
	FUNC0(ar != NULL);

	par_stat = &ar->ar_stat;

	/* personalized union, rather than calling xdr_union */
	if (! FUNC3(xdrs, &(ar->ar_verf)))
		return (FALSE);
	if (! FUNC2(xdrs, (enum_t *) par_stat))
		return (FALSE);
	switch (ar->ar_stat) {

	case SUCCESS:
		if (ar->ar_results.proc != (xdrproc_t) xdr_void)
			return ((*(ar->ar_results.proc))(xdrs,
				ar->ar_results.where));
		else
			return (TRUE);

	case PROG_MISMATCH:
		if (! FUNC4(xdrs, &(ar->ar_vers.low)))
			return (FALSE);
		return (FUNC4(xdrs, &(ar->ar_vers.high)));

	case GARBAGE_ARGS:
	case SYSTEM_ERR:
	case PROC_UNAVAIL:
	case PROG_UNAVAIL:
		break;
	}
	return (TRUE);  /* TRUE => open ended set of problems */
}