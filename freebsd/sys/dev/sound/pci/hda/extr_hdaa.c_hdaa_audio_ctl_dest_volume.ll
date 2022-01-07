; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dest_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dest_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i64, i64 }
%struct.hdaa_widget = type { i64, i32, i64*, i64*, i64, i32, i64, i32 }
%struct.hdaa_audio_ctl = type { i32 }

@HDA_PARSE_MAXDEPTH = common dso_local global i32 0, align 4
@HDAA_CTL_OUT = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDAA_CTL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*, i32, i64, i32, i32, i32, i32, i32)* @hdaa_audio_ctl_dest_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hdaa_devinfo*, align 8
  %18 = alloca %struct.hdaa_audio_as*, align 8
  %19 = alloca %struct.hdaa_widget*, align 8
  %20 = alloca %struct.hdaa_widget*, align 8
  %21 = alloca %struct.hdaa_audio_ctl*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %9, align 8
  %28 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %27, i32 0, i32 0
  %29 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %28, align 8
  store %struct.hdaa_devinfo* %29, %struct.hdaa_devinfo** %17, align 8
  %30 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %31 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %30, i32 0, i32 2
  %32 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %31, align 8
  store %struct.hdaa_audio_as* %32, %struct.hdaa_audio_as** %18, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @HDA_PARSE_MAXDEPTH, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %8
  br label %233

37:                                               ; preds = %8
  %38 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  %41 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %38, i32 %40)
  store %struct.hdaa_widget* %41, %struct.hdaa_widget** %19, align 8
  %42 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %43 = icmp eq %struct.hdaa_widget* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %46 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %37
  br label %233

50:                                               ; preds = %44
  %51 = load i32, i32* %16, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %163

53:                                               ; preds = %50
  store i32 0, i32* %24, align 4
  %54 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %55 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %22, align 4
  br label %57

57:                                               ; preds = %109, %53
  %58 = load i32, i32* %22, align 4
  %59 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %60 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %57
  %64 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %65 = load i32, i32* %22, align 4
  %66 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %64, i32 %65)
  store %struct.hdaa_widget* %66, %struct.hdaa_widget** %20, align 8
  %67 = load %struct.hdaa_widget*, %struct.hdaa_widget** %20, align 8
  %68 = icmp eq %struct.hdaa_widget* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.hdaa_widget*, %struct.hdaa_widget** %20, align 8
  %71 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %63
  br label %109

75:                                               ; preds = %69
  store i32 0, i32* %23, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %23, align 4
  %78 = load %struct.hdaa_widget*, %struct.hdaa_widget** %20, align 8
  %79 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %76
  %83 = load %struct.hdaa_widget*, %struct.hdaa_widget** %20, align 8
  %84 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %82
  %92 = load %struct.hdaa_widget*, %struct.hdaa_widget** %20, align 8
  %93 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %24, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %24, align 4
  br label %104

104:                                              ; preds = %101, %91, %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  br label %76

108:                                              ; preds = %76
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %22, align 4
  br label %57

112:                                              ; preds = %57
  %113 = load i32, i32* %24, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %144

115:                                              ; preds = %112
  %116 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %117 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %118, 0
  br i1 %119, label %147, label %120

120:                                              ; preds = %115
  %121 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %18, align 8
  %122 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %123 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %121, i64 %124
  %126 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %120
  %130 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %18, align 8
  %131 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %132 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %130, i64 %133
  %135 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %129
  %139 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %140 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 32768
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138, %112
  %145 = load i32, i32* %24, align 4
  %146 = icmp sgt i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %138, %129, %120, %115
  br label %233

148:                                              ; preds = %144
  %149 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %150 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %151 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @HDAA_CTL_OUT, align 4
  %154 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %149, i32 %152, i32 %153, i32 -1, i32 1)
  store %struct.hdaa_audio_ctl* %154, %struct.hdaa_audio_ctl** %21, align 8
  %155 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %21, align 8
  %156 = icmp ne %struct.hdaa_audio_ctl* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %21, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl* %158, i32 %159, i32 %160, i32* %14, i32* %15)
  br label %162

162:                                              ; preds = %157, %148
  br label %163

163:                                              ; preds = %162, %50
  %164 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %165 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* %16, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %233

173:                                              ; preds = %169, %163
  store i32 0, i32* %22, align 4
  br label %174

174:                                              ; preds = %230, %173
  %175 = load i32, i32* %22, align 4
  %176 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %177 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %233

180:                                              ; preds = %174
  %181 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %182 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  br label %230

190:                                              ; preds = %180
  %191 = load i32, i32* %12, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %230

198:                                              ; preds = %193, %190
  %199 = load i32, i32* %14, align 4
  store i32 %199, i32* %25, align 4
  %200 = load i32, i32* %15, align 4
  store i32 %200, i32* %26, align 4
  %201 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %17, align 8
  %202 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %203 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @HDAA_CTL_IN, align 4
  %206 = load i32, i32* %22, align 4
  %207 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %201, i32 %204, i32 %205, i32 %206, i32 1)
  store %struct.hdaa_audio_ctl* %207, %struct.hdaa_audio_ctl** %21, align 8
  %208 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %21, align 8
  %209 = icmp ne %struct.hdaa_audio_ctl* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %198
  %211 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %21, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl* %211, i32 %212, i32 %213, i32* %25, i32* %26)
  br label %215

215:                                              ; preds = %210, %198
  %216 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %9, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %219 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %218, i32 0, i32 3
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %22, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %25, align 4
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, 1
  call void @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo* %216, i32 %217, i64 %224, i32 -1, i32 %225, i32 %226, i32 %227, i32 %229)
  br label %230

230:                                              ; preds = %215, %197, %189
  %231 = load i32, i32* %22, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %22, align 4
  br label %174

233:                                              ; preds = %36, %49, %147, %172, %174
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo*, i32, i32, i32, i32) #1

declare dso_local i32 @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
