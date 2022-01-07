
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int flags; } ;


 int DCONS_POLL_OFFLINE ;
 int F_READY ;
 int MAX (int,int) ;
 int dconschat_fetch_header (struct dcons_state*) ;
 int dconschat_proc_dcons (struct dcons_state*) ;
 int dconschat_proc_socket (struct dcons_state*) ;
 int fflush (int ) ;
 int poll_hz ;
 int printf (char*,int,int) ;
 int stdout ;
 scalar_t__ verbose ;

__attribute__((used)) static int
dconschat_start_session(struct dcons_state *dc)
{
 int counter = 0;
 int retry = 0;
 int retry_unit_init = MAX(1, poll_hz / 10);
 int retry_unit_offline = poll_hz * DCONS_POLL_OFFLINE;
 int retry_unit = retry_unit_init;
 int retry_max = retry_unit_offline / retry_unit;

 while (1) {
  if (((dc->flags & F_READY) == 0) && ++counter > retry_unit) {
   counter = 0;
   retry ++;
   if (retry > retry_max)
    retry_unit = retry_unit_offline;
   if (verbose) {
    printf("%d/%d ", retry, retry_max);
    fflush(stdout);
   }
   dconschat_fetch_header(dc);
  }
  if ((dc->flags & F_READY) != 0) {
   counter = 0;
   retry = 0;
   retry_unit = retry_unit_init;
   dconschat_proc_dcons(dc);
  }
  dconschat_proc_socket(dc);
 }
 return (0);
}
