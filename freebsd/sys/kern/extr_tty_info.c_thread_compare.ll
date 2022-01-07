; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_info.c_thread_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_info.c_thread_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@TDF_SINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread*)* @thread_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_compare(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = icmp eq %struct.thread* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = call i32 @thread_lock(%struct.thread* %16)
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = call i32 @TD_IS_RUNNING(%struct.thread* %18)
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = call i32 @TD_ON_RUNQ(%struct.thread* %20)
  %22 = or i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TDF_SINTR, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = call i64 @sched_pctcpu(%struct.thread* %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = call i32 @thread_unlock(%struct.thread* %30)
  %32 = load %struct.thread*, %struct.thread** %5, align 8
  %33 = call i32 @thread_lock(%struct.thread* %32)
  %34 = load %struct.thread*, %struct.thread** %5, align 8
  %35 = call i32 @TD_IS_RUNNING(%struct.thread* %34)
  %36 = load %struct.thread*, %struct.thread** %5, align 8
  %37 = call i32 @TD_ON_RUNQ(%struct.thread* %36)
  %38 = or i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.thread*, %struct.thread** %5, align 8
  %40 = call i64 @sched_pctcpu(%struct.thread* %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TDF_SINTR, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.thread*, %struct.thread** %5, align 8
  %47 = call i32 @thread_unlock(%struct.thread* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @TESTAB(i32 %48, i32 %49)
  switch i32 %50, label %54 [
    i32 129, label %51
    i32 128, label %52
    i32 130, label %53
  ]

51:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %76

52:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %76

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %15, %53
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %76

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %76

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @TESTAB(i32 %65, i32 %66)
  switch i32 %67, label %71 [
    i32 129, label %68
    i32 128, label %69
    i32 130, label %70
  ]

68:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %76

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %76

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %64, %70
  %72 = load %struct.thread*, %struct.thread** %4, align 8
  %73 = load %struct.thread*, %struct.thread** %5, align 8
  %74 = icmp ult %struct.thread* %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %69, %68, %63, %58, %52, %51, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @TD_ON_RUNQ(%struct.thread*) #1

declare dso_local i64 @sched_pctcpu(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @TESTAB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
