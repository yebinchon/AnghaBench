; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kern_reboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kern_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kern_reboot.once = internal global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@rebooting = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i64 0, align 8
@shutdown_pre_sync = common dso_local global i32 0, align 4
@cold = common dso_local global i32 0, align 4
@RB_NOSYNC = common dso_local global i32 0, align 4
@show_busybufs = common dso_local global i32 0, align 4
@shutdown_post_sync = common dso_local global i32 0, align 4
@RB_HALT = common dso_local global i32 0, align 4
@RB_DUMP = common dso_local global i32 0, align 4
@dumping = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kern_reboot(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %6, %1
  %4 = call i64 @mtx_owned(i32* @Giant)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 @mtx_unlock(i32* @Giant)
  br label %3

8:                                                ; preds = %3
  store i32 1, i32* @rebooting, align 4
  store i64 0, i64* @kdb_active, align 8
  %9 = load i32, i32* @shutdown_pre_sync, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @EVENTHANDLER_INVOKE(i32 %9, i32 %10)
  %12 = load i32, i32* @cold, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RB_NOSYNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @kern_reboot.once, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  store i32 1, i32* @kern_reboot.once, align 4
  %23 = load i32, i32* @show_busybufs, align 4
  %24 = call i32 @bufshutdown(i32 %23)
  br label %25

25:                                               ; preds = %22, %19, %14, %8
  %26 = call i32 (...) @print_uptime()
  %27 = call i32 (...) @cngrab()
  %28 = load i32, i32* @shutdown_post_sync, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @EVENTHANDLER_INVOKE(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @RB_HALT, align 4
  %33 = load i32, i32* @RB_DUMP, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @RB_DUMP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load i32, i32* @cold, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @dumping, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @doadump(i32 %45)
  br label %47

47:                                               ; preds = %44, %41, %38, %25
  %48 = load i32, i32* @shutdown_final, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @EVENTHANDLER_INVOKE(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %51, %47
  br label %51
}

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i32) #1

declare dso_local i32 @bufshutdown(i32) #1

declare dso_local i32 @print_uptime(...) #1

declare dso_local i32 @cngrab(...) #1

declare dso_local i32 @doadump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
