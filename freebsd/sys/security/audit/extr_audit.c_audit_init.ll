; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@audit_trail_enabled = common dso_local global i64 0, align 8
@audit_trail_suspended = common dso_local global i64 0, align 8
@audit_syscalls_enabled = common dso_local global i32 0, align 4
@audit_panic_on_write_fail = common dso_local global i64 0, align 8
@audit_fail_stop = common dso_local global i64 0, align 8
@audit_in_failure = common dso_local global i64 0, align 8
@audit_argv = common dso_local global i64 0, align 8
@audit_arge = common dso_local global i64 0, align 8
@audit_fstat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@audit_nae_mask = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@audit_q = common dso_local global i32 0, align 4
@audit_q_len = common dso_local global i64 0, align 8
@audit_pre_q_len = common dso_local global i64 0, align 8
@AQ_HIWATER = common dso_local global i32 0, align 4
@audit_qctrl = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@AQ_LOWATER = common dso_local global i32 0, align 4
@AQ_BUFSZ = common dso_local global i32 0, align 4
@AU_FS_MINFREE = common dso_local global i32 0, align 4
@AU_IPv4 = common dso_local global i32 0, align 4
@audit_kinfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@audit_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"audit_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@audit_worker_cv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"audit_worker_cv\00", align 1
@audit_watermark_cv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"audit_watermark_cv\00", align 1
@audit_fail_cv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"audit_fail_cv\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"audit_record\00", align 1
@audit_record_ctor = common dso_local global i32 0, align 4
@audit_record_dtor = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@audit_record_zone = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@audit_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @audit_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_init() #0 {
  store i64 0, i64* @audit_trail_enabled, align 8
  store i64 0, i64* @audit_trail_suspended, align 8
  store i32 0, i32* @audit_syscalls_enabled, align 4
  store i64 0, i64* @audit_panic_on_write_fail, align 8
  store i64 0, i64* @audit_fail_stop, align 8
  store i64 0, i64* @audit_in_failure, align 8
  store i64 0, i64* @audit_argv, align 8
  store i64 0, i64* @audit_arge, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @audit_fstat, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @audit_fstat, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @audit_nae_mask, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @audit_nae_mask, i32 0, i32 0), align 8
  %1 = call i32 @TAILQ_INIT(i32* @audit_q)
  store i64 0, i64* @audit_q_len, align 8
  store i64 0, i64* @audit_pre_q_len, align 8
  %2 = load i32, i32* @AQ_HIWATER, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @audit_qctrl, i32 0, i32 3), align 4
  %3 = load i32, i32* @AQ_LOWATER, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @audit_qctrl, i32 0, i32 2), align 4
  %4 = load i32, i32* @AQ_BUFSZ, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @audit_qctrl, i32 0, i32 1), align 4
  %5 = load i32, i32* @AU_FS_MINFREE, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @audit_qctrl, i32 0, i32 0), align 4
  %6 = load i32, i32* @AU_IPv4, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @audit_kinfo, i32 0, i32 0, i32 1), align 8
  %7 = load i32, i32* @INADDR_ANY, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @audit_kinfo, i32 0, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* @audit_mtx, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  %12 = call i32 (...) @KINFO_LOCK_INIT()
  %13 = call i32 @cv_init(i32* @audit_worker_cv, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cv_init(i32* @audit_watermark_cv, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @cv_init(i32* @audit_fail_cv, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* @audit_record_ctor, align 4
  %17 = load i32, i32* @audit_record_dtor, align 4
  %18 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %19 = call i32 @uma_zcreate(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 %16, i32 %17, i32* null, i32* null, i32 %18, i32 0)
  store i32 %19, i32* @audit_record_zone, align 4
  %20 = call i32 (...) @audit_syscalls_enabled_update()
  %21 = call i32 (...) @kau_init()
  %22 = call i32 (...) @audit_trigger_init()
  %23 = load i32, i32* @shutdown_pre_sync, align 4
  %24 = load i32, i32* @audit_shutdown, align 4
  %25 = load i32, i32* @SHUTDOWN_PRI_FIRST, align 4
  %26 = call i32 @EVENTHANDLER_REGISTER(i32 %23, i32 %24, i32* null, i32 %25)
  %27 = call i32 (...) @audit_worker_init()
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @KINFO_LOCK_INIT(...) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @audit_syscalls_enabled_update(...) #1

declare dso_local i32 @kau_init(...) #1

declare dso_local i32 @audit_trigger_init(...) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @audit_worker_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
