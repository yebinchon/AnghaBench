; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_vmpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_vmpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64, i32, %struct.sglist_seg* }
%struct.sglist_seg = type { i64, i8* }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_vmpages(%struct.sglist* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sgsave, align 4
  %11 = alloca %struct.sglist_seg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.sglist*, %struct.sglist** %6, align 8
  %17 = getelementptr inbounds %struct.sglist, %struct.sglist* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %112

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %112

26:                                               ; preds = %22
  %27 = load %struct.sglist*, %struct.sglist** %6, align 8
  %28 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SGLIST_SAVE(%struct.sglist* %27, i32 %29)
  store i32 0, i32* %15, align 4
  %31 = load %struct.sglist*, %struct.sglist** %6, align 8
  %32 = getelementptr inbounds %struct.sglist, %struct.sglist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %26
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @min(i64 %38, i64 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @VM_PAGE_TO_PHYS(i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = load %struct.sglist*, %struct.sglist** %6, align 8
  %48 = getelementptr inbounds %struct.sglist, %struct.sglist* %47, i32 0, i32 2
  %49 = load %struct.sglist_seg*, %struct.sglist_seg** %48, align 8
  %50 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %49, i64 0
  %51 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.sglist*, %struct.sglist** %6, align 8
  %54 = getelementptr inbounds %struct.sglist, %struct.sglist* %53, i32 0, i32 2
  %55 = load %struct.sglist_seg*, %struct.sglist_seg** %54, align 8
  %56 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %55, i64 0
  %57 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  %58 = load %struct.sglist*, %struct.sglist** %6, align 8
  %59 = getelementptr inbounds %struct.sglist, %struct.sglist* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  store i64 0, i64* %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %35, %26
  %66 = load %struct.sglist*, %struct.sglist** %6, align 8
  %67 = getelementptr inbounds %struct.sglist, %struct.sglist* %66, i32 0, i32 2
  %68 = load %struct.sglist_seg*, %struct.sglist_seg** %67, align 8
  %69 = load %struct.sglist*, %struct.sglist** %6, align 8
  %70 = getelementptr inbounds %struct.sglist, %struct.sglist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %68, i64 %73
  store %struct.sglist_seg* %74, %struct.sglist_seg** %11, align 8
  br label %75

75:                                               ; preds = %105, %65
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %75
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %79, %80
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @min(i64 %81, i64 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @VM_PAGE_TO_PHYS(i32 %88)
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr i8, i8* %89, i64 %90
  store i8* %91, i8** %12, align 8
  %92 = load %struct.sglist*, %struct.sglist** %6, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @_sglist_append_range(%struct.sglist* %92, %struct.sglist_seg** %11, i8* %93, i64 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %78
  %99 = load %struct.sglist*, %struct.sglist** %6, align 8
  %100 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SGLIST_RESTORE(%struct.sglist* %99, i32 %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  br label %112

104:                                              ; preds = %78
  store i64 0, i64* %8, align 8
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %9, align 8
  br label %75

111:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %98, %25, %20
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @_sglist_append_range(%struct.sglist*, %struct.sglist_seg**, i8*, i64) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
