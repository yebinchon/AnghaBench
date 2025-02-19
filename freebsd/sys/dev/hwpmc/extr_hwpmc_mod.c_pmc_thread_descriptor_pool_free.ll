; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_thread_descriptor_pool_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_thread_descriptor_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_thread = type { i32 }

@THREADENTRY_SIZE = common dso_local global i32 0, align 4
@pmc_threadfreelist_mtx = common dso_local global i32 0, align 4
@pmc_threadfreelist = common dso_local global i32 0, align 4
@pt_next = common dso_local global i32 0, align 4
@pmc_threadfreelist_entries = common dso_local global i64 0, align 8
@pmc_threadfreelist_max = common dso_local global i64 0, align 8
@free_gtask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmc_thread*)* @pmc_thread_descriptor_pool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_thread_descriptor_pool_free(%struct.pmc_thread* %0) #0 {
  %2 = alloca %struct.pmc_thread*, align 8
  store %struct.pmc_thread* %0, %struct.pmc_thread** %2, align 8
  %3 = load %struct.pmc_thread*, %struct.pmc_thread** %2, align 8
  %4 = icmp eq %struct.pmc_thread* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.pmc_thread*, %struct.pmc_thread** %2, align 8
  %8 = load i32, i32* @THREADENTRY_SIZE, align 4
  %9 = call i32 @memset(%struct.pmc_thread* %7, i32 0, i32 %8)
  %10 = call i32 @mtx_lock_spin(i32* @pmc_threadfreelist_mtx)
  %11 = load %struct.pmc_thread*, %struct.pmc_thread** %2, align 8
  %12 = load i32, i32* @pt_next, align 4
  %13 = call i32 @LIST_INSERT_HEAD(i32* @pmc_threadfreelist, %struct.pmc_thread* %11, i32 %12)
  %14 = load i64, i64* @pmc_threadfreelist_entries, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @pmc_threadfreelist_entries, align 8
  %16 = load i64, i64* @pmc_threadfreelist_entries, align 8
  %17 = load i64, i64* @pmc_threadfreelist_max, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = call i32 @GROUPTASK_ENQUEUE(i32* @free_gtask)
  br label %21

21:                                               ; preds = %19, %6
  %22 = call i32 @mtx_unlock_spin(i32* @pmc_threadfreelist_mtx)
  br label %23

23:                                               ; preds = %21, %5
  ret void
}

declare dso_local i32 @memset(%struct.pmc_thread*, i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.pmc_thread*, i32) #1

declare dso_local i32 @GROUPTASK_ENQUEUE(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
