; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_dacs_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_dacs_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { i64, i64, i32, i64*, i64*, i64, i64, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32 }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_widget*, %struct.hdaa_widget*)* @hdaa_audio_dacs_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_audio_dacs_equal(%struct.hdaa_widget* %0, %struct.hdaa_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca %struct.hdaa_widget*, align 8
  %6 = alloca %struct.hdaa_devinfo*, align 8
  %7 = alloca %struct.hdaa_widget*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %4, align 8
  store %struct.hdaa_widget* %1, %struct.hdaa_widget** %5, align 8
  %12 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %13 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %12, i32 0, i32 8
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %13, align 8
  store %struct.hdaa_devinfo* %14, %struct.hdaa_devinfo** %6, align 8
  %15 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %16 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %15, i32 0, i32 7
  %17 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %18 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %17, i32 0, i32 7
  %19 = call i64 @memcmp(i32* %16, i32* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

22:                                               ; preds = %2
  %23 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %24 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %124, %22
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %29 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %127

32:                                               ; preds = %26
  %33 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %33, i32 %34)
  store %struct.hdaa_widget* %35, %struct.hdaa_widget** %7, align 8
  %36 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %37 = icmp eq %struct.hdaa_widget* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %32
  br label %124

44:                                               ; preds = %38
  %45 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %46 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %49 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %124

53:                                               ; preds = %44
  %54 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %55 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %124

59:                                               ; preds = %53
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %105, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %63 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %60
  %67 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %68 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %105

76:                                               ; preds = %66
  %77 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %78 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %77, i32 0, i32 4
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %85 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %76
  %91 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %92 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %99 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %102, %90
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %60

108:                                              ; preds = %60
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %124

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %128

116:                                              ; preds = %112
  %117 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %118 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %128

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %111, %58, %52, %43
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %26

127:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %122, %115, %21
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
