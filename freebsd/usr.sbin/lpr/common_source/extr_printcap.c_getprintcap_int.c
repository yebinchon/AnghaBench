
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* acct_file; char* form_feed; char* log_file; char* lock_file; char* lp; char* mode_set; char* restrict_grp; char* remote_host; char* remote_queue; char* spool_dir; char* stat_recv; char* stat_send; char* status_file; char* trailer; int tof; int rp_matches_local; char** filters; void* rw; void* header_last; void* no_header; void* no_formfeed; void* no_copies; void* short_banner; void* restricted; void* resend_copies; int page_plength; int page_pwidth; int page_width; int page_length; int price100; int max_blocks; int max_copies; int daemon_user; int conn_timeout; int baud_rate; int * printer; } ;
typedef enum lpd_filters { ____Placeholder_lpd_filters } lpd_filters ;


 int CHK (int) ;
 int DEFFF ;
 int DEFLENGTH ;
 int DEFLOCK ;
 int DEFLP ;
 int DEFMAXCOPIES ;
 int DEFMX ;
 int DEFSTAT ;
 int DEFTIMEOUT ;
 int DEFUID ;
 int DEFWIDTH ;
 int LPF_COUNT ;
 int PCAPERR_NOTFOUND ;
 int PCAPERR_OSERR ;
 int _PATH_CONSOLE ;
 int _PATH_DEFDEVLP ;
 int _PATH_DEFSPOOL ;
 int * capdb_canonical_name (char*) ;
 void* capdb_getaltlog (char*,char*,char*) ;
 int capdb_getaltnum (char*,char*,char*,int ,int *) ;
 int capdb_getaltstr (char*,char*,char*,int ,char**) ;
 scalar_t__ cgetmatch (char*,char*) ;
 char** filters ;
 int free (char*) ;
 char** longfilters ;

__attribute__((used)) static int
getprintcap_int(char *bp, struct printer *pp)
{
 enum lpd_filters filt;
 char *rp_name;
 int error;

 if ((pp->printer = capdb_canonical_name(bp)) == ((void*)0))
  return PCAPERR_OSERR;


 do {if ((capdb_getaltstr(bp, "af", "acct.file", 0, &pp->acct_file)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "br", "tty.rate", 0, &pp->baud_rate)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "ct", "remote.timeout", DEFTIMEOUT, &pp->conn_timeout)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltnum(bp, "du", "daemon.user", DEFUID, &pp->daemon_user)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "ff", "job.formfeed", DEFFF, &pp->form_feed)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltstr(bp, "lf", "spool.log", _PATH_CONSOLE, &pp->log_file)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "lo", "spool.lock", DEFLOCK, &pp->lock_file)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltstr(bp, "lp", "tty.device", _PATH_DEFDEVLP, &pp->lp)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "mc", "max.copies", DEFMAXCOPIES, &pp->max_copies)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "ms", "tty.mode", 0, &pp->mode_set)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "mx", "max.blocks", DEFMX, &pp->max_blocks)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "pc", "acct.price", 0, &pp->price100)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "pl", "page.length", DEFLENGTH, &pp->page_length)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltnum(bp, "pw", "page.width", DEFWIDTH, &pp->page_width)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltnum(bp, "px", "page.pwidth", 0, &pp->page_pwidth)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltnum(bp, "py", "page.plength", 0, &pp->page_plength)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltstr(bp, "rg", "daemon.restrictgrp", 0, &pp->restrict_grp)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "rm", "remote.host", 0, &pp->remote_host)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltstr(bp, "rp", "remote.queue", DEFLP, &pp->remote_queue)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "sd", "spool.dir", _PATH_DEFSPOOL, &pp->spool_dir)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "sr", "stat.recv", 0, &pp->stat_recv)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltstr(bp, "ss", "stat.send", 0, &pp->stat_send)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 do {if ((capdb_getaltstr(bp, "st", "spool.status", DEFSTAT, &pp->status_file)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 do {if ((capdb_getaltstr(bp, "tr", "job.trailer", 0, &pp->trailer)) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 pp->resend_copies = capdb_getaltlog(bp, "rc", "remote.resend_copies");
 pp->restricted = capdb_getaltlog(bp, "rs", "daemon.restricted");
 pp->short_banner = capdb_getaltlog(bp, "sb", "banner.short");
 pp->no_copies = capdb_getaltlog(bp, "sc", "job.no_copies");
 pp->no_formfeed = capdb_getaltlog(bp, "sf", "job.no_formfeed");
 pp->no_header = capdb_getaltlog(bp, "sh", "banner.disable");
 pp->header_last = capdb_getaltlog(bp, "hl", "banner.last");
 pp->rw = capdb_getaltlog(bp, "rw", "tty.rw");
 pp->tof = !capdb_getaltlog(bp, "fo", "job.topofform");







 pp->rp_matches_local = 1;
 do {if (((error = capdb_getaltstr(bp, "rp", "remote.queue", 0, &rp_name))) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);
 if (error != PCAPERR_NOTFOUND && rp_name != ((void*)0)) {
  if (cgetmatch(bp,rp_name) != 0)
   pp->rp_matches_local = 0;
  free(rp_name);
 }




 for (filt = 0; filt < LPF_COUNT; filt++) {
  do {if ((capdb_getaltstr(bp, filters[filt], longfilters[filt], 0, &pp->filters[filt])) == PCAPERR_OSERR) return PCAPERR_OSERR;}while(0);

 }

 return 0;
}
