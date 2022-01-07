; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_swapoff_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_swapoff_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swdevt = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.swblk = type { i64*, i64 }

@SWAP_META_PAGES = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swdevt*, %struct.TYPE_8__*)* @swap_pager_swapoff_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_pager_swapoff_object(%struct.swdevt* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.swdevt*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.swblk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.swdevt* %0, %struct.swdevt** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %100, %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32* %16, i64 %17)
  store %struct.swblk* %18, %struct.swblk** %5, align 8
  %19 = icmp ne %struct.swblk* %18, null
  br i1 %19, label %20, label %101

20:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %86, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @SWAP_META_PAGES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %21
  %26 = load %struct.swblk*, %struct.swblk** %5, align 8
  %27 = getelementptr inbounds %struct.swblk, %struct.swblk* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.swdevt*, %struct.swdevt** %3, align 8
  %35 = call i32 @swp_pager_isondev(i64 %33, %struct.swdevt* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load i64, i64* @SWAPBLK_NONE, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @SWAPBLK_NONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %10, align 8
  %48 = load %struct.swblk*, %struct.swblk** %5, align 8
  %49 = getelementptr inbounds %struct.swblk, %struct.swblk* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  store i64 %53, i64* %7, align 8
  store i64 1, i64* %9, align 8
  br label %54

54:                                               ; preds = %46, %42
  br label %86

55:                                               ; preds = %39
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @MAXPHYS, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = sdiv i64 %57, %58
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.swblk*, %struct.swblk** %5, align 8
  %72 = getelementptr inbounds %struct.swblk, %struct.swblk* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = icmp eq i64 %70, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %86

81:                                               ; preds = %67, %61, %55
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @swp_pager_force_pagein(%struct.TYPE_8__* %82, i64 %83, i64 %84)
  store i64 0, i64* %9, align 8
  br label %89

86:                                               ; preds = %78, %54
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %21

89:                                               ; preds = %81, %21
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @SWAP_META_PAGES, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.swblk*, %struct.swblk** %5, align 8
  %95 = getelementptr inbounds %struct.swblk, %struct.swblk* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @SWAP_META_PAGES, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %93, %89
  br label %12

101:                                              ; preds = %12
  %102 = load i64, i64* %9, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @swp_pager_force_pagein(%struct.TYPE_8__* %105, i64 %106, i64 %107)
  br label %109

109:                                              ; preds = %104, %101
  ret void
}

declare dso_local %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32*, i64) #1

declare dso_local i32 @swp_pager_isondev(i64, %struct.swdevt*) #1

declare dso_local i32 @swp_pager_force_pagein(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
