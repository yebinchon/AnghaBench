; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_cvt_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_cvt_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.detailed_timing = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cvt_timing* }
%struct.cvt_timing = type { i32* }
%struct.drm_display_mode = type { i32 }

@__const.drm_cvt_modes.rates = private unnamed_addr constant [5 x i32] [i32 60, i32 85, i32 75, i32 60, i32 50], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.detailed_timing*)* @drm_cvt_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_cvt_modes(%struct.drm_connector* %0, %struct.detailed_timing* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.detailed_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.cvt_timing*, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.detailed_timing* %1, %struct.detailed_timing** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %9, align 8
  %18 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([5 x i32]* @__const.drm_cvt_modes.rates to i8*), i64 20, i1 false)
  %19 = bitcast [3 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 12, i1 false)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %118, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %121

23:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  %24 = load %struct.detailed_timing*, %struct.detailed_timing** %4, align 8
  %25 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.cvt_timing*, %struct.cvt_timing** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cvt_timing, %struct.cvt_timing* %29, i64 %31
  store %struct.cvt_timing* %32, %struct.cvt_timing** %10, align 8
  %33 = load %struct.cvt_timing*, %struct.cvt_timing** %10, align 8
  %34 = getelementptr inbounds %struct.cvt_timing, %struct.cvt_timing* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %37 = call i32 @memcmp(i32* %35, i32* %36, i32 3)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %118

40:                                               ; preds = %23
  %41 = load %struct.cvt_timing*, %struct.cvt_timing** %10, align 8
  %42 = getelementptr inbounds %struct.cvt_timing, %struct.cvt_timing* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cvt_timing*, %struct.cvt_timing** %10, align 8
  %47 = getelementptr inbounds %struct.cvt_timing, %struct.cvt_timing* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 240
  %52 = shl i32 %51, 4
  %53 = add nsw i32 %45, %52
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %14, align 4
  %56 = load %struct.cvt_timing*, %struct.cvt_timing** %10, align 8
  %57 = getelementptr inbounds %struct.cvt_timing, %struct.cvt_timing* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 12
  switch i32 %61, label %78 [
    i32 0, label %62
    i32 4, label %66
    i32 8, label %70
    i32 12, label %74
  ]

62:                                               ; preds = %40
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sdiv i32 %64, 3
  store i32 %65, i32* %13, align 4
  br label %78

66:                                               ; preds = %40
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 16
  %69 = sdiv i32 %68, 9
  store i32 %69, i32* %13, align 4
  br label %78

70:                                               ; preds = %40
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %71, 16
  %73 = sdiv i32 %72, 10
  store i32 %73, i32* %13, align 4
  br label %78

74:                                               ; preds = %40
  %75 = load i32, i32* %14, align 4
  %76 = mul nsw i32 %75, 15
  %77 = sdiv i32 %76, 9
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %40, %74, %70, %66, %62
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %114, %78
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 5
  br i1 %81, label %82, label %117

82:                                               ; preds = %79
  %83 = load %struct.cvt_timing*, %struct.cvt_timing** %10, align 8
  %84 = getelementptr inbounds %struct.cvt_timing, %struct.cvt_timing* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %82
  %93 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %93, i32 %94, i32 %95, i32 %99, i32 %102, i32 0, i32 0)
  store %struct.drm_display_mode* %103, %struct.drm_display_mode** %8, align 8
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %105 = icmp ne %struct.drm_display_mode* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %109 = call i32 @drm_mode_probed_add(%struct.drm_connector* %107, %struct.drm_display_mode* %108)
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %106, %92
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %79

117:                                              ; preds = %79
  br label %118

118:                                              ; preds = %117, %39
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %20

121:                                              ; preds = %20
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
