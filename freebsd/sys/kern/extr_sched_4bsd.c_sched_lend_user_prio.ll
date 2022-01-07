; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_lend_user_prio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_lend_user_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TDF_NEEDRESCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_lend_user_prio(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @min(i32 %11, i32 %14)
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sched_prio(%struct.thread* %26, i64 %29)
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.thread*, %struct.thread** %3, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @TDF_NEEDRESCHED, align 4
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %31
  br label %46

46:                                               ; preds = %45, %25
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @sched_prio(%struct.thread*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
