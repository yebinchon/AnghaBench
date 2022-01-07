; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator_vt.c_creatorfb_bitblt_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator_vt.c_creatorfb_bitblt_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.creatorfb_softc* }
%struct.creatorfb_softc = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.vt_window = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_window*, i32*, i32*, i32, i32, i32, i32, i64, i64)* @creatorfb_bitblt_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creatorfb_bitblt_bitmap(%struct.vt_device* %0, %struct.vt_window* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.vt_device*, align 8
  %12 = alloca %struct.vt_window*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.creatorfb_softc*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %11, align 8
  store %struct.vt_window* %1, %struct.vt_window** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %29 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  %30 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %29, i32 0, i32 0
  %31 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %30, align 8
  store %struct.creatorfb_softc* %31, %struct.creatorfb_softc** %21, align 8
  %32 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %21, align 8
  %33 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %19, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %23, align 4
  %39 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %21, align 8
  %40 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %20, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %24, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  %46 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %21, align 8
  %47 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = mul i32 %49, %50
  %52 = load i32, i32* %17, align 4
  %53 = mul i32 4, %52
  %54 = add i32 %51, %53
  store i32 %54, i32* %22, align 4
  store i32 0, i32* %26, align 4
  br label %55

55:                                               ; preds = %150, %10
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %26, align 4
  %62 = add i32 %60, %61
  %63 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %64 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ult i32 %62, %67
  br label %69

69:                                               ; preds = %59, %55
  %70 = phi i1 [ false, %55 ], [ %68, %59 ]
  br i1 %70, label %71, label %153

71:                                               ; preds = %69
  store i32 0, i32* %25, align 4
  br label %72

72:                                               ; preds = %140, %71
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %25, align 4
  %79 = add i32 %77, %78
  %80 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %81 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %79, %84
  br label %86

86:                                               ; preds = %76, %72
  %87 = phi i1 [ false, %72 ], [ %85, %76 ]
  br i1 %87, label %88, label %143

88:                                               ; preds = %86
  %89 = load i32, i32* %25, align 4
  %90 = srem i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %13, align 8
  %95 = load i32, i32* %93, align 4
  store i32 %95, i32* %27, align 4
  br label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %27, align 4
  %98 = shl i32 %97, 1
  store i32 %98, i32* %27, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32*, i32** %14, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load i32, i32* %25, align 4
  %104 = srem i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %14, align 8
  %109 = load i32, i32* %107, align 4
  store i32 %109, i32* %28, align 4
  br label %113

110:                                              ; preds = %102
  %111 = load i32, i32* %28, align 4
  %112 = shl i32 %111, 1
  store i32 %112, i32* %28, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i32, i32* %28, align 4
  %115 = and i32 %114, 128
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %140

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %21, align 8
  %121 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %21, align 8
  %124 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %25, align 4
  %128 = mul nsw i32 4, %127
  %129 = add nsw i32 %126, %128
  %130 = load i32, i32* %27, align 4
  %131 = and i32 %130, 128
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = load i32, i32* %23, align 4
  br label %137

135:                                              ; preds = %119
  %136 = load i32, i32* %24, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = call i32 @bus_space_write_4(i32 %122, i32 %125, i32 %129, i32 %138)
  br label %140

140:                                              ; preds = %137, %117
  %141 = load i32, i32* %25, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %25, align 4
  br label %72

143:                                              ; preds = %86
  %144 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %21, align 8
  %145 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %22, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %22, align 4
  br label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %26, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %26, align 4
  br label %55

153:                                              ; preds = %69
  ret void
}

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
