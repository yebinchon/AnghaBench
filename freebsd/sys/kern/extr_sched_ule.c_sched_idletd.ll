; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_idletd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_idletd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.tdq = type { i64, i32, i32, i32 }

@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@SW_VOL = common dso_local global i32 0, align 4
@SWT_IDLE = common dso_local global i32 0, align 4
@sched_idlespinthresh = common dso_local global i32 0, align 4
@sched_idlespins = common dso_local global i32 0, align 4
@always_steal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_idletd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.tdq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MA_NOTOWNED, align 4
  %9 = call i32 @mtx_assert(i32* @Giant, i32 %8)
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %3, align 8
  %11 = call %struct.tdq* (...) @TDQ_SELF()
  store %struct.tdq* %11, %struct.tdq** %4, align 8
  %12 = call i32 (...) @THREAD_NO_SLEEPING()
  store i32 -1, i32* %5, align 4
  br label %13

13:                                               ; preds = %108, %107, %85, %76, %1
  %14 = load %struct.tdq*, %struct.tdq** %4, align 8
  %15 = getelementptr inbounds %struct.tdq, %struct.tdq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = call i32 @thread_lock(%struct.thread* %19)
  %21 = load i32, i32* @SW_VOL, align 4
  %22 = load i32, i32* @SWT_IDLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mi_switch(i32 %23, i32* null)
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = call i32 @thread_unlock(%struct.thread* %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.tdq*, %struct.tdq** %4, align 8
  %29 = getelementptr inbounds %struct.tdq, %struct.tdq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tdq*, %struct.tdq** %4, align 8
  %32 = getelementptr inbounds %struct.tdq, %struct.tdq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.tdq*, %struct.tdq** %4, align 8
  %37 = call i64 @TDQ_IDLESPIN(%struct.tdq* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @sched_idlespinthresh, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @sched_idlespins, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.tdq*, %struct.tdq** %4, align 8
  %50 = getelementptr inbounds %struct.tdq, %struct.tdq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %59

54:                                               ; preds = %48
  %55 = call i32 (...) @cpu_spinwait()
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %44

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %39, %27
  %61 = load %struct.tdq*, %struct.tdq** %4, align 8
  %62 = getelementptr inbounds %struct.tdq, %struct.tdq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tdq*, %struct.tdq** %4, align 8
  %65 = getelementptr inbounds %struct.tdq, %struct.tdq* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.tdq*, %struct.tdq** %4, align 8
  %69 = getelementptr inbounds %struct.tdq, %struct.tdq* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %60
  br label %13

77:                                               ; preds = %72
  %78 = load %struct.tdq*, %struct.tdq** %4, align 8
  %79 = getelementptr inbounds %struct.tdq, %struct.tdq* %78, i32 0, i32 3
  store i32 1, i32* %79, align 8
  %80 = call i32 (...) @atomic_thread_fence_seq_cst()
  %81 = load %struct.tdq*, %struct.tdq** %4, align 8
  %82 = getelementptr inbounds %struct.tdq, %struct.tdq* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.tdq*, %struct.tdq** %4, align 8
  %87 = getelementptr inbounds %struct.tdq, %struct.tdq* %86, i32 0, i32 3
  store i32 0, i32* %87, align 8
  br label %13

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 %89, 4
  %91 = load i32, i32* @sched_idlespinthresh, align 4
  %92 = icmp sgt i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @cpu_idle(i32 %93)
  %95 = load %struct.tdq*, %struct.tdq** %4, align 8
  %96 = getelementptr inbounds %struct.tdq, %struct.tdq* %95, i32 0, i32 3
  store i32 0, i32* %96, align 8
  %97 = load %struct.tdq*, %struct.tdq** %4, align 8
  %98 = getelementptr inbounds %struct.tdq, %struct.tdq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.tdq*, %struct.tdq** %4, align 8
  %101 = getelementptr inbounds %struct.tdq, %struct.tdq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %88
  br label %13

108:                                              ; preds = %88
  %109 = load %struct.tdq*, %struct.tdq** %4, align 8
  %110 = getelementptr inbounds %struct.tdq, %struct.tdq* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %13
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.tdq* @TDQ_SELF(...) #1

declare dso_local i32 @THREAD_NO_SLEEPING(...) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i64 @TDQ_IDLESPIN(%struct.tdq*) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @cpu_idle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
