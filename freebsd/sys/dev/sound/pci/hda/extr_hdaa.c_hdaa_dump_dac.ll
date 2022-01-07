; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_dac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { i64, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { %struct.hdaa_audio_as*, %struct.TYPE_2__* }
%struct.hdaa_audio_as = type { i32*, i32, i64* }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.hdaa_widget = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"Playback:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"            DAC:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*)* @hdaa_dump_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_dac(%struct.hdaa_pcm_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca %struct.hdaa_audio_as*, align 8
  %5 = alloca %struct.hdaa_widget*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %2, align 8
  %9 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %10 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %9, i32 0, i32 2
  %11 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  store %struct.hdaa_devinfo* %11, %struct.hdaa_devinfo** %3, align 8
  %12 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %168

17:                                               ; preds = %1
  %18 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %19 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %23 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %22, i32 0, i32 0
  %24 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %23, align 8
  %25 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %26 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %24, i64 %27
  %29 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %34 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %37 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %45 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hdaa_dump_audio_formats(i32 %35, i32 %43, i32 %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %104, %17
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %56 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %55, i32 0, i32 0
  %57 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %56, align 8
  %58 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %59 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %57, i64 %60
  %62 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %54, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %53
  %66 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %67 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %66, i32 0, i32 0
  %68 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %67, align 8
  %69 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %70 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %68, i64 %71
  %73 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %80 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %84 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %6, align 8
  br label %91

91:                                               ; preds = %99, %65
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %6, align 8
  br label %91

102:                                              ; preds = %91
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %53

107:                                              ; preds = %53
  %108 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %109 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %108, i32 0, i32 0
  %110 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %109, align 8
  %111 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %112 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %110, i64 %113
  store %struct.hdaa_audio_as* %114, %struct.hdaa_audio_as** %4, align 8
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %160, %107
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 16
  br i1 %117, label %118, label %163

118:                                              ; preds = %115
  %119 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %4, align 8
  %120 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp sle i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %160

128:                                              ; preds = %118
  %129 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %130 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %4, align 8
  %131 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %129, i64 %136)
  store %struct.hdaa_widget* %137, %struct.hdaa_widget** %5, align 8
  %138 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %139 = icmp eq %struct.hdaa_widget* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %128
  %141 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %142 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140, %128
  br label %160

146:                                              ; preds = %140
  %147 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %148 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %151 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %152 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %4, align 8
  %153 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo* %151, i64 %158, i32 0)
  br label %160

160:                                              ; preds = %146, %145, %127
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %115

163:                                              ; preds = %115
  %164 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %165 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %16
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hdaa_dump_audio_formats(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i64) #1

declare dso_local i32 @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
