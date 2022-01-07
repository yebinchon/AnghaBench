
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int mode_set; int trailer; int status_file; int stat_send; int stat_recv; int spool_dir; int remote_queue; int remote_host; int restrict_grp; int lp; int lock_file; int log_file; int form_feed; int * filters; int acct_file; int printer; } ;
typedef enum lpd_filters { ____Placeholder_lpd_filters } lpd_filters ;


 int LPF_COUNT ;
 int cfree (int ) ;
 int init_printer (struct printer*) ;

void
free_printer(struct printer *pp)
{
 enum lpd_filters filt;

 do { if (pp->printer) free(pp->printer); } while(0);
 do { if (pp->acct_file) free(pp->acct_file); } while(0);
 for (filt = 0; filt < LPF_COUNT; filt++)
  do { if (pp->filters[filt]) free(pp->filters[filt]); } while(0);
 do { if (pp->form_feed) free(pp->form_feed); } while(0);
 do { if (pp->log_file) free(pp->log_file); } while(0);
 do { if (pp->lock_file) free(pp->lock_file); } while(0);
 do { if (pp->lp) free(pp->lp); } while(0);
 do { if (pp->restrict_grp) free(pp->restrict_grp); } while(0);
 do { if (pp->remote_host) free(pp->remote_host); } while(0);
 do { if (pp->remote_queue) free(pp->remote_queue); } while(0);
 do { if (pp->spool_dir) free(pp->spool_dir); } while(0);
 do { if (pp->stat_recv) free(pp->stat_recv); } while(0);
 do { if (pp->stat_send) free(pp->stat_send); } while(0);
 do { if (pp->status_file) free(pp->status_file); } while(0);
 do { if (pp->trailer) free(pp->trailer); } while(0);
 do { if (pp->mode_set) free(pp->mode_set); } while(0);

 init_printer(pp);
}
