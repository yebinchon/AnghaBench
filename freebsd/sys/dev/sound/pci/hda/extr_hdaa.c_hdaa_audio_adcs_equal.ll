; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_adcs_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_adcs_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { i32, i64*, i64, i64, i64, i64, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_widget*, %struct.hdaa_widget*)* @hdaa_audio_adcs_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_audio_adcs_equal(%struct.hdaa_widget* %0, %struct.hdaa_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca %struct.hdaa_widget*, align 8
  %6 = alloca %struct.hdaa_devinfo*, align 8
  %7 = alloca %struct.hdaa_widget*, align 8
  %8 = alloca %struct.hdaa_widget*, align 8
  %9 = alloca i32, align 4
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %4, align 8
  store %struct.hdaa_widget* %1, %struct.hdaa_widget** %5, align 8
  %10 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %11 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %10, i32 0, i32 7
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  store %struct.hdaa_devinfo* %12, %struct.hdaa_devinfo** %6, align 8
  %13 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %14 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %13, i32 0, i32 6
  %15 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %16 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %15, i32 0, i32 6
  %17 = call i64 @memcmp(i32* %14, i32* %16, i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

20:                                               ; preds = %2
  %21 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %22 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %27 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %154

31:                                               ; preds = %25
  %32 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %33 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %38 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %154

44:                                               ; preds = %31
  %45 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %46 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %47 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %45, i64 %50)
  store %struct.hdaa_widget* %51, %struct.hdaa_widget** %7, align 8
  %52 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %53 = icmp eq %struct.hdaa_widget* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %56 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %44
  store i32 0, i32* %3, align 4
  br label %154

60:                                               ; preds = %54
  %61 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %62 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %63 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %61, i64 %66)
  store %struct.hdaa_widget* %67, %struct.hdaa_widget** %8, align 8
  %68 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %69 = icmp eq %struct.hdaa_widget* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %72 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %60
  store i32 0, i32* %3, align 4
  br label %154

76:                                               ; preds = %70
  %77 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %78 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %81 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %86 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %89 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %154

93:                                               ; preds = %84, %76
  %94 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %95 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %154

99:                                               ; preds = %93
  %100 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %101 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %104 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %154

108:                                              ; preds = %99
  %109 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %110 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %109, i32 0, i32 6
  %111 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %112 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %111, i32 0, i32 6
  %113 = call i64 @memcmp(i32* %110, i32* %112, i32 4)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %154

116:                                              ; preds = %108
  %117 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %118 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %121 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %154

125:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %150, %125
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %129 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %126
  %133 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %134 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %141 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %139, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %154

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %126

153:                                              ; preds = %126
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %148, %124, %115, %107, %98, %92, %75, %59, %43, %30, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
