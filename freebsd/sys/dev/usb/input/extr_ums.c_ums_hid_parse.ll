; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_hid_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_hid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ums_softc = type { i64, %struct.ums_info* }
%struct.ums_info = type { i32, i64, i32, i32*, %struct.TYPE_2__*, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HUP_GENERIC_DESKTOP = common dso_local global i32 0, align 4
@HUG_X = common dso_local global i64 0, align 8
@hid_input = common dso_local global i32 0, align 4
@MOUSE_FLAGS_MASK = common dso_local global i32 0, align 4
@MOUSE_FLAGS = common dso_local global i32 0, align 4
@UMS_FLAG_X_AXIS = common dso_local global i32 0, align 4
@HUG_Y = common dso_local global i64 0, align 8
@UMS_FLAG_Y_AXIS = common dso_local global i32 0, align 4
@HUG_WHEEL = common dso_local global i64 0, align 8
@HUG_TWHEEL = common dso_local global i64 0, align 8
@UMS_FLAG_Z_AXIS = common dso_local global i32 0, align 4
@HUG_Z = common dso_local global i64 0, align 8
@UMS_FLAG_W_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_T_AXIS = common dso_local global i32 0, align 4
@HUP_CONSUMER = common dso_local global i32 0, align 4
@HUC_AC_PAN = common dso_local global i64 0, align 8
@UMS_BUTTON_MAX = common dso_local global i64 0, align 8
@HUP_BUTTON = common dso_local global i32 0, align 4
@HUP_MICROSOFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d buttons and [%s%s%s%s%s] coordinates ID=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ums_softc*, i32, i64*, i32, i64)* @ums_hid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ums_hid_parse(%struct.ums_softc* %0, i32 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ums_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ums_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ums_softc* %0, %struct.ums_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %16 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %15, i32 0, i32 1
  %17 = load %struct.ums_info*, %struct.ums_info** %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %17, i64 %18
  store %struct.ums_info* %19, %struct.ums_info** %11, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %23 = load i64, i64* @HUG_X, align 8
  %24 = call i32 @HID_USAGE2(i32 %22, i64 %23)
  %25 = load i32, i32* @hid_input, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %28 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %27, i32 0, i32 13
  %29 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %30 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %29, i32 0, i32 2
  %31 = call i64 @hid_locate(i64* %20, i32 %21, i32 %24, i32 %25, i64 %26, %struct.TYPE_2__* %28, i32* %12, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %5
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @MOUSE_FLAGS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @UMS_FLAG_X_AXIS, align 4
  %41 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %42 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %5
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %50 = load i64, i64* @HUG_Y, align 8
  %51 = call i32 @HID_USAGE2(i32 %49, i64 %50)
  %52 = load i32, i32* @hid_input, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %55 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %54, i32 0, i32 12
  %56 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %57 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %56, i32 0, i32 11
  %58 = call i64 @hid_locate(i64* %47, i32 %48, i32 %51, i32 %52, i64 %53, %struct.TYPE_2__* %55, i32* %12, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %46
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @MOUSE_FLAGS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @UMS_FLAG_Y_AXIS, align 4
  %68 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %69 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i64*, i64** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %77 = load i64, i64* @HUG_WHEEL, align 8
  %78 = call i32 @HID_USAGE2(i32 %76, i64 %77)
  %79 = load i32, i32* @hid_input, align 4
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %82 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %81, i32 0, i32 8
  %83 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %84 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %83, i32 0, i32 7
  %85 = call i64 @hid_locate(i64* %74, i32 %75, i32 %78, i32 %79, i64 %80, %struct.TYPE_2__* %82, i32* %12, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %73
  %88 = load i64*, i64** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %91 = load i64, i64* @HUG_TWHEEL, align 8
  %92 = call i32 @HID_USAGE2(i32 %90, i64 %91)
  %93 = load i32, i32* @hid_input, align 4
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %96 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %95, i32 0, i32 8
  %97 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %98 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %97, i32 0, i32 7
  %99 = call i64 @hid_locate(i64* %88, i32 %89, i32 %92, i32 %93, i64 %94, %struct.TYPE_2__* %96, i32* %12, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %141

101:                                              ; preds = %87, %73
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @MOUSE_FLAGS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* @UMS_FLAG_Z_AXIS, align 4
  %109 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %110 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %101
  %114 = load i64*, i64** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %117 = load i64, i64* @HUG_Z, align 8
  %118 = call i32 @HID_USAGE2(i32 %116, i64 %117)
  %119 = load i32, i32* @hid_input, align 4
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %122 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %121, i32 0, i32 10
  %123 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %124 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %123, i32 0, i32 9
  %125 = call i64 @hid_locate(i64* %114, i32 %115, i32 %118, i32 %119, i64 %120, %struct.TYPE_2__* %122, i32* %12, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %113
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @MOUSE_FLAGS, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @UMS_FLAG_W_AXIS, align 4
  %135 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %136 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %127
  br label %140

140:                                              ; preds = %139, %113
  br label %169

141:                                              ; preds = %87
  %142 = load i64*, i64** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %145 = load i64, i64* @HUG_Z, align 8
  %146 = call i32 @HID_USAGE2(i32 %144, i64 %145)
  %147 = load i32, i32* @hid_input, align 4
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %150 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %149, i32 0, i32 8
  %151 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %152 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %151, i32 0, i32 7
  %153 = call i64 @hid_locate(i64* %142, i32 %143, i32 %146, i32 %147, i64 %148, %struct.TYPE_2__* %150, i32* %12, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %141
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @MOUSE_FLAGS, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32, i32* @UMS_FLAG_Z_AXIS, align 4
  %163 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %164 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %155
  br label %168

168:                                              ; preds = %167, %141
  br label %169

169:                                              ; preds = %168, %140
  %170 = load i64*, i64** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %173 = load i64, i64* @HUG_TWHEEL, align 8
  %174 = call i32 @HID_USAGE2(i32 %172, i64 %173)
  %175 = load i32, i32* @hid_input, align 4
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %178 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %177, i32 0, i32 6
  %179 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %180 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %179, i32 0, i32 5
  %181 = call i64 @hid_locate(i64* %170, i32 %171, i32 %174, i32 %175, i64 %176, %struct.TYPE_2__* %178, i32* %12, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %169
  %184 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %185 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 8
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @MOUSE_FLAGS, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %183
  %195 = load i32, i32* @UMS_FLAG_T_AXIS, align 4
  %196 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %197 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %183
  br label %229

201:                                              ; preds = %169
  %202 = load i64*, i64** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @HUP_CONSUMER, align 4
  %205 = load i64, i64* @HUC_AC_PAN, align 8
  %206 = call i32 @HID_USAGE2(i32 %204, i64 %205)
  %207 = load i32, i32* @hid_input, align 4
  %208 = load i64, i64* %10, align 8
  %209 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %210 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %209, i32 0, i32 6
  %211 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %212 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %211, i32 0, i32 5
  %213 = call i64 @hid_locate(i64* %202, i32 %203, i32 %206, i32 %207, i64 %208, %struct.TYPE_2__* %210, i32* %12, i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %201
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @MOUSE_FLAGS_MASK, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* @MOUSE_FLAGS, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load i32, i32* @UMS_FLAG_T_AXIS, align 4
  %223 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %224 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %221, %215
  br label %228

228:                                              ; preds = %227, %201
  br label %229

229:                                              ; preds = %228, %200
  store i64 0, i64* %13, align 8
  br label %230

230:                                              ; preds = %257, %229
  %231 = load i64, i64* %13, align 8
  %232 = load i64, i64* @UMS_BUTTON_MAX, align 8
  %233 = icmp ult i64 %231, %232
  br i1 %233, label %234, label %260

234:                                              ; preds = %230
  %235 = load i64*, i64** %8, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @HUP_BUTTON, align 4
  %238 = load i64, i64* %13, align 8
  %239 = add i64 %238, 1
  %240 = call i32 @HID_USAGE2(i32 %237, i64 %239)
  %241 = load i32, i32* @hid_input, align 4
  %242 = load i64, i64* %10, align 8
  %243 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %244 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %243, i32 0, i32 4
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = load i64, i64* %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 %246
  %248 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %249 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* %13, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = call i64 @hid_locate(i64* %235, i32 %236, i32 %240, i32 %241, i64 %242, %struct.TYPE_2__* %247, i32* null, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %234
  br label %260

256:                                              ; preds = %234
  br label %257

257:                                              ; preds = %256
  %258 = load i64, i64* %13, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %13, align 8
  br label %230

260:                                              ; preds = %255, %230
  store i64 0, i64* %14, align 8
  br label %261

261:                                              ; preds = %293, %260
  %262 = load i64, i64* %13, align 8
  %263 = load i64, i64* @UMS_BUTTON_MAX, align 8
  %264 = icmp ult i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i64, i64* %14, align 8
  %267 = icmp ult i64 %266, 2
  br label %268

268:                                              ; preds = %265, %261
  %269 = phi i1 [ false, %261 ], [ %267, %265 ]
  br i1 %269, label %270, label %298

270:                                              ; preds = %268
  %271 = load i64*, i64** %8, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @HUP_MICROSOFT, align 4
  %274 = load i64, i64* %14, align 8
  %275 = add i64 %274, 1
  %276 = call i32 @HID_USAGE2(i32 %273, i64 %275)
  %277 = load i32, i32* @hid_input, align 4
  %278 = load i64, i64* %10, align 8
  %279 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %280 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %279, i32 0, i32 4
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = load i64, i64* %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i64 %282
  %284 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %285 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* %13, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = call i64 @hid_locate(i64* %271, i32 %272, i32 %276, i32 %277, i64 %278, %struct.TYPE_2__* %283, i32* null, i32* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %270
  br label %298

292:                                              ; preds = %270
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %13, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %13, align 8
  %296 = load i64, i64* %14, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %14, align 8
  br label %261

298:                                              ; preds = %291, %268
  %299 = load i64, i64* %13, align 8
  %300 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %301 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %300, i32 0, i32 1
  store i64 %299, i64* %301, align 8
  %302 = load i64, i64* %13, align 8
  %303 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %304 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ugt i64 %302, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %298
  %308 = load i64, i64* %13, align 8
  %309 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %310 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  br label %311

311:                                              ; preds = %307, %298
  %312 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %313 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  br label %366

317:                                              ; preds = %311
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %320 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %323 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @UMS_FLAG_X_AXIS, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %330 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %331 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @UMS_FLAG_Y_AXIS, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  %336 = zext i1 %335 to i64
  %337 = select i1 %335, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %338 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %339 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @UMS_FLAG_Z_AXIS, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %346 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %347 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @UMS_FLAG_T_AXIS, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %354 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %355 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @UMS_FLAG_W_AXIS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %362 = load %struct.ums_info*, %struct.ums_info** %11, align 8
  %363 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @device_printf(i32 %318, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %321, i8* %329, i8* %337, i8* %345, i8* %353, i8* %361, i32 %364)
  br label %366

366:                                              ; preds = %317, %316
  ret void
}

declare dso_local i64 @hid_locate(i64*, i32, i32, i32, i64, %struct.TYPE_2__*, i32*, i32*) #1

declare dso_local i32 @HID_USAGE2(i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
