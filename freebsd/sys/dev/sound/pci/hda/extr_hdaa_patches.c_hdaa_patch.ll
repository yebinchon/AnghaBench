; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa_patches.c_hdaa_patch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa_patches.c_hdaa_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.hdaa_devinfo = type { i32, i32, i32, i32, i32 }
%struct.hdaa_widget = type { %struct.TYPE_6__, i32*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@hdac_quirks = common dso_local global %struct.TYPE_9__* null, align 8
@HDA_CONFIG_DEFAULTCONF_DEVICE_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_DEVICE_MIC_IN = common dso_local global i32 0, align 4
@ASUS_A8X_SUBVENDOR = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_NONE = common dso_local global i32 0, align 4
@HDAA_QUIRK_EAPDINV = common dso_local global i32 0, align 4
@HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE_SHIFT = common dso_local global i32 0, align 4
@HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS_SHIFT = common dso_local global i32 0, align 4
@HDA_PARAM_OUTPUT_AMP_CAP_OFFSET_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdaa_patch(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_widget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %9 = call i32 @hdaa_codec_id(%struct.hdaa_devinfo* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %11 = call i32 @hdaa_card_id(%struct.hdaa_devinfo* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hda_get_subsystem_id(i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %82, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %19 = call i32 @nitems(%struct.TYPE_9__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @HDA_DEV_MATCH(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @HDA_DEV_MATCH(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @HDA_DEV_MATCH(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41, %31, %21
  br label %82

52:                                               ; preds = %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %60 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %71 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hdac_quirks, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %81 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %52, %51
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %16

85:                                               ; preds = %16
  %86 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %87 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %105, %85
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %92 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %96, i32 %97)
  store %struct.hdaa_widget* %98, %struct.hdaa_widget** %3, align 8
  %99 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %100 = icmp eq %struct.hdaa_widget* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %105

102:                                              ; preds = %95
  %103 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %104 = call i32 @hdaa_widget_patch(%struct.hdaa_widget* %103)
  br label %105

105:                                              ; preds = %102, %101
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %89

108:                                              ; preds = %89
  %109 = load i32, i32* %4, align 4
  switch i32 %109, label %470 [
    i32 143, label %110
    i32 142, label %171
    i32 144, label %331
    i32 141, label %390
    i32 140, label %404
    i32 139, label %404
    i32 138, label %404
    i32 137, label %404
    i32 136, label %404
    i32 135, label %435
    i32 134, label %435
    i32 133, label %435
    i32 132, label %435
    i32 131, label %435
    i32 130, label %435
    i32 129, label %435
    i32 128, label %435
  ]

110:                                              ; preds = %108
  %111 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %112 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %111, i32 5)
  store %struct.hdaa_widget* %112, %struct.hdaa_widget** %3, align 8
  %113 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %114 = icmp ne %struct.hdaa_widget* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %117 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %122 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %121, i32 6)
  store %struct.hdaa_widget* %122, %struct.hdaa_widget** %3, align 8
  %123 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %124 = icmp ne %struct.hdaa_widget* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %127 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %132 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %131, i32 11)
  store %struct.hdaa_widget* %132, %struct.hdaa_widget** %3, align 8
  %133 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %134 = icmp ne %struct.hdaa_widget* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %137 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %142 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %141, i32 12)
  store %struct.hdaa_widget* %142, %struct.hdaa_widget** %3, align 8
  %143 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %144 = icmp ne %struct.hdaa_widget* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %147 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %152 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %151, i32 13)
  store %struct.hdaa_widget* %152, %struct.hdaa_widget** %3, align 8
  %153 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %154 = icmp ne %struct.hdaa_widget* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %157 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %150
  %161 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %162 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %161, i32 20)
  store %struct.hdaa_widget* %162, %struct.hdaa_widget** %3, align 8
  %163 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %164 = icmp ne %struct.hdaa_widget* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %167 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %160
  br label %470

171:                                              ; preds = %108
  %172 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %173 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %172, i32 43)
  store %struct.hdaa_widget* %173, %struct.hdaa_widget** %3, align 8
  %174 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %175 = icmp ne %struct.hdaa_widget* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %178 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %177, i32 0, i32 2
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %171
  %180 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %181 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %180, i32 39)
  store %struct.hdaa_widget* %181, %struct.hdaa_widget** %3, align 8
  %182 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %183 = icmp ne %struct.hdaa_widget* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %186 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %185, i32 0, i32 2
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %179
  %188 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %189 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %188, i32 40)
  store %struct.hdaa_widget* %189, %struct.hdaa_widget** %3, align 8
  %190 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %191 = icmp ne %struct.hdaa_widget* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %194 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %193, i32 0, i32 2
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %197 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %196, i32 41)
  store %struct.hdaa_widget* %197, %struct.hdaa_widget** %3, align 8
  %198 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %199 = icmp ne %struct.hdaa_widget* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %202 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %201, i32 0, i32 2
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %205 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %204, i32 42)
  store %struct.hdaa_widget* %205, %struct.hdaa_widget** %3, align 8
  %206 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %207 = icmp ne %struct.hdaa_widget* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %210 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %209, i32 0, i32 2
  store i32 0, i32* %210, align 8
  br label %211

211:                                              ; preds = %208, %203
  %212 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %213 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %212, i32 15)
  store %struct.hdaa_widget* %213, %struct.hdaa_widget** %3, align 8
  %214 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %215 = icmp ne %struct.hdaa_widget* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %218 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  store i32 0, i32* %220, align 4
  br label %221

221:                                              ; preds = %216, %211
  %222 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %223 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %222, i32 31)
  store %struct.hdaa_widget* %223, %struct.hdaa_widget** %3, align 8
  %224 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %225 = icmp ne %struct.hdaa_widget* %224, null
  br i1 %225, label %226, label %259

226:                                              ; preds = %221
  %227 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %228 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MIC_IN, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %226
  %237 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %238 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %237, i32 16)
  store %struct.hdaa_widget* %238, %struct.hdaa_widget** %3, align 8
  %239 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %240 = icmp ne %struct.hdaa_widget* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %243 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %241, %236
  br label %258

247:                                              ; preds = %226
  %248 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %249 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %248, i32 15)
  store %struct.hdaa_widget* %249, %struct.hdaa_widget** %3, align 8
  %250 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %251 = icmp ne %struct.hdaa_widget* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %254 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %247
  br label %258

258:                                              ; preds = %257, %246
  br label %259

259:                                              ; preds = %258, %221
  %260 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %261 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %260, i32 32)
  store %struct.hdaa_widget* %261, %struct.hdaa_widget** %3, align 8
  %262 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %263 = icmp ne %struct.hdaa_widget* %262, null
  br i1 %263, label %264, label %297

264:                                              ; preds = %259
  %265 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %266 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MIC_IN, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %264
  %275 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %276 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %275, i32 16)
  store %struct.hdaa_widget* %276, %struct.hdaa_widget** %3, align 8
  %277 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %278 = icmp ne %struct.hdaa_widget* %277, null
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %281 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  store i32 0, i32* %283, align 4
  br label %284

284:                                              ; preds = %279, %274
  br label %296

285:                                              ; preds = %264
  %286 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %287 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %286, i32 15)
  store %struct.hdaa_widget* %287, %struct.hdaa_widget** %3, align 8
  %288 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %289 = icmp ne %struct.hdaa_widget* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %292 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  store i32 0, i32* %294, align 4
  br label %295

295:                                              ; preds = %290, %285
  br label %296

296:                                              ; preds = %295, %284
  br label %297

297:                                              ; preds = %296, %259
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* @ASUS_A8X_SUBVENDOR, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %330

301:                                              ; preds = %297
  %302 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %303 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %302, i32 26)
  store %struct.hdaa_widget* %303, %struct.hdaa_widget** %3, align 8
  %304 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %305 = icmp ne %struct.hdaa_widget* %304, null
  br i1 %305, label %306, label %329

306:                                              ; preds = %301
  %307 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %308 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %329

312:                                              ; preds = %306
  %313 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %314 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK, align 4
  %319 = and i32 %317, %318
  %320 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_NONE, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %312
  %323 = load i32, i32* @HDAA_QUIRK_EAPDINV, align 4
  %324 = xor i32 %323, -1
  %325 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %326 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, %324
  store i32 %328, i32* %326, align 4
  br label %329

329:                                              ; preds = %322, %312, %306, %301
  br label %330

330:                                              ; preds = %329, %297
  br label %470

331:                                              ; preds = %108
  %332 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %333 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %332, i32 21)
  store %struct.hdaa_widget* %333, %struct.hdaa_widget** %3, align 8
  %334 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %335 = icmp ne %struct.hdaa_widget* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %338 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 3
  store i32 0, i32* %340, align 4
  br label %341

341:                                              ; preds = %336, %331
  %342 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %343 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %342, i32 31)
  store %struct.hdaa_widget* %343, %struct.hdaa_widget** %3, align 8
  %344 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %345 = icmp ne %struct.hdaa_widget* %344, null
  br i1 %345, label %346, label %349

346:                                              ; preds = %341
  %347 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %348 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %347, i32 0, i32 2
  store i32 0, i32* %348, align 8
  br label %349

349:                                              ; preds = %346, %341
  %350 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %351 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %350, i32 5)
  store %struct.hdaa_widget* %351, %struct.hdaa_widget** %3, align 8
  %352 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %353 = icmp ne %struct.hdaa_widget* %352, null
  br i1 %353, label %354, label %359

354:                                              ; preds = %349
  %355 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %356 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  store i32 0, i32* %358, align 4
  br label %359

359:                                              ; preds = %354, %349
  %360 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %361 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %360, i32 6)
  store %struct.hdaa_widget* %361, %struct.hdaa_widget** %3, align 8
  %362 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %363 = icmp ne %struct.hdaa_widget* %362, null
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %366 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  store i32 0, i32* %368, align 4
  br label %369

369:                                              ; preds = %364, %359
  %370 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %371 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %370, i32 9)
  store %struct.hdaa_widget* %371, %struct.hdaa_widget** %3, align 8
  %372 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %373 = icmp ne %struct.hdaa_widget* %372, null
  br i1 %373, label %374, label %379

374:                                              ; preds = %369
  %375 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %376 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  store i32 0, i32* %378, align 4
  br label %379

379:                                              ; preds = %374, %369
  %380 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %381 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %380, i32 24)
  store %struct.hdaa_widget* %381, %struct.hdaa_widget** %3, align 8
  %382 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %383 = icmp ne %struct.hdaa_widget* %382, null
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %386 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  store i32 0, i32* %388, align 4
  br label %389

389:                                              ; preds = %384, %379
  br label %470

390:                                              ; preds = %108
  %391 = load i32, i32* %5, align 4
  %392 = icmp eq i32 %391, -2076766141
  br i1 %392, label %393, label %403

393:                                              ; preds = %390
  %394 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %395 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %394, i32 15)
  store %struct.hdaa_widget* %395, %struct.hdaa_widget** %3, align 8
  %396 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %397 = icmp ne %struct.hdaa_widget* %396, null
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  %399 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %400 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 0
  store i32 0, i32* %401, align 8
  br label %402

402:                                              ; preds = %398, %393
  br label %403

403:                                              ; preds = %402, %390
  br label %470

404:                                              ; preds = %108, %108, %108, %108, %108
  %405 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %406 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %405, i32 20)
  store %struct.hdaa_widget* %406, %struct.hdaa_widget** %3, align 8
  %407 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %408 = icmp ne %struct.hdaa_widget* %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %404
  %410 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %411 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %410, i32 0, i32 1
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  store i32 0, i32* %413, align 4
  br label %414

414:                                              ; preds = %409, %404
  %415 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %416 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %415, i32 21)
  store %struct.hdaa_widget* %416, %struct.hdaa_widget** %3, align 8
  %417 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %418 = icmp ne %struct.hdaa_widget* %417, null
  br i1 %418, label %419, label %424

419:                                              ; preds = %414
  %420 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %421 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 1
  store i32 0, i32* %423, align 4
  br label %424

424:                                              ; preds = %419, %414
  %425 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %426 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %425, i32 22)
  store %struct.hdaa_widget* %426, %struct.hdaa_widget** %3, align 8
  %427 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %428 = icmp ne %struct.hdaa_widget* %427, null
  br i1 %428, label %429, label %434

429:                                              ; preds = %424
  %430 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %431 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  store i32 0, i32* %433, align 4
  br label %434

434:                                              ; preds = %429, %424
  br label %470

435:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108
  %436 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %437 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %436, i32 26)
  store %struct.hdaa_widget* %437, %struct.hdaa_widget** %3, align 8
  %438 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %439 = icmp ne %struct.hdaa_widget* %438, null
  br i1 %439, label %440, label %452

440:                                              ; preds = %435
  %441 = load i32, i32* @HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE_SHIFT, align 4
  %442 = shl i32 40, %441
  %443 = load i32, i32* @HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS_SHIFT, align 4
  %444 = shl i32 3, %443
  %445 = or i32 %442, %444
  %446 = load i32, i32* @HDA_PARAM_OUTPUT_AMP_CAP_OFFSET_SHIFT, align 4
  %447 = shl i32 0, %446
  %448 = or i32 %445, %447
  %449 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %450 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 0
  store i32 %448, i32* %451, align 8
  br label %452

452:                                              ; preds = %440, %435
  %453 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %454 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %453, i32 30)
  store %struct.hdaa_widget* %454, %struct.hdaa_widget** %3, align 8
  %455 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %456 = icmp ne %struct.hdaa_widget* %455, null
  br i1 %456, label %457, label %469

457:                                              ; preds = %452
  %458 = load i32, i32* @HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE_SHIFT, align 4
  %459 = shl i32 40, %458
  %460 = load i32, i32* @HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS_SHIFT, align 4
  %461 = shl i32 3, %460
  %462 = or i32 %459, %461
  %463 = load i32, i32* @HDA_PARAM_OUTPUT_AMP_CAP_OFFSET_SHIFT, align 4
  %464 = shl i32 0, %463
  %465 = or i32 %462, %464
  %466 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %467 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 0
  store i32 %465, i32* %468, align 8
  br label %469

469:                                              ; preds = %457, %452
  br label %470

470:                                              ; preds = %108, %469, %434, %403, %389, %330, %170
  ret void
}

declare dso_local i32 @hdaa_codec_id(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_card_id(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hda_get_subsystem_id(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_9__*) #1

declare dso_local i64 @HDA_DEV_MATCH(i32, i32) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_widget_patch(%struct.hdaa_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
