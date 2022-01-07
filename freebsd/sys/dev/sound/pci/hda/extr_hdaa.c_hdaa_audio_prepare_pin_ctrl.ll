; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_prepare_pin_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_prepare_pin_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i64, %struct.hdaa_widget*, %struct.hdaa_audio_as* }
%struct.hdaa_widget = type { i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.hdaa_audio_as = type { i64, i64 }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK = common dso_local global i32 0, align 4
@HDAA_CTL_IN = common dso_local global i64 0, align 8
@HDAA_QUIRK_IVREF100 = common dso_local global i32 0, align 4
@HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_100 = common dso_local global i32 0, align 4
@HDAA_QUIRK_IVREF80 = common dso_local global i32 0, align 4
@HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_80 = common dso_local global i32 0, align 4
@HDAA_QUIRK_IVREF50 = common dso_local global i32 0, align 4
@HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_50 = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_DEVICE_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_DEVICE_HP_OUT = common dso_local global i32 0, align 4
@HDAA_QUIRK_OVREF100 = common dso_local global i32 0, align 4
@HDAA_QUIRK_OVREF80 = common dso_local global i32 0, align 4
@HDAA_QUIRK_OVREF50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_audio_prepare_pin_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_prepare_pin_ctrl(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_audio_as*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %7 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %8 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %7, i32 0, i32 4
  %9 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %8, align 8
  store %struct.hdaa_audio_as* %9, %struct.hdaa_audio_as** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %283, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %286

16:                                               ; preds = %10
  %17 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %18 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %17, i32 0, i32 3
  %19 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %19, i64 %21
  store %struct.hdaa_widget* %22, %struct.hdaa_widget** %4, align 8
  %23 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %24 = icmp eq %struct.hdaa_widget* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %283

26:                                               ; preds = %16
  %27 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %28 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %34 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %283

38:                                               ; preds = %32, %26
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %5, align 4
  %44 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %45 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %38
  %49 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE, align 4
  %50 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %58 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %56
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %48, %38
  %64 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %65 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %283

69:                                               ; preds = %63
  %70 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %71 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE, align 4
  %76 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %77 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 8
  br label %281

82:                                               ; preds = %69
  %83 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %84 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %89 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %90 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %88, i64 %91
  %93 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87, %82
  br label %283

97:                                               ; preds = %87
  %98 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %99 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %100 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %98, i64 %101
  %103 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HDAA_CTL_IN, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %182

107:                                              ; preds = %97
  %108 = load i32, i32* %5, align 4
  %109 = call i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE, align 4
  %113 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %114 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %111, %107
  %120 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %121 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HDAA_QUIRK_IVREF100, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_100(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* @HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_100, align 4
  %132 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32 %131)
  %133 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %134 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 8
  br label %181

139:                                              ; preds = %126, %119
  %140 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %141 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @HDAA_QUIRK_IVREF80, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %139
  %147 = load i32, i32* %5, align 4
  %148 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_80(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* @HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_80, align 4
  %152 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32 %151)
  %153 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %154 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %152
  store i32 %158, i32* %156, align 8
  br label %180

159:                                              ; preds = %146, %139
  %160 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %161 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @HDAA_QUIRK_IVREF50, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load i32, i32* %5, align 4
  %168 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_50(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32, i32* @HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_50, align 4
  %172 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32 %171)
  %173 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %174 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %170, %166, %159
  br label %180

180:                                              ; preds = %179, %150
  br label %181

181:                                              ; preds = %180, %130
  br label %279

182:                                              ; preds = %97
  %183 = load i32, i32* %5, align 4
  %184 = call i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE, align 4
  %188 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %189 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %187
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %182
  %195 = load i32, i32* %5, align 4
  %196 = call i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %194
  %199 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %200 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_HP_OUT, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %198
  %209 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE, align 4
  %210 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %211 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %209
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %208, %198, %194
  %217 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %218 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @HDAA_QUIRK_OVREF100, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %216
  %224 = load i32, i32* %5, align 4
  %225 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_100(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = load i32, i32* @HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_100, align 4
  %229 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32 %228)
  %230 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %231 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %229
  store i32 %235, i32* %233, align 8
  br label %278

236:                                              ; preds = %223, %216
  %237 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %238 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @HDAA_QUIRK_OVREF80, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %236
  %244 = load i32, i32* %5, align 4
  %245 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_80(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %243
  %248 = load i32, i32* @HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_80, align 4
  %249 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32 %248)
  %250 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %251 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %249
  store i32 %255, i32* %253, align 8
  br label %277

256:                                              ; preds = %243, %236
  %257 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %258 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @HDAA_QUIRK_OVREF50, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %256
  %264 = load i32, i32* %5, align 4
  %265 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_50(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %263
  %268 = load i32, i32* @HDA_CMD_PIN_WIDGET_CTRL_VREF_ENABLE_50, align 4
  %269 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32 %268)
  %270 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %271 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %269
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %267, %263, %256
  br label %277

277:                                              ; preds = %276, %247
  br label %278

278:                                              ; preds = %277, %227
  br label %279

279:                                              ; preds = %278, %181
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280, %74
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282, %96, %68, %37, %25
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %10

286:                                              ; preds = %10
  ret void
}

declare dso_local i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_100(i32) #1

declare dso_local i32 @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_80(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_50(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
