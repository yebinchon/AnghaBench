; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_resetpriority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_resetpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PRI_TIMESHARE = common dso_local global i64 0, align 8
@PUSER = common dso_local global i64 0, align 8
@INVERSE_ESTCPU_WEIGHT = common dso_local global i32 0, align 4
@NICE_WEIGHT = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@PRI_MIN_TIMESHARE = common dso_local global i32 0, align 4
@PRI_MAX_TIMESHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @resetpriority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resetpriority(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PRI_TIMESHARE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load i64, i64* @PUSER, align 8
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = call %struct.TYPE_4__* @td_get_sched(%struct.thread* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @INVERSE_ESTCPU_WEIGHT, align 4
  %17 = sdiv i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %11, %18
  %20 = load i32, i32* @NICE_WEIGHT, align 4
  %21 = load %struct.thread*, %struct.thread** %2, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PRIO_MIN, align 4
  %27 = sub nsw i32 %25, %26
  %28 = mul nsw i32 %20, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %19, %29
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @PRI_MIN_TIMESHARE, align 4
  %33 = call i32 @max(i64 %31, i32 %32)
  %34 = load i32, i32* @PRI_MAX_TIMESHARE, align 4
  %35 = call i64 @min(i32 %33, i32 %34)
  store i64 %35, i64* %3, align 8
  %36 = load %struct.thread*, %struct.thread** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @sched_user_prio(%struct.thread* %36, i64 %37)
  br label %39

39:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.TYPE_4__* @td_get_sched(%struct.thread*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @sched_user_prio(%struct.thread*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
