; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_sg_pager.c_sg_pager_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_sg_pager.c_sg_pager_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ucred = type { i32 }
%struct.sglist = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OBJT_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i32, i32, i32, %struct.ucred*)* @sg_pager_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @sg_pager_alloc(i8* %0, i32 %1, i32 %2, i32 %3, %struct.ucred* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.sglist*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PAGE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %109

22:                                               ; preds = %5
  store i64 0, i64* %14, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.sglist*
  store %struct.sglist* %24, %struct.sglist** %12, align 8
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %70, %22
  %26 = load i32, i32* %16, align 4
  %27 = load %struct.sglist*, %struct.sglist** %12, align 8
  %28 = getelementptr inbounds %struct.sglist, %struct.sglist* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %25
  %32 = load %struct.sglist*, %struct.sglist** %12, align 8
  %33 = getelementptr inbounds %struct.sglist, %struct.sglist* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = srem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = load %struct.sglist*, %struct.sglist** %12, align 8
  %45 = getelementptr inbounds %struct.sglist, %struct.sglist* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = srem i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43, %31
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %109

56:                                               ; preds = %43
  %57 = load %struct.sglist*, %struct.sglist** %12, align 8
  %58 = getelementptr inbounds %struct.sglist, %struct.sglist* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = sdiv i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %14, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %25

73:                                               ; preds = %25
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @round_page(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @OFF_TO_IDX(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @OFF_TO_IDX(i32 %78)
  %80 = add nsw i64 %77, %79
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %73
  %85 = load i64, i64* %15, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @OFF_TO_IDX(i32 %86)
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %15, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @OFF_TO_IDX(i32 %91)
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %84, %73
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %109

95:                                               ; preds = %89
  %96 = load i32, i32* @OBJT_SG, align 4
  %97 = load i64, i64* %14, align 8
  %98 = call %struct.TYPE_10__* @vm_object_allocate(i32 %96, i64 %97)
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %13, align 8
  %99 = load %struct.sglist*, %struct.sglist** %12, align 8
  %100 = call i32 @sglist_hold(%struct.sglist* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = call i32 @TAILQ_INIT(i32* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %6, align 8
  br label %109

109:                                              ; preds = %95, %94, %55, %21
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %110
}

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local %struct.TYPE_10__* @vm_object_allocate(i32, i64) #1

declare dso_local i32 @sglist_hold(%struct.sglist*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
