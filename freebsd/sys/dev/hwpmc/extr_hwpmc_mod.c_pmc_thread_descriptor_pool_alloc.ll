; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_thread_descriptor_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_thread_descriptor_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_thread = type { i32 }

@pmc_threadfreelist_mtx = common dso_local global i32 0, align 4
@pmc_threadfreelist = common dso_local global i32 0, align 4
@pt_next = common dso_local global i32 0, align 4
@pmc_threadfreelist_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmc_thread* ()* @pmc_thread_descriptor_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmc_thread* @pmc_thread_descriptor_pool_alloc() #0 {
  %1 = alloca %struct.pmc_thread*, align 8
  %2 = call i32 @mtx_lock_spin(i32* @pmc_threadfreelist_mtx)
  %3 = call %struct.pmc_thread* @LIST_FIRST(i32* @pmc_threadfreelist)
  store %struct.pmc_thread* %3, %struct.pmc_thread** %1, align 8
  %4 = icmp ne %struct.pmc_thread* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load %struct.pmc_thread*, %struct.pmc_thread** %1, align 8
  %7 = load i32, i32* @pt_next, align 4
  %8 = call i32 @LIST_REMOVE(%struct.pmc_thread* %6, i32 %7)
  %9 = load i32, i32* @pmc_threadfreelist_entries, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @pmc_threadfreelist_entries, align 4
  br label %11

11:                                               ; preds = %5, %0
  %12 = call i32 @mtx_unlock_spin(i32* @pmc_threadfreelist_mtx)
  %13 = load %struct.pmc_thread*, %struct.pmc_thread** %1, align 8
  ret %struct.pmc_thread* %13
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.pmc_thread* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pmc_thread*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
