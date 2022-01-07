; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_release_args_kva.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_release_args_kva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec_args_kva = type { i64, i64 }

@exec_map = common dso_local global i32 0, align 4
@exec_map_entry_size = common dso_local global i64 0, align 8
@MADV_FREE = common dso_local global i32 0, align 4
@exec_args_kva = common dso_local global i32 0, align 4
@exec_args_kva_mtx = common dso_local global i32 0, align 4
@exec_args_kva_freelist = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exec_args_kva*, i64)* @exec_release_args_kva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_release_args_kva(%struct.exec_args_kva* %0, i64 %1) #0 {
  %3 = alloca %struct.exec_args_kva*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.exec_args_kva* %0, %struct.exec_args_kva** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %7 = getelementptr inbounds %struct.exec_args_kva, %struct.exec_args_kva* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %10 = getelementptr inbounds %struct.exec_args_kva, %struct.exec_args_kva* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @exec_map, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @exec_map_entry_size, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @MADV_FREE, align 4
  %21 = call i32 @vm_map_madvise(i32 %15, i64 %16, i64 %19, i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %24 = getelementptr inbounds %struct.exec_args_kva, %struct.exec_args_kva* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %14, %2
  %26 = load i32, i32* @exec_args_kva, align 4
  %27 = call i64 @DPCPU_PTR(i32 %26)
  %28 = inttoptr i64 %27 to i64*
  %29 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %30 = ptrtoint %struct.exec_args_kva* %29 to i64
  %31 = call i32 @atomic_cmpset_ptr(i64* %28, i64 0, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = call i32 @mtx_lock(i32* @exec_args_kva_mtx)
  %35 = load %struct.exec_args_kva*, %struct.exec_args_kva** %3, align 8
  %36 = load i32, i32* @next, align 4
  %37 = call i32 @SLIST_INSERT_HEAD(i32* @exec_args_kva_freelist, %struct.exec_args_kva* %35, i32 %36)
  %38 = call i32 @wakeup_one(i32* @exec_args_kva_freelist)
  %39 = call i32 @mtx_unlock(i32* @exec_args_kva_mtx)
  br label %40

40:                                               ; preds = %33, %25
  ret void
}

declare dso_local i32 @vm_map_madvise(i32, i64, i64, i32) #1

declare dso_local i32 @atomic_cmpset_ptr(i64*, i64, i64) #1

declare dso_local i64 @DPCPU_PTR(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.exec_args_kva*, i32) #1

declare dso_local i32 @wakeup_one(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
