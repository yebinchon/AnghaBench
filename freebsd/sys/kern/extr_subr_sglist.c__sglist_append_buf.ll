; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c__sglist_append_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c__sglist_append_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32, %struct.sglist_seg* }
%struct.sglist_seg = type { i64, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sglist*, i8*, i64, i32*, i64*)* @_sglist_append_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sglist_append_buf(%struct.sglist* %0, i8* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sglist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.sglist_seg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64*, i64** %11, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %138

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @PAGE_MASK, align 8
  %31 = and i64 %29, %30
  store i64 %31, i64* %14, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @pmap_extract(i32* %35, i64 %36)
  store i32 %37, i32* %15, align 4
  br label %41

38:                                               ; preds = %26
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @pmap_kextract(i64 %39)
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 %43, %44
  %46 = call i64 @MIN(i64 %42, i64 %45)
  store i64 %46, i64* %16, align 8
  %47 = load %struct.sglist*, %struct.sglist** %7, align 8
  %48 = getelementptr inbounds %struct.sglist, %struct.sglist* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %41
  %52 = load %struct.sglist*, %struct.sglist** %7, align 8
  %53 = getelementptr inbounds %struct.sglist, %struct.sglist* %52, i32 0, i32 1
  %54 = load %struct.sglist_seg*, %struct.sglist_seg** %53, align 8
  store %struct.sglist_seg* %54, %struct.sglist_seg** %12, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.sglist_seg*, %struct.sglist_seg** %12, align 8
  %57 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load %struct.sglist_seg*, %struct.sglist_seg** %12, align 8
  %60 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sglist*, %struct.sglist** %7, align 8
  %62 = getelementptr inbounds %struct.sglist, %struct.sglist* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %82

63:                                               ; preds = %41
  %64 = load %struct.sglist*, %struct.sglist** %7, align 8
  %65 = getelementptr inbounds %struct.sglist, %struct.sglist* %64, i32 0, i32 1
  %66 = load %struct.sglist_seg*, %struct.sglist_seg** %65, align 8
  %67 = load %struct.sglist*, %struct.sglist** %7, align 8
  %68 = getelementptr inbounds %struct.sglist, %struct.sglist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %66, i64 %71
  store %struct.sglist_seg* %72, %struct.sglist_seg** %12, align 8
  %73 = load %struct.sglist*, %struct.sglist** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @_sglist_append_range(%struct.sglist* %73, %struct.sglist_seg** %12, i32 %74, i64 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %6, align 4
  br label %138

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %51
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %9, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i64, i64* %16, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %92
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %91, %82
  br label %97

97:                                               ; preds = %136, %96
  %98 = load i64, i64* %9, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %97
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @PAGE_SIZE, align 8
  %103 = call i64 @MIN(i64 %101, i64 %102)
  store i64 %103, i64* %16, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32*, i32** %10, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @pmap_extract(i32* %107, i64 %108)
  store i32 %109, i32* %15, align 4
  br label %113

110:                                              ; preds = %100
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @pmap_kextract(i64 %111)
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.sglist*, %struct.sglist** %7, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i64, i64* %16, align 8
  %117 = call i32 @_sglist_append_range(%struct.sglist* %114, %struct.sglist_seg** %12, i32 %115, i64 %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %6, align 4
  br label %138

122:                                              ; preds = %113
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %9, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %9, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i64, i64* %16, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, %132
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %131, %122
  br label %97

137:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %120, %79, %25
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @pmap_extract(i32*, i64) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @_sglist_append_range(%struct.sglist*, %struct.sglist_seg**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
