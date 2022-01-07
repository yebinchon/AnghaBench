; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_power.c_power_pm_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_power.c_power_pm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@power_pm_type = common dso_local global i64 0, align 8
@POWER_PM_TYPE_NONE = common dso_local global i64 0, align 8
@power_pm_fn = common dso_local global i32 0, align 4
@power_pm_arg = common dso_local global i8* null, align 8
@power_pm_task = common dso_local global i32 0, align 4
@power_pm_deferred_fn = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_pm_register(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* @power_pm_type, align 8
  %9 = load i64, i64* @POWER_PM_TYPE_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @power_pm_type, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* @power_pm_type, align 8
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* @power_pm_fn, align 4
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** @power_pm_arg, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @power_pm_deferred_fn, align 4
  %20 = call i32 @TASK_INIT(i32* @power_pm_task, i32 0, i32 %19, i32* null)
  br label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
