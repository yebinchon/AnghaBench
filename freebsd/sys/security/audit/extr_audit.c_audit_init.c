
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kaudit_record {int dummy; } ;
struct TYPE_10__ {scalar_t__ af_currsz; scalar_t__ af_filesz; } ;
struct TYPE_6__ {int * at_addr; int at_type; } ;
struct TYPE_9__ {TYPE_1__ ai_termid; } ;
struct TYPE_8__ {scalar_t__ am_failure; scalar_t__ am_success; } ;
struct TYPE_7__ {int aq_minfree; int aq_bufsz; int aq_lowater; int aq_hiwater; } ;


 int AQ_BUFSZ ;
 int AQ_HIWATER ;
 int AQ_LOWATER ;
 int AU_FS_MINFREE ;
 int AU_IPv4 ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int INADDR_ANY ;
 int KINFO_LOCK_INIT () ;
 int MTX_DEF ;
 int SHUTDOWN_PRI_FIRST ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 scalar_t__ audit_arge ;
 scalar_t__ audit_argv ;
 int audit_fail_cv ;
 scalar_t__ audit_fail_stop ;
 TYPE_5__ audit_fstat ;
 scalar_t__ audit_in_failure ;
 TYPE_4__ audit_kinfo ;
 int audit_mtx ;
 TYPE_3__ audit_nae_mask ;
 scalar_t__ audit_panic_on_write_fail ;
 scalar_t__ audit_pre_q_len ;
 int audit_q ;
 scalar_t__ audit_q_len ;
 TYPE_2__ audit_qctrl ;
 int audit_record_ctor ;
 int audit_record_dtor ;
 int audit_record_zone ;
 int audit_shutdown ;
 int audit_syscalls_enabled ;
 int audit_syscalls_enabled_update () ;
 scalar_t__ audit_trail_enabled ;
 scalar_t__ audit_trail_suspended ;
 int audit_trigger_init () ;
 int audit_watermark_cv ;
 int audit_worker_cv ;
 int audit_worker_init () ;
 int cv_init (int *,char*) ;
 int kau_init () ;
 int mtx_init (int *,char*,int *,int ) ;
 int shutdown_pre_sync ;
 int uma_zcreate (char*,int,int ,int ,int *,int *,int ,int ) ;

__attribute__((used)) static void
audit_init(void)
{

 audit_trail_enabled = 0;
 audit_trail_suspended = 0;
 audit_syscalls_enabled = 0;
 audit_panic_on_write_fail = 0;
 audit_fail_stop = 0;
 audit_in_failure = 0;
 audit_argv = 0;
 audit_arge = 0;

 audit_fstat.af_filesz = 0;
 audit_fstat.af_currsz = 0;
 audit_nae_mask.am_success = 0;
 audit_nae_mask.am_failure = 0;

 TAILQ_INIT(&audit_q);
 audit_q_len = 0;
 audit_pre_q_len = 0;
 audit_qctrl.aq_hiwater = AQ_HIWATER;
 audit_qctrl.aq_lowater = AQ_LOWATER;
 audit_qctrl.aq_bufsz = AQ_BUFSZ;
 audit_qctrl.aq_minfree = AU_FS_MINFREE;

 audit_kinfo.ai_termid.at_type = AU_IPv4;
 audit_kinfo.ai_termid.at_addr[0] = INADDR_ANY;

 mtx_init(&audit_mtx, "audit_mtx", ((void*)0), MTX_DEF);
 KINFO_LOCK_INIT();
 cv_init(&audit_worker_cv, "audit_worker_cv");
 cv_init(&audit_watermark_cv, "audit_watermark_cv");
 cv_init(&audit_fail_cv, "audit_fail_cv");

 audit_record_zone = uma_zcreate("audit_record",
     sizeof(struct kaudit_record), audit_record_ctor,
     audit_record_dtor, ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);


 audit_syscalls_enabled_update();


 kau_init();

 audit_trigger_init();


 EVENTHANDLER_REGISTER(shutdown_pre_sync, audit_shutdown, ((void*)0),
     SHUTDOWN_PRI_FIRST);


 audit_worker_init();
}
