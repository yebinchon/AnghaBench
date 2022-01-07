; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pf_end_lock = common dso_local global i32 0, align 4
@pf_end_threads = common dso_local global i32 0, align 4
@pf_purge_thread = common dso_local global i32 0, align 4
@pf_purge_proc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pftmo\00", align 1
@pf_dev = common dso_local global i32* null, align 8
@pf_rules_lock = common dso_local global i32 0, align 4
@pf_ioctl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_unload() #0 {
  %1 = call i32 @sx_xlock(i32* @pf_end_lock)
  store i32 1, i32* @pf_end_threads, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = load i32, i32* @pf_end_threads, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load i32, i32* @pf_purge_thread, align 4
  %7 = call i32 @wakeup_one(i32 %6)
  %8 = load i32, i32* @pf_purge_proc, align 4
  %9 = call i32 @sx_sleep(i32 %8, i32* @pf_end_lock, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %2

10:                                               ; preds = %2
  %11 = call i32 @sx_xunlock(i32* @pf_end_lock)
  %12 = load i32*, i32** @pf_dev, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** @pf_dev, align 8
  %16 = call i32 @destroy_dev(i32* %15)
  br label %17

17:                                               ; preds = %14, %10
  %18 = call i32 (...) @pfi_cleanup()
  %19 = call i32 @rm_destroy(i32* @pf_rules_lock)
  %20 = call i32 @sx_destroy(i32* @pf_ioctl_lock)
  %21 = call i32 @sx_destroy(i32* @pf_end_lock)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @sx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @pfi_cleanup(...) #1

declare dso_local i32 @rm_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
