; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_assign_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_assign_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i64 }
%struct.hdaa_widget = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@hdaa_audio_assign_names.types = internal constant <{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }> <{ <{ i32, i32, i32, i32, i32, [8 x i32] }> <{ i32 138, i32 137, i32 136, i32 135, i32 -1, [8 x i32] zeroinitializer }>, <{ i32, i32, i32, [10 x i32] }> <{ i32 133, i32 134, i32 -1, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, [10 x i32] }> <{ i32 134, i32 133, i32 -1, [10 x i32] zeroinitializer }>, <{ i32, i32, [11 x i32] }> <{ i32 142, i32 -1, [11 x i32] zeroinitializer }>, <{ i32, i32, [11 x i32] }> <{ i32 129, i32 -1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [9 x i32] }> <{ i32 141, i32 140, i32 139, i32 -1, [9 x i32] zeroinitializer }>, [13 x i32] [i32 138, i32 137, i32 136, i32 135, i32 132, i32 131, i32 128, i32 130, i32 141, i32 140, i32 139, i32 133, i32 -1] }>, align 16
@HDAA_CTL_OUT = common dso_local global i64 0, align 8
@HDA_CONFIG_DEFAULTCONF_DEVICE_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_JACK = common dso_local global i32 0, align 4
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_audio_assign_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_assign_names(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_audio_as*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %11 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %10, i32 0, i32 2
  %12 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %11, align 8
  store %struct.hdaa_audio_as* %12, %struct.hdaa_audio_as** %3, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %14 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %145, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %19 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %148

22:                                               ; preds = %16
  %23 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %23, i32 %24)
  store %struct.hdaa_widget* %25, %struct.hdaa_widget** %4, align 8
  %26 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %27 = icmp eq %struct.hdaa_widget* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %30 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %22
  br label %145

34:                                               ; preds = %28
  %35 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %36 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %145

40:                                               ; preds = %34
  store i32 -1, i32* %8, align 4
  %41 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %42 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %132 [
    i32 143, label %44
    i32 145, label %129
    i32 144, label %131
  ]

44:                                               ; preds = %40
  %45 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %46 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %47 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %45, i64 %49
  %51 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HDAA_CTL_OUT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %133

56:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  %57 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %58 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %80 [
    i32 151, label %64
    i32 149, label %65
    i32 155, label %77
    i32 146, label %78
    i32 148, label %79
    i32 154, label %79
  ]

64:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %80

65:                                               ; preds = %56
  %66 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %67 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_JACK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %80

76:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %80

77:                                               ; preds = %56
  store i32 3, i32* %7, align 4
  br label %80

78:                                               ; preds = %56
  store i32 4, i32* %7, align 4
  br label %80

79:                                               ; preds = %56, %56
  store i32 5, i32* %7, align 4
  br label %80

80:                                               ; preds = %56, %79, %78, %77, %76, %75, %64
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %133

84:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [13 x i32], [13 x i32]* %88, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %97
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [13 x i32], [13 x i32]* %98, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %95, %103
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %94, %85
  %107 = phi i1 [ false, %85 ], [ %105, %94 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %85

111:                                              ; preds = %106
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %113
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [13 x i32], [13 x i32]* %114, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %122
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [13 x i32], [13 x i32]* %123, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %120, %111
  br label %133

129:                                              ; preds = %40
  %130 = load i32, i32* @SOUND_MIXER_PCM, align 4
  store i32 %130, i32* %8, align 4
  br label %133

131:                                              ; preds = %40
  store i32 129, i32* %8, align 4
  br label %133

132:                                              ; preds = %40
  br label %133

133:                                              ; preds = %132, %131, %129, %128, %83, %55
  %134 = load i32, i32* %8, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %139 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %8, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %136, %133
  br label %145

145:                                              ; preds = %144, %39, %33
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %16

148:                                              ; preds = %16
  %149 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %150 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %272, %148
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %155 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %275

158:                                              ; preds = %152
  %159 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %159, i32 %160)
  store %struct.hdaa_widget* %161, %struct.hdaa_widget** %4, align 8
  %162 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %163 = icmp eq %struct.hdaa_widget* %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %158
  %165 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %166 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164, %158
  br label %272

170:                                              ; preds = %164
  %171 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %172 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %272

176:                                              ; preds = %170
  %177 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %178 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %272

182:                                              ; preds = %176
  %183 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %184 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 143
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %272

188:                                              ; preds = %182
  %189 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %190 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %191 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %189, i64 %193
  %195 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @HDAA_CTL_OUT, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %272

200:                                              ; preds = %188
  store i32 -1, i32* %7, align 4
  %201 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %202 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %207 = and i32 %205, %206
  switch i32 %207, label %211 [
    i32 150, label %208
    i32 146, label %208
    i32 152, label %208
    i32 156, label %208
    i32 149, label %209
    i32 147, label %210
    i32 153, label %210
  ]

208:                                              ; preds = %200, %200, %200, %200
  store i32 0, i32* %7, align 4
  br label %211

209:                                              ; preds = %200
  store i32 2, i32* %7, align 4
  br label %211

210:                                              ; preds = %200, %200
  store i32 5, i32* %7, align 4
  br label %211

211:                                              ; preds = %200, %210, %209, %208
  %212 = load i32, i32* %7, align 4
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %275

215:                                              ; preds = %211
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %239, %215
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %218
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [13 x i32], [13 x i32]* %219, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %216
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %228
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [13 x i32], [13 x i32]* %229, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = shl i32 1, %233
  %235 = and i32 %226, %234
  %236 = icmp ne i32 %235, 0
  br label %237

237:                                              ; preds = %225, %216
  %238 = phi i1 [ false, %216 ], [ %236, %225 ]
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %216

242:                                              ; preds = %237
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %244
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [13 x i32], [13 x i32]* %245, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %271

251:                                              ; preds = %242
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %253
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [13 x i32], [13 x i32]* %254, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %260 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 %262
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [13 x i32], [13 x i32]* %263, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 1, %267
  %269 = load i32, i32* %9, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %251, %242
  br label %272

272:                                              ; preds = %271, %199, %187, %181, %175, %169
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %152

275:                                              ; preds = %214, %152
  %276 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %277 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %5, align 4
  br label %279

279:                                              ; preds = %369, %275
  %280 = load i32, i32* %5, align 4
  %281 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %282 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %372

285:                                              ; preds = %279
  %286 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %286, i32 %287)
  store %struct.hdaa_widget* %288, %struct.hdaa_widget** %4, align 8
  %289 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %290 = icmp eq %struct.hdaa_widget* %289, null
  br i1 %290, label %296, label %291

291:                                              ; preds = %285
  %292 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %293 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291, %285
  br label %369

297:                                              ; preds = %291
  %298 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %299 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = icmp sge i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %297
  br label %369

303:                                              ; preds = %297
  %304 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %305 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  br label %369

309:                                              ; preds = %303
  %310 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %311 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 143
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  br label %369

315:                                              ; preds = %309
  %316 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %317 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %318 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %316, i64 %320
  %322 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @HDAA_CTL_OUT, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %315
  br label %369

327:                                              ; preds = %315
  store i32 0, i32* %6, align 4
  br label %328

328:                                              ; preds = %345, %327
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [13 x i32], [13 x i32]* getelementptr inbounds ([7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 6), i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp sge i32 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %328
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [13 x i32], [13 x i32]* getelementptr inbounds ([7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 6), i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = shl i32 1, %339
  %341 = and i32 %335, %340
  %342 = icmp ne i32 %341, 0
  br label %343

343:                                              ; preds = %334, %328
  %344 = phi i1 [ false, %328 ], [ %342, %334 ]
  br i1 %344, label %345, label %348

345:                                              ; preds = %343
  %346 = load i32, i32* %6, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %6, align 4
  br label %328

348:                                              ; preds = %343
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [13 x i32], [13 x i32]* getelementptr inbounds ([7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 6), i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %368

354:                                              ; preds = %348
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [13 x i32], [13 x i32]* getelementptr inbounds ([7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 6), i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %360 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %359, i32 0, i32 3
  store i32 %358, i32* %360, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [13 x i32], [13 x i32]* getelementptr inbounds ([7 x [13 x i32]], [7 x [13 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, [10 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [9 x i32] }>, [13 x i32] }>* @hdaa_audio_assign_names.types to [7 x [13 x i32]]*), i64 0, i64 6), i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = shl i32 1, %364
  %366 = load i32, i32* %9, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %9, align 4
  br label %368

368:                                              ; preds = %354, %348
  br label %369

369:                                              ; preds = %368, %326, %314, %308, %302, %296
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %5, align 4
  br label %279

372:                                              ; preds = %279
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
