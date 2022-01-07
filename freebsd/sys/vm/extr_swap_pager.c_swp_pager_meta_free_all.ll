; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.swblk = type { i64*, i64 }

@OBJT_SWAP = common dso_local global i64 0, align 8
@SWAP_META_PAGES = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i64 0, align 8
@swblk_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @swp_pager_meta_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swp_pager_meta_free_all(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.swblk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJT_SWAP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %76

16:                                               ; preds = %1
  %17 = call i32 @swp_pager_init_freerange(i32* %5, i32* %4)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %60, %16
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32* %22, i64 %23)
  store %struct.swblk* %24, %struct.swblk** %3, align 8
  %25 = icmp ne %struct.swblk* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %18
  %27 = load %struct.swblk*, %struct.swblk** %3, align 8
  %28 = getelementptr inbounds %struct.swblk, %struct.swblk* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @SWAP_META_PAGES, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  store i64 %32, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %57, %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SWAP_META_PAGES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load %struct.swblk*, %struct.swblk** %3, align 8
  %39 = getelementptr inbounds %struct.swblk, %struct.swblk* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SWAPBLK_NONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.swblk*, %struct.swblk** %3, align 8
  %50 = getelementptr inbounds %struct.swblk, %struct.swblk* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @swp_pager_update_freerange(i32* %5, i32* %4, i64 %55)
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.swblk*, %struct.swblk** %3, align 8
  %66 = getelementptr inbounds %struct.swblk, %struct.swblk* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @SWAP_PCTRIE_REMOVE(i32* %64, i64 %67)
  %69 = load i32, i32* @swblk_zone, align 4
  %70 = load %struct.swblk*, %struct.swblk** %3, align 8
  %71 = call i32 @uma_zfree(i32 %69, %struct.swblk* %70)
  br label %18

72:                                               ; preds = %18
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @swp_pager_freeswapspace(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %15
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_8__*) #1

declare dso_local i32 @swp_pager_init_freerange(i32*, i32*) #1

declare dso_local %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32*, i64) #1

declare dso_local i32 @swp_pager_update_freerange(i32*, i32*, i64) #1

declare dso_local i32 @SWAP_PCTRIE_REMOVE(i32*, i64) #1

declare dso_local i32 @uma_zfree(i32, %struct.swblk*) #1

declare dso_local i32 @swp_pager_freeswapspace(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
