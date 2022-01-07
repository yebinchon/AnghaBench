; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_adc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { i64, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.hdaa_widget = type { i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"Record:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"            ADC:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*)* @hdaa_dump_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_adc(%struct.hdaa_pcm_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %2, align 8
  %8 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %9 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %8, i32 0, i32 2
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  store %struct.hdaa_devinfo* %10, %struct.hdaa_devinfo** %3, align 8
  %11 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %12 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %160

16:                                               ; preds = %1
  %17 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %18 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %22 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %25 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %33 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %36 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %44 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @hdaa_dump_audio_formats(i32 %34, i32 %42, i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %103, %16
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %55 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %58 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %53, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %52
  %65 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %66 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %69 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %79 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %83 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %98, %64
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  br label %90

101:                                              ; preds = %90
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %52

106:                                              ; preds = %52
  %107 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %108 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %152, %106
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %113 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %155

116:                                              ; preds = %110
  %117 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %117, i32 %118)
  store %struct.hdaa_widget* %119, %struct.hdaa_widget** %4, align 8
  %120 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %121 = icmp eq %struct.hdaa_widget* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %124 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122, %116
  br label %152

128:                                              ; preds = %122
  %129 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %130 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %152

135:                                              ; preds = %128
  %136 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %137 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %140 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %152

144:                                              ; preds = %135
  %145 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %146 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo* %149, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %144, %143, %134, %127
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %110

155:                                              ; preds = %110
  %156 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %157 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %155, %15
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hdaa_dump_audio_formats(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
