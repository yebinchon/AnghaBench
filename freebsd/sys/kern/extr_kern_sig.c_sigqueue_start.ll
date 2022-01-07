; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigqueue_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigqueue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ksiginfo\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@ksiginfo_zone = common dso_local global i32 0, align 4
@preallocate_siginfo = common dso_local global i32 0, align 4
@CTL_P1003_1B_REALTIME_SIGNALS = common dso_local global i32 0, align 4
@_POSIX_REALTIME_SIGNALS = common dso_local global i64 0, align 8
@CTL_P1003_1B_RTSIG_MAX = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i64 0, align 8
@SIGRTMIN = common dso_local global i64 0, align 8
@CTL_P1003_1B_SIGQUEUE_MAX = common dso_local global i32 0, align 4
@max_pending_per_proc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sigqueue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigqueue_start() #0 {
  %1 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %2 = call i32 @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %1, i32 0)
  store i32 %2, i32* @ksiginfo_zone, align 4
  %3 = load i32, i32* @ksiginfo_zone, align 4
  %4 = load i32, i32* @preallocate_siginfo, align 4
  %5 = call i32 @uma_prealloc(i32 %3, i32 %4)
  %6 = load i32, i32* @CTL_P1003_1B_REALTIME_SIGNALS, align 4
  %7 = load i64, i64* @_POSIX_REALTIME_SIGNALS, align 8
  %8 = call i32 @p31b_setcfg(i32 %6, i64 %7)
  %9 = load i32, i32* @CTL_P1003_1B_RTSIG_MAX, align 4
  %10 = load i64, i64* @SIGRTMAX, align 8
  %11 = load i64, i64* @SIGRTMIN, align 8
  %12 = sub nsw i64 %10, %11
  %13 = add nsw i64 %12, 1
  %14 = call i32 @p31b_setcfg(i32 %9, i64 %13)
  %15 = load i32, i32* @CTL_P1003_1B_SIGQUEUE_MAX, align 4
  %16 = load i64, i64* @max_pending_per_proc, align 8
  %17 = call i32 @p31b_setcfg(i32 %15, i64 %16)
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_prealloc(i32, i32) #1

declare dso_local i32 @p31b_setcfg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
