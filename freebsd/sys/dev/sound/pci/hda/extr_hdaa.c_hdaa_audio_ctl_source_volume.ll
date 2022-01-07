; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_source_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_source_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32 }
%struct.hdaa_widget = type { i64, i32, i64, i64, i64, i32, i64*, i64* }
%struct.hdaa_audio_ctl = type { i32 }

@HDA_PARSE_MAXDEPTH = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDAA_CTL_IN = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER = common dso_local global i64 0, align 8
@HDAA_CTL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*, i32, i64, i32, i32, i32, i32, i32)* @hdaa_audio_ctl_source_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_source_volume(%struct.hdaa_pcm_devinfo* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hdaa_devinfo*, align 8
  %18 = alloca %struct.hdaa_widget*, align 8
  %19 = alloca %struct.hdaa_widget*, align 8
  %20 = alloca %struct.hdaa_audio_ctl*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %9, align 8
  %25 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %24, i32 0, i32 0
  %26 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %25, align 8
  store %struct.hdaa_devinfo* %26, %struct.hdaa_devinfo** %17, align 8
  store i32 0, i32* %23, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @HDA_PARSE_MAXDEPTH, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %223

31:                                               ; preds = %8
  %32 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %33 = load i64, i64* %11, align 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %32, i32 %34)
  store %struct.hdaa_widget* %35, %struct.hdaa_widget** %18, align 8
  %36 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %37 = icmp eq %struct.hdaa_widget* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %31
  br label %223

44:                                               ; preds = %38
  %45 = load i32, i32* %16, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  store i32 0, i32* %22, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %22, align 4
  %50 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %51 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %56 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %55, i32 0, i32 7
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %23, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %23, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %22, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %22, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i32, i32* %23, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %79 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %77, %74
  %84 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %85 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %86 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @HDAA_CTL_IN, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %84, i64 %87, i32 %88, i32 %89, i32 1)
  store %struct.hdaa_audio_ctl* %90, %struct.hdaa_audio_ctl** %20, align 8
  %91 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %92 = icmp ne %struct.hdaa_audio_ctl* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl* %94, i32 %95, i32 %96, i32* %14, i32* %15)
  br label %98

98:                                               ; preds = %93, %83
  br label %99

99:                                               ; preds = %98, %77, %71
  %100 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %101 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %16, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %223

108:                                              ; preds = %104, %99
  %109 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %110 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %116 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114, %108
  %121 = load i32, i32* %16, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %223

124:                                              ; preds = %120, %114
  %125 = load i32, i32* %23, align 4
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %129 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %135 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133, %127
  br label %223

140:                                              ; preds = %133, %124
  %141 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %142 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %143 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @HDAA_CTL_OUT, align 4
  %146 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %141, i64 %144, i32 %145, i32 -1, i32 1)
  store %struct.hdaa_audio_ctl* %146, %struct.hdaa_audio_ctl** %20, align 8
  %147 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %148 = icmp ne %struct.hdaa_audio_ctl* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl* %150, i32 %151, i32 %152, i32* %14, i32* %15)
  br label %154

154:                                              ; preds = %149, %140
  %155 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %156 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %21, align 4
  br label %158

158:                                              ; preds = %219, %154
  %159 = load i32, i32* %21, align 4
  %160 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %161 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %222

164:                                              ; preds = %158
  %165 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %166 = load i32, i32* %21, align 4
  %167 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %165, i32 %166)
  store %struct.hdaa_widget* %167, %struct.hdaa_widget** %19, align 8
  %168 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %169 = icmp eq %struct.hdaa_widget* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %164
  %171 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %172 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %164
  br label %219

176:                                              ; preds = %170
  store i32 0, i32* %22, align 4
  br label %177

177:                                              ; preds = %215, %176
  %178 = load i32, i32* %22, align 4
  %179 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %180 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %218

183:                                              ; preds = %177
  %184 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %185 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %184, i32 0, i32 7
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %183
  %193 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %194 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %193, i32 0, i32 6
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %22, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %11, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %192
  %203 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %9, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %206 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, 1
  call void @hdaa_audio_ctl_source_volume(%struct.hdaa_pcm_devinfo* %203, i32 %204, i64 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %213)
  br label %214

214:                                              ; preds = %202, %192, %183
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %22, align 4
  br label %177

218:                                              ; preds = %177
  br label %219

219:                                              ; preds = %218, %175
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  br label %158

222:                                              ; preds = %158
  br label %223

223:                                              ; preds = %222, %139, %123, %107, %43, %30
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo*, i64, i32, i32, i32) #1

declare dso_local i32 @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
