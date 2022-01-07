; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_barrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32, i64*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"idle phase has activity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intr_event*)* @intr_event_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_event_barrier(%struct.intr_event* %0) #0 {
  %2 = alloca %struct.intr_event*, align 8
  %3 = alloca i32, align 4
  store %struct.intr_event* %0, %struct.intr_event** %2, align 8
  %4 = load %struct.intr_event*, %struct.intr_event** %2, align 8
  %5 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %4, i32 0, i32 2
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.intr_event*, %struct.intr_event** %2, align 8
  %9 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.intr_event*, %struct.intr_event** %2, align 8
  %12 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %13, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.intr_event*, %struct.intr_event** %2, align 8
  %25 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %24, i32 0, i32 0
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @atomic_store_rel_int(i32* %25, i32 %29)
  %31 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %32

32:                                               ; preds = %41, %1
  %33 = load %struct.intr_event*, %struct.intr_event** %2, align 8
  %34 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @cpu_spinwait()
  br label %32

43:                                               ; preds = %32
  %44 = call i32 (...) @atomic_thread_fence_acq()
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
