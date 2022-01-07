; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvgarndr.c_vga_setmdp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvgarndr.c_vga_setmdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedata = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.mousedata*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@V_ADP_CWIDTH9 = common dso_local global i32 0, align 4
@vga_aspect_scale = common dso_local global i32 0, align 4
@PIXEL_MODE = common dso_local global i32 0, align 4
@mousesmall = common dso_local global %struct.mousedata** null, align 8
@mouselarge = common dso_local global %struct.mousedata** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @vga_setmdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_setmdp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.mousedata*, align 8
  %4 = alloca %struct.mousedata**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @V_ADP_CWIDTH9, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %13, align 4
  %33 = mul nsw i32 %32, 9
  %34 = sdiv i32 %33, 8
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %36, 900
  %38 = load i32, i32* %14, align 4
  %39 = sdiv i32 %37, %38
  %40 = sdiv i32 %39, 16
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 99
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 100
  br i1 %45, label %46, label %55

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 300
  %49 = load i32, i32* %14, align 4
  %50 = sdiv i32 %48, %49
  %51 = sdiv i32 %50, 4
  %52 = load i32, i32* @vga_aspect_scale, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %53, 100
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %43
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %58, 8
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 300
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PIXEL_MODE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63, %60
  %71 = load %struct.mousedata**, %struct.mousedata*** @mousesmall, align 8
  %72 = getelementptr inbounds %struct.mousedata*, %struct.mousedata** %71, i64 0
  store %struct.mousedata** %72, %struct.mousedata*** %4, align 8
  %73 = load %struct.mousedata**, %struct.mousedata*** @mousesmall, align 8
  %74 = call i32 @nitems(%struct.mousedata** %73)
  store i32 %74, i32* %9, align 4
  br label %80

75:                                               ; preds = %63, %55
  %76 = load %struct.mousedata**, %struct.mousedata*** @mouselarge, align 8
  %77 = getelementptr inbounds %struct.mousedata*, %struct.mousedata** %76, i64 0
  store %struct.mousedata** %77, %struct.mousedata*** %4, align 8
  %78 = load %struct.mousedata**, %struct.mousedata*** @mouselarge, align 8
  %79 = call i32 @nitems(%struct.mousedata** %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PIXEL_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 1024, i32* %11, align 4
  store i32 256, i32* %12, align 4
  br label %89

88:                                               ; preds = %80
  store i32 256, i32* %11, align 4
  store i32 1024, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %87
  store i32 0, i32* %6, align 4
  store i32 2147483647, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %131, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %134

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.mousedata**, %struct.mousedata*** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.mousedata*, %struct.mousedata** %96, i64 %98
  %100 = load %struct.mousedata*, %struct.mousedata** %99, align 8
  %101 = getelementptr inbounds %struct.mousedata, %struct.mousedata* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %102, %104
  %106 = call i32 @abs(i64 %105)
  %107 = mul nsw i32 %95, %106
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.mousedata**, %struct.mousedata*** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mousedata*, %struct.mousedata** %109, i64 %111
  %113 = load %struct.mousedata*, %struct.mousedata** %112, align 8
  %114 = getelementptr inbounds %struct.mousedata, %struct.mousedata* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %115, %117
  %119 = call i32 @abs(i64 %118)
  %120 = mul nsw i32 %108, %119
  %121 = add nsw i32 %107, %120
  %122 = load i32, i32* %5, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %94
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %94
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %90

134:                                              ; preds = %90
  %135 = load %struct.mousedata**, %struct.mousedata*** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.mousedata*, %struct.mousedata** %135, i64 %137
  %139 = load %struct.mousedata*, %struct.mousedata** %138, align 8
  store %struct.mousedata* %139, %struct.mousedata** %3, align 8
  %140 = load %struct.mousedata*, %struct.mousedata** %3, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  store %struct.mousedata* %140, %struct.mousedata** %142, align 8
  ret void
}

declare dso_local i32 @nitems(%struct.mousedata**) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
