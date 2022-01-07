; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_setlowpri.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_setlowpri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i64 }
%struct.thread = type { i64 }
%struct.TYPE_2__ = type { %struct.thread* }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tdq*, %struct.thread*)* @tdq_setlowpri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdq_setlowpri(%struct.tdq* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.tdq*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.tdq* %0, %struct.tdq** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.tdq*, %struct.tdq** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @TDQ_LOCK_ASSERT(%struct.tdq* %6, i32 %7)
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = icmp eq %struct.thread* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.tdq*, %struct.tdq** %3, align 8
  %13 = call i32 @TDQ_ID(%struct.tdq* %12)
  %14 = call %struct.TYPE_2__* @pcpu_find(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.thread*, %struct.thread** %15, align 8
  store %struct.thread* %16, %struct.thread** %4, align 8
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.tdq*, %struct.tdq** %3, align 8
  %19 = call %struct.thread* @tdq_choose(%struct.tdq* %18)
  store %struct.thread* %19, %struct.thread** %5, align 8
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = icmp eq %struct.thread* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22, %17
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tdq*, %struct.tdq** %3, align 8
  %35 = getelementptr inbounds %struct.tdq, %struct.tdq* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %42

36:                                               ; preds = %22
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tdq*, %struct.tdq** %3, align 8
  %41 = getelementptr inbounds %struct.tdq, %struct.tdq* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  ret void
}

declare dso_local i32 @TDQ_LOCK_ASSERT(%struct.tdq*, i32) #1

declare dso_local %struct.TYPE_2__* @pcpu_find(i32) #1

declare dso_local i32 @TDQ_ID(%struct.tdq*) #1

declare dso_local %struct.thread* @tdq_choose(%struct.tdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
