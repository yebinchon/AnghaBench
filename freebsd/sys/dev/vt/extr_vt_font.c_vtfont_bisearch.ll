; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_bisearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_bisearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_font_map = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vt_font_map*, i32, i64)* @vtfont_bisearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vtfont_bisearch(%struct.vt_font_map* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vt_font_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vt_font_map* %0, %struct.vt_font_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %124

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %19 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %18, i64 0
  %20 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %124

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %27 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %26, i64 0
  %28 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %31 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %30, i64 0
  %32 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = icmp sle i64 %25, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %39 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %38, i64 0
  %40 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %37, %41
  %43 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %44 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %43, i64 0
  %45 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %42, %46
  store i64 %47, i64* %4, align 8
  br label %124

48:                                               ; preds = %24
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %50, i64 %52
  %54 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %56, i64 %58
  %60 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %55, %61
  %63 = icmp sgt i64 %49, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %124

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %122, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %123

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %9, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %76, i64 %78
  %80 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %75, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %122

86:                                               ; preds = %70
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %88, i64 %90
  %92 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %94, i64 %96
  %98 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %93, %99
  %101 = icmp sgt i64 %87, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %121

105:                                              ; preds = %86
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %107, i64 %109
  %111 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %106, %112
  %114 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %114, i64 %116
  %118 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %113, %119
  store i64 %120, i64* %4, align 8
  br label %124

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %83
  br label %66

123:                                              ; preds = %66
  store i64 0, i64* %4, align 8
  br label %124

124:                                              ; preds = %123, %105, %64, %36, %23, %15
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
