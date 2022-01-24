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
struct printer {char* acct_file; char* form_feed; char* log_file; char* lock_file; char* lp; char* mode_set; char* restrict_grp; char* remote_host; char* remote_queue; char* spool_dir; char* stat_recv; char* stat_send; char* status_file; char* trailer; int tof; int rp_matches_local; char** filters; void* rw; void* header_last; void* no_header; void* no_formfeed; void* no_copies; void* short_banner; void* restricted; void* resend_copies; int /*<<< orphan*/  page_plength; int /*<<< orphan*/  page_pwidth; int /*<<< orphan*/  page_width; int /*<<< orphan*/  page_length; int /*<<< orphan*/  price100; int /*<<< orphan*/  max_blocks; int /*<<< orphan*/  max_copies; int /*<<< orphan*/  daemon_user; int /*<<< orphan*/  conn_timeout; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/ * printer; } ;
typedef  enum lpd_filters { ____Placeholder_lpd_filters } lpd_filters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFFF ; 
 int /*<<< orphan*/  DEFLENGTH ; 
 int /*<<< orphan*/  DEFLOCK ; 
 int /*<<< orphan*/  DEFLP ; 
 int /*<<< orphan*/  DEFMAXCOPIES ; 
 int /*<<< orphan*/  DEFMX ; 
 int /*<<< orphan*/  DEFSTAT ; 
 int /*<<< orphan*/  DEFTIMEOUT ; 
 int /*<<< orphan*/  DEFUID ; 
 int /*<<< orphan*/  DEFWIDTH ; 
 int LPF_COUNT ; 
 int PCAPERR_NOTFOUND ; 
 int PCAPERR_OSERR ; 
 int /*<<< orphan*/  _PATH_CONSOLE ; 
 int /*<<< orphan*/  _PATH_DEFDEVLP ; 
 int /*<<< orphan*/  _PATH_DEFSPOOL ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 void* FUNC2 (char*,char*,char*) ; 
 int FUNC3 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char** filters ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** longfilters ; 

__attribute__((used)) static int
FUNC7(char *bp, struct printer *pp)
{
	enum lpd_filters filt;
	char *rp_name;
	int error;

	if ((pp->printer = FUNC1(bp)) == NULL)
		return PCAPERR_OSERR;

#define CHK(x) do {if ((x) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0)
	CHK(FUNC4(bp, "af", "acct.file", 0, &pp->acct_file));
	CHK(FUNC3(bp, "br", "tty.rate", 0, &pp->baud_rate));
	CHK(FUNC3(bp, "ct", "remote.timeout", DEFTIMEOUT, 
			    &pp->conn_timeout));
	CHK(FUNC3(bp, "du", "daemon.user", DEFUID, 
			    &pp->daemon_user));
	CHK(FUNC4(bp, "ff", "job.formfeed", DEFFF, &pp->form_feed));
	CHK(FUNC4(bp, "lf", "spool.log", _PATH_CONSOLE, 
			    &pp->log_file));
	CHK(FUNC4(bp, "lo", "spool.lock", DEFLOCK, &pp->lock_file));
	CHK(FUNC4(bp, "lp", "tty.device", _PATH_DEFDEVLP, &pp->lp));
	CHK(FUNC3(bp, "mc", "max.copies", DEFMAXCOPIES, 
			    &pp->max_copies));
	CHK(FUNC4(bp, "ms", "tty.mode", 0, &pp->mode_set));
	CHK(FUNC3(bp, "mx", "max.blocks", DEFMX, &pp->max_blocks));
	CHK(FUNC3(bp, "pc", "acct.price", 0, &pp->price100));
	CHK(FUNC3(bp, "pl", "page.length", DEFLENGTH,
			    &pp->page_length));
	CHK(FUNC3(bp, "pw", "page.width", DEFWIDTH, 
			    &pp->page_width));
	CHK(FUNC3(bp, "px", "page.pwidth", 0, &pp->page_pwidth));
	CHK(FUNC3(bp, "py", "page.plength", 0, &pp->page_plength));
	CHK(FUNC4(bp, "rg", "daemon.restrictgrp", 0, 
			    &pp->restrict_grp));
	CHK(FUNC4(bp, "rm", "remote.host", 0, &pp->remote_host));
	CHK(FUNC4(bp, "rp", "remote.queue", DEFLP, 
			    &pp->remote_queue));
	CHK(FUNC4(bp, "sd", "spool.dir", _PATH_DEFSPOOL,
			    &pp->spool_dir));
	CHK(FUNC4(bp, "sr", "stat.recv", 0, &pp->stat_recv));
	CHK(FUNC4(bp, "ss", "stat.send", 0, &pp->stat_send));
	CHK(FUNC4(bp, "st", "spool.status", DEFSTAT,
			    &pp->status_file));
	CHK(FUNC4(bp, "tr", "job.trailer", 0, &pp->trailer));

	pp->resend_copies = FUNC2(bp, "rc", "remote.resend_copies");
	pp->restricted = FUNC2(bp, "rs", "daemon.restricted");
	pp->short_banner = FUNC2(bp, "sb", "banner.short");
	pp->no_copies = FUNC2(bp, "sc", "job.no_copies");
	pp->no_formfeed = FUNC2(bp, "sf", "job.no_formfeed");
	pp->no_header = FUNC2(bp, "sh", "banner.disable");
	pp->header_last = FUNC2(bp, "hl", "banner.last");
	pp->rw = FUNC2(bp, "rw", "tty.rw");
	pp->tof = !FUNC2(bp, "fo", "job.topofform");
	
	/*
	 * Decide if the remote printer name matches the local printer name.
	 * If no name is given then we assume they mean them to match.
	 * If a name is given see if the rp_name is one of the names for
	 * this printer.
	 */
	pp->rp_matches_local = 1;
	CHK((error = FUNC4(bp, "rp", "remote.queue", 0, &rp_name)));
	if (error != PCAPERR_NOTFOUND && rp_name != NULL) {
		if (FUNC5(bp,rp_name) != 0)
			pp->rp_matches_local = 0;
		FUNC6(rp_name);
	}

	/*
	 * Filters:
	 */
	for (filt = 0; filt < LPF_COUNT; filt++) {
		CHK(FUNC4(bp, filters[filt], longfilters[filt], 0,
				    &pp->filters[filt]));
	}

	return 0;
}