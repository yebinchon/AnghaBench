; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_getswapspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_getswapspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swdevt = type { i32, i64, i32, i32 }

@SWAPBLK_NONE = common dso_local global i64 0, align 8
@BLIST_MAX_ALLOC = common dso_local global i32 0, align 4
@sw_dev_mtx = common dso_local global i32 0, align 4
@swdevhd = common dso_local global %struct.swdevt* null, align 8
@swtailq = common dso_local global i32 0, align 4
@SW_CLOSING = common dso_local global i32 0, align 4
@sw_list = common dso_local global i32 0, align 4
@swap_pager_avail = common dso_local global i32 0, align 4
@swap_pager_full = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"swp_pager_getswapspace(%d): failed\0A\00", align 1
@swap_pager_almost_full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @swp_pager_getswapspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @swp_pager_getswapspace(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.swdevt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @SWAPBLK_NONE, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @BLIST_MAX_ALLOC, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @imin(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %16 = load %struct.swdevt*, %struct.swdevt** @swdevhd, align 8
  store %struct.swdevt* %16, %struct.swdevt** %6, align 8
  br label %17

17:                                               ; preds = %61, %2
  %18 = call i32 @TAILQ_EMPTY(i32* @swtailq)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %23 = icmp eq %struct.swdevt* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call %struct.swdevt* @TAILQ_FIRST(i32* @swtailq)
  store %struct.swdevt* %25, %struct.swdevt** %6, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %28 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SW_CLOSING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %35 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @blist_alloc(i32 %36, i32* %8, i32 %37)
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @SWAPBLK_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %62

44:                                               ; preds = %39
  %45 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %46 = load i32, i32* @sw_list, align 4
  %47 = call %struct.swdevt* @TAILQ_NEXT(%struct.swdevt* %45, i32 %46)
  store %struct.swdevt* %47, %struct.swdevt** %6, align 8
  %48 = load %struct.swdevt*, %struct.swdevt** @swdevhd, align 8
  %49 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %50 = icmp eq %struct.swdevt* %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %44
  br label %17

62:                                               ; preds = %55, %43, %17
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @SWAPBLK_NONE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %3, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %70 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %76 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @swap_pager_avail, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* @swap_pager_avail, align 4
  %82 = call i32 (...) @swp_sizecheck()
  %83 = load %struct.swdevt*, %struct.swdevt** %6, align 8
  %84 = load i32, i32* @sw_list, align 4
  %85 = call %struct.swdevt* @TAILQ_NEXT(%struct.swdevt* %83, i32 %84)
  store %struct.swdevt* %85, %struct.swdevt** @swdevhd, align 8
  br label %94

86:                                               ; preds = %62
  %87 = load i32, i32* @swap_pager_full, align 4
  %88 = icmp ne i32 %87, 2
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 2, i32* @swap_pager_full, align 4
  store i32 1, i32* @swap_pager_almost_full, align 4
  br label %93

93:                                               ; preds = %89, %86
  store %struct.swdevt* null, %struct.swdevt** @swdevhd, align 8
  br label %94

94:                                               ; preds = %93, %66
  %95 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.swdevt* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @blist_alloc(i32, i32*, i32) #1

declare dso_local %struct.swdevt* @TAILQ_NEXT(%struct.swdevt*, i32) #1

declare dso_local i32 @swp_sizecheck(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
