; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_propagate_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_propagate_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.umtx_q*, %struct.TYPE_2__* }
%struct.umtx_q = type { %struct.umtx_pi* }
%struct.umtx_pi = type { %struct.thread* }
%struct.TYPE_2__ = type { i64 }

@umtx_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@P_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @umtx_propagate_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtx_propagate_priority(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.umtx_q*, align 8
  %4 = alloca %struct.umtx_pi*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* @umtx_lock, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = call i32 @UPRI(%struct.thread* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 1
  %12 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  store %struct.umtx_q* %12, %struct.umtx_q** %3, align 8
  %13 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %14 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %13, i32 0, i32 0
  %15 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  store %struct.umtx_pi* %15, %struct.umtx_pi** %4, align 8
  %16 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %17 = icmp eq %struct.umtx_pi* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %82

19:                                               ; preds = %1
  %20 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %21 = call i64 @umtx_pi_check_loop(%struct.umtx_pi* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %82

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %78, %24
  %26 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %27 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %26, i32 0, i32 0
  %28 = load %struct.thread*, %struct.thread** %27, align 8
  store %struct.thread* %28, %struct.thread** %2, align 8
  %29 = load %struct.thread*, %struct.thread** %2, align 8
  %30 = icmp eq %struct.thread* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.thread*, %struct.thread** %2, align 8
  %33 = load %struct.thread*, %struct.thread** @curthread, align 8
  %34 = icmp eq %struct.thread* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %25
  br label %82

36:                                               ; preds = %31
  %37 = load %struct.thread*, %struct.thread** %2, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @MPASS(i32 %41)
  %43 = load %struct.thread*, %struct.thread** %2, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @P_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @MPASS(i32 %50)
  %52 = load %struct.thread*, %struct.thread** %2, align 8
  %53 = call i32 @thread_lock(%struct.thread* %52)
  %54 = load %struct.thread*, %struct.thread** %2, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %36
  %60 = load %struct.thread*, %struct.thread** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @sched_lend_user_prio(%struct.thread* %60, i32 %61)
  br label %66

63:                                               ; preds = %36
  %64 = load %struct.thread*, %struct.thread** %2, align 8
  %65 = call i32 @thread_unlock(%struct.thread* %64)
  br label %82

66:                                               ; preds = %59
  %67 = load %struct.thread*, %struct.thread** %2, align 8
  %68 = call i32 @thread_unlock(%struct.thread* %67)
  %69 = load %struct.thread*, %struct.thread** %2, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 1
  %71 = load %struct.umtx_q*, %struct.umtx_q** %70, align 8
  store %struct.umtx_q* %71, %struct.umtx_q** %3, align 8
  %72 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %73 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %72, i32 0, i32 0
  %74 = load %struct.umtx_pi*, %struct.umtx_pi** %73, align 8
  store %struct.umtx_pi* %74, %struct.umtx_pi** %4, align 8
  %75 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %76 = icmp eq %struct.umtx_pi* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  %79 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %80 = load %struct.thread*, %struct.thread** %2, align 8
  %81 = call i32 @umtx_pi_adjust_thread(%struct.umtx_pi* %79, %struct.thread* %80)
  br label %25

82:                                               ; preds = %18, %23, %35, %77, %63
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @UPRI(%struct.thread*) #1

declare dso_local i64 @umtx_pi_check_loop(%struct.umtx_pi*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_lend_user_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @umtx_pi_adjust_thread(%struct.umtx_pi*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
