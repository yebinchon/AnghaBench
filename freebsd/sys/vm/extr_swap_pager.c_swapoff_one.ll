; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapoff_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapoff_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swdevt = type { i64, i32, i32*, i32 (i32, %struct.swdevt*)*, i32, i32 }
%struct.ucred = type { i32 }

@swdev_syscall_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@swap_pager_avail = common dso_local global i64 0, align 8
@nswap_lowat = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sw_dev_mtx = common dso_local global i32 0, align 4
@SW_CLOSING = common dso_local global i32 0, align 4
@swap_total = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@swtailq = common dso_local global i32 0, align 4
@sw_list = common dso_local global i32 0, align 4
@nswapdev = common dso_local global i64 0, align 8
@swap_pager_full = common dso_local global i32 0, align 4
@swap_pager_almost_full = common dso_local global i32 0, align 4
@swdevhd = common dso_local global %struct.swdevt* null, align 8
@M_VMPGDATA = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swdevt*, %struct.ucred*)* @swapoff_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swapoff_one(%struct.swdevt* %0, %struct.ucred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swdevt*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i64, align 8
  store %struct.swdevt* %0, %struct.swdevt** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  %7 = load i32, i32* @SA_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @swdev_syscall_lock, i32 %7)
  %9 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %10 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = call i64 (...) @vm_free_count()
  %13 = load i64, i64* @swap_pager_avail, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @nswap_lowat, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %23 = load i32, i32* @SW_CLOSING, align 4
  %24 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %25 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %29 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @blist_fill(i32 %30, i32 0, i64 %31)
  %33 = load i64, i64* @swap_pager_avail, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, i64* @swap_pager_avail, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @swap_total, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* @swap_total, align 4
  %40 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %41 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %42 = call i32 @swap_pager_swapoff(%struct.swdevt* %41)
  %43 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %44 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %43, i32 0, i32 3
  %45 = load i32 (i32, %struct.swdevt*)*, i32 (i32, %struct.swdevt*)** %44, align 8
  %46 = load i32, i32* @curthread, align 4
  %47 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %48 = call i32 %45(i32 %46, %struct.swdevt* %47)
  %49 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %50 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %51 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %53 = load i32, i32* @sw_list, align 4
  %54 = call i32 @TAILQ_REMOVE(i32* @swtailq, %struct.swdevt* %52, i32 %53)
  %55 = load i64, i64* @nswapdev, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* @nswapdev, align 8
  %57 = load i64, i64* @nswapdev, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %21
  store i32 2, i32* @swap_pager_full, align 4
  store i32 1, i32* @swap_pager_almost_full, align 4
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.swdevt*, %struct.swdevt** @swdevhd, align 8
  %62 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %63 = icmp eq %struct.swdevt* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store %struct.swdevt* null, %struct.swdevt** @swdevhd, align 8
  br label %65

65:                                               ; preds = %64, %60
  %66 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %67 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %68 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @blist_destroy(i32 %69)
  %71 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %72 = load i32, i32* @M_VMPGDATA, align 4
  %73 = call i32 @free(%struct.swdevt* %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @vm_free_count(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @blist_fill(i32, i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @swap_pager_swapoff(%struct.swdevt*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.swdevt*, i32) #1

declare dso_local i32 @blist_destroy(i32) #1

declare dso_local i32 @free(%struct.swdevt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
