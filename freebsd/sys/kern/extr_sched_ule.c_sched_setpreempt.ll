; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_setpreempt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_setpreempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@TDF_NEEDRESCHED = common dso_local global i32 0, align 4
@panicstr = common dso_local global i32* null, align 8
@cold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @sched_setpreempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_setpreempt(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** @curthread, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %6, i32 %7)
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %3, align 8
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @TDF_NEEDRESCHED, align 4
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load i32*, i32** @panicstr, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @cold, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = call i64 @TD_IS_INHIBITED(%struct.thread* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32, %28, %25
  br label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @sched_shouldpreempt(i32 %41, i32 %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.thread*, %struct.thread** %3, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %45, %39
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i64 @TD_IS_INHIBITED(%struct.thread*) #1

declare dso_local i32 @sched_shouldpreempt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
