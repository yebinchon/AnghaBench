; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_find_least.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_find_least.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.swblk = type { i32, i64* }

@OBJT_SWAP = common dso_local global i64 0, align 8
@SWAP_META_PAGES = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_pager_find_least(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.swblk*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJT_SWAP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SWAP_META_PAGES, align 4
  %26 = call i32 @rounddown(i32 %24, i32 %25)
  %27 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32* %23, i32 %26)
  store %struct.swblk* %27, %struct.swblk** %6, align 8
  %28 = load %struct.swblk*, %struct.swblk** %6, align 8
  %29 = icmp eq %struct.swblk* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %19
  %35 = load %struct.swblk*, %struct.swblk** %6, align 8
  %36 = getelementptr inbounds %struct.swblk, %struct.swblk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SWAP_META_PAGES, align 4
  %43 = srem i32 %41, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %65, %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SWAP_META_PAGES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.swblk*, %struct.swblk** %6, align 8
  %50 = getelementptr inbounds %struct.swblk, %struct.swblk* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SWAPBLK_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.swblk*, %struct.swblk** %6, align 8
  %60 = getelementptr inbounds %struct.swblk, %struct.swblk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %114

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SWAP_META_PAGES, align 4
  %75 = call i32 @roundup(i32 %73, i32 %74)
  %76 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32* %72, i32 %75)
  store %struct.swblk* %76, %struct.swblk** %6, align 8
  %77 = load %struct.swblk*, %struct.swblk** %6, align 8
  %78 = icmp eq %struct.swblk* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %34
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SWAP_META_PAGES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load %struct.swblk*, %struct.swblk** %6, align 8
  %91 = getelementptr inbounds %struct.swblk, %struct.swblk* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SWAPBLK_NONE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load %struct.swblk*, %struct.swblk** %6, align 8
  %101 = getelementptr inbounds %struct.swblk, %struct.swblk* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %85

109:                                              ; preds = %85
  %110 = call i32 @MPASS(i32 0)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %99, %79, %58, %30, %15
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_8__*) #1

declare dso_local %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32*, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
