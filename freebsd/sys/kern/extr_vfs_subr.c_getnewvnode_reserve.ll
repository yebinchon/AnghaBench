; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_getnewvnode_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_getnewvnode_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }

@vnode_free_list_mtx = common dso_local global i32 0, align 4
@numvnodes = common dso_local global i64 0, align 8
@desiredvnodes = common dso_local global i64 0, align 8
@freevnodes = common dso_local global i64 0, align 8
@wantfreevnodes = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getnewvnode_reserve(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.thread*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 @mtx_lock(i32* @vnode_free_list_mtx)
  %5 = load i64, i64* @numvnodes, align 8
  %6 = load i64, i64* %2, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @desiredvnodes, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i64, i64* @freevnodes, align 8
  %12 = load i64, i64* @wantfreevnodes, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i64, i64* @numvnodes, align 8
  %16 = load i64, i64* %2, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @desiredvnodes, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* @freevnodes, align 8
  %21 = load i64, i64* @wantfreevnodes, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i32 @ulmin(i64 %19, i64 %22)
  %24 = call i32 @vnlru_free_locked(i32 %23, i32* null)
  br label %25

25:                                               ; preds = %14, %10, %1
  %26 = call i32 @mtx_unlock(i32* @vnode_free_list_mtx)
  %27 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %27, %struct.thread** %3, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @atomic_fetchadd_long(i64* @numvnodes, i64 %28)
  %30 = load i64, i64* %2, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @desiredvnodes, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i64, i64* %2, align 8
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = call i32 (...) @vcheckspace()
  br label %64

41:                                               ; preds = %25
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @atomic_subtract_long(i64* @numvnodes, i64 %42)
  br label %44

44:                                               ; preds = %41
  %45 = call i32 @mtx_lock(i32* @vnode_free_list_mtx)
  br label %46

46:                                               ; preds = %60, %44
  %47 = load i64, i64* %2, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = call i64 @getnewvnode_wait(i32 0)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i64, i64* %2, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %2, align 8
  %55 = load %struct.thread*, %struct.thread** %3, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = call i32 @atomic_add_long(i64* @numvnodes, i32 1)
  br label %60

60:                                               ; preds = %52, %49
  br label %46

61:                                               ; preds = %46
  %62 = call i32 (...) @vcheckspace()
  %63 = call i32 @mtx_unlock(i32* @vnode_free_list_mtx)
  br label %64

64:                                               ; preds = %61, %34
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vnlru_free_locked(i32, i32*) #1

declare dso_local i32 @ulmin(i64, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @atomic_fetchadd_long(i64*, i64) #1

declare dso_local i32 @vcheckspace(...) #1

declare dso_local i32 @atomic_subtract_long(i64*, i64) #1

declare dso_local i64 @getnewvnode_wait(i32) #1

declare dso_local i32 @atomic_add_long(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
