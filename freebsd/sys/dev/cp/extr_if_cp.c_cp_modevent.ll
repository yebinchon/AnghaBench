; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp_modevent.load_count = internal global i32 0, align 4
@timeout_handle = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@cp_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Removing device entry for Tau-PCI\0A\00", align 1
@typestruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @cp_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %30 [
    i32 130, label %8
    i32 128, label %16
    i32 129, label %29
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @cp_modevent.load_count, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @cp_modevent.load_count, align 4
  %11 = call i32 @callout_init(i32* @timeout_handle, i32 1)
  %12 = load i32, i32* @hz, align 4
  %13 = mul nsw i32 %12, 5
  %14 = load i32, i32* @cp_timeout, align 4
  %15 = call i32 @callout_reset(i32* @timeout_handle, i32 %13, i32 %14, i32 0)
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @cp_modevent.load_count, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @callout_drain(i32* @timeout_handle)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @callout_stop(i32* @timeout_handle)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @cp_modevent.load_count, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @cp_modevent.load_count, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %3, %29, %26, %8
  ret i32 0
}

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
