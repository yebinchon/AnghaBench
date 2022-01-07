; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pf_rules_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pf rulesets\00", align 1
@pf_ioctl_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pf ioctl\00", align 1
@pf_end_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"pf end thread\00", align 1
@pf_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@PF_NAME = common dso_local global i32 0, align 4
@pf_dev = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@pf_end_threads = common dso_local global i64 0, align 8
@pf_purge_thread = common dso_local global i32 0, align 4
@pf_purge_proc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pf purge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @rm_init(i32* @pf_rules_lock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @sx_init(i32* @pf_ioctl_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @sx_init(i32* @pf_end_lock, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (...) @pf_mtag_initialize()
  %7 = load i32, i32* @UID_ROOT, align 4
  %8 = load i32, i32* @GID_WHEEL, align 4
  %9 = load i32, i32* @PF_NAME, align 4
  %10 = call i32* @make_dev(i32* @pf_cdevsw, i32 0, i32 %7, i32 %8, i32 384, i32 %9)
  store i32* %10, i32** @pf_dev, align 8
  %11 = load i32*, i32** @pf_dev, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %1, align 4
  br label %24

15:                                               ; preds = %0
  store i64 0, i64* @pf_end_threads, align 8
  %16 = load i32, i32* @pf_purge_thread, align 4
  %17 = call i32 @kproc_create(i32 %16, i32* null, i32* @pf_purge_proc, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %1, align 4
  br label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @pfi_initialize()
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %20, %13
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @pf_mtag_initialize(...) #1

declare dso_local i32* @make_dev(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kproc_create(i32, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @pfi_initialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
