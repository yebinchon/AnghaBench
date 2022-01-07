; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_autoconf.c_boot_run_interrupt_driven_config_hooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_autoconf.c_boot_run_interrupt_driven_config_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"config hooks\00", align 1
@intr_config_hook_lock = common dso_local global i32 0, align 4
@intr_config_hook_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"conifhk\00", align 1
@WARNING_INTERVAL_SECS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @boot_run_interrupt_driven_config_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @boot_run_interrupt_driven_config_hooks(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @run_interrupt_driven_config_hooks()
  %5 = call i32 @TSWAIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @mtx_lock(i32* @intr_config_hook_lock)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = call i32 @TAILQ_EMPTY(i32* @intr_config_hook_list)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, i32* @WARNING_INTERVAL_SECS, align 4
  %13 = load i32, i32* @hz, align 4
  %14 = mul nsw i32 %12, %13
  %15 = call i64 @msleep(i32* @intr_config_hook_list, i32* @intr_config_hook_lock, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* @EWOULDBLOCK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = call i32 @mtx_unlock(i32* @intr_config_hook_lock)
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @run_interrupt_driven_config_hooks_warning(i32 %22)
  %24 = call i32 @mtx_lock(i32* @intr_config_hook_lock)
  br label %25

25:                                               ; preds = %18, %11
  br label %7

26:                                               ; preds = %7
  %27 = call i32 @mtx_unlock(i32* @intr_config_hook_lock)
  %28 = call i32 @TSUNWAIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @run_interrupt_driven_config_hooks(...) #1

declare dso_local i32 @TSWAIT(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @run_interrupt_driven_config_hooks_warning(i32) #1

declare dso_local i32 @TSUNWAIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
