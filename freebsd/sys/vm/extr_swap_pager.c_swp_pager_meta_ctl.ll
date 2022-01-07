; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.swblk = type { i64* }

@SWM_POP = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i64 0, align 8
@SWAPBLK_NONE = common dso_local global i64 0, align 8
@SWAP_META_PAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64, i32)* @swp_pager_meta_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @swp_pager_meta_ctl(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.swblk*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SWM_POP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_10__* %15)
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_10__* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OBJT_SWAP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @SWAPBLK_NONE, align 8
  store i64 %27, i64* %4, align 8
  br label %74

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SWAP_META_PAGES, align 8
  %35 = call i32 @rounddown(i64 %33, i64 %34)
  %36 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP(i32* %32, i32 %35)
  store %struct.swblk* %36, %struct.swblk** %8, align 8
  %37 = load %struct.swblk*, %struct.swblk** %8, align 8
  %38 = icmp eq %struct.swblk* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i64, i64* @SWAPBLK_NONE, align 8
  store i64 %40, i64* %4, align 8
  br label %74

41:                                               ; preds = %28
  %42 = load %struct.swblk*, %struct.swblk** %8, align 8
  %43 = getelementptr inbounds %struct.swblk, %struct.swblk* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @SWAP_META_PAGES, align 8
  %47 = urem i64 %45, %46
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @SWAPBLK_NONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i64, i64* @SWAPBLK_NONE, align 8
  store i64 %54, i64* %4, align 8
  br label %74

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SWM_POP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i64, i64* @SWAPBLK_NONE, align 8
  %62 = load %struct.swblk*, %struct.swblk** %8, align 8
  %63 = getelementptr inbounds %struct.swblk, %struct.swblk* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @SWAP_META_PAGES, align 8
  %67 = urem i64 %65, %66
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  store i64 %61, i64* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = load %struct.swblk*, %struct.swblk** %8, align 8
  %71 = call i32 @swp_pager_free_empty_swblk(%struct.TYPE_10__* %69, %struct.swblk* %70)
  br label %72

72:                                               ; preds = %60, %55
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %53, %39, %26
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_10__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_10__*) #1

declare dso_local %struct.swblk* @SWAP_PCTRIE_LOOKUP(i32*, i32) #1

declare dso_local i32 @rounddown(i64, i64) #1

declare dso_local i32 @swp_pager_free_empty_swblk(%struct.TYPE_10__*, %struct.swblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
