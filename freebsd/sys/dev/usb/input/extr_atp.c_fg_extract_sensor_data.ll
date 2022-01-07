; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_fg_extract_sensor_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_fg_extract_sensor_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32)* @fg_extract_sensor_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fg_extract_sensor_data(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  switch i32 %13, label %141 [
    i32 131, label %14
    i32 130, label %69
    i32 129, label %105
    i32 128, label %105
  ]

14:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @Y, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 2
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %63, %14
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @X, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 16
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 40
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 16
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %50, %47, %23
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 5
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %20

68:                                               ; preds = %20
  br label %142

69:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @Y, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 19
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %79, %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %75

104:                                              ; preds = %75
  br label %142

105:                                              ; preds = %5, %5
  store i32 0, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @Y, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 2, i32 20
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %115, %105
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %132, i32* %137, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %111

140:                                              ; preds = %111
  br label %142

141:                                              ; preds = %5
  br label %142

142:                                              ; preds = %141, %140, %104, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
