; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64 }
%struct.thread = type { i32 }

@max_threads_per_proc = common dso_local global i64 0, align 8
@max_threads_hits = common dso_local global i32 0, align 4
@EPROCLIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_thr_alloc(%struct.proc* %0, i32 %1, %struct.thread** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread**, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread** %2, %struct.thread*** %7, align 8
  %8 = load %struct.proc*, %struct.proc** %5, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @max_threads_per_proc, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @max_threads_hits, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @max_threads_hits, align 4
  %16 = load i32, i32* @EPROCLIM, align 4
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.thread* @thread_alloc(i32 %18)
  %20 = load %struct.thread**, %struct.thread*** %7, align 8
  store %struct.thread* %19, %struct.thread** %20, align 8
  %21 = load %struct.thread**, %struct.thread*** %7, align 8
  %22 = load %struct.thread*, %struct.thread** %21, align 8
  %23 = icmp eq %struct.thread* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %24, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.thread* @thread_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
