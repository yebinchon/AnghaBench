; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devctl2_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devctl2_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.devreq = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_29__*, i32*, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@Giant = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@DF_REBID = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DEVF_FORCE_DETACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@DF_FIXEDCLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVF_SET_DRIVER_DETACH = common dso_local global i32 0, align 4
@DF_WILDCARD = common dso_local global i32 0, align 4
@DEVF_CLEAR_DRIVER_DETACH = common dso_local global i32 0, align 4
@DEVF_FORCE_DELETE = common dso_local global i32 0, align 4
@device_frozen = common dso_local global i32 0, align 4
@DEVF_RESET_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @devctl2_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devctl2_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.devreq*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca %struct.TYPE_31__*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = call i32 @mtx_lock(i32* @Giant)
  %20 = load i64, i64* %9, align 8
  %21 = inttoptr i64 %20 to %struct.devreq*
  store %struct.devreq* %21, %struct.devreq** %12, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %37 [
    i32 140, label %23
    i32 137, label %23
    i32 135, label %23
    i32 136, label %23
    i32 129, label %23
    i32 131, label %23
    i32 130, label %23
    i32 139, label %23
    i32 133, label %23
    i32 138, label %23
    i32 132, label %23
    i32 134, label %33
    i32 128, label %33
  ]

23:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %24 = load %struct.thread*, %struct.thread** %11, align 8
  %25 = load i32, i32* @PRIV_DRIVER, align 4
  %26 = call i32 @priv_check(%struct.thread* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.devreq*, %struct.devreq** %12, align 8
  %31 = call i32 @find_device(%struct.devreq* %30, %struct.TYPE_31__** %13)
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %23
  br label %39

33:                                               ; preds = %5, %5
  %34 = load %struct.thread*, %struct.thread** %11, align 8
  %35 = load i32, i32* @PRIV_DRIVER, align 4
  %36 = call i32 @priv_check(%struct.thread* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  br label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @ENOTTY, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %37, %33, %32
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @mtx_unlock(i32* @Giant)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %445

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %442 [
    i32 140, label %47
    i32 137, label %71
    i32 135, label %94
    i32 136, label %134
    i32 129, label %183
    i32 131, label %200
    i32 130, label %217
    i32 139, label %327
    i32 133, label %375
    i32 138, label %384
    i32 134, label %409
    i32 128, label %416
    i32 132, label %424
  ]

47:                                               ; preds = %45
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %49 = call i32 @device_is_attached(%struct.TYPE_31__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DF_REBID, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %14, align 4
  br label %70

60:                                               ; preds = %51, %47
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %62 = call i32 @device_is_enabled(%struct.TYPE_31__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %14, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %68 = call i32 @device_probe_and_attach(%struct.TYPE_31__* %67)
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %64
  br label %70

70:                                               ; preds = %69, %58
  br label %442

71:                                               ; preds = %45
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %73 = call i32 @device_is_attached(%struct.TYPE_31__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %14, align 4
  br label %442

77:                                               ; preds = %71
  %78 = load %struct.devreq*, %struct.devreq** %12, align 8
  %79 = getelementptr inbounds %struct.devreq, %struct.devreq* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DEVF_FORCE_DETACH, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %86 = call i32 @device_quiesce(%struct.TYPE_31__* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %442

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %93 = call i32 @device_detach(%struct.TYPE_31__* %92)
  store i32 %93, i32* %14, align 4
  br label %442

94:                                               ; preds = %45
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %96 = call i32 @device_is_enabled(%struct.TYPE_31__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @EBUSY, align 4
  store i32 %99, i32* %14, align 4
  br label %442

100:                                              ; preds = %94
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %102 = call i32 @device_enable(%struct.TYPE_31__* %101)
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %104 = call i32 @device_is_alive(%struct.TYPE_31__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %100
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @resource_disabled(i32 %111, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %106
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @resource_unset_value(i32 %122, i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %117, %106
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %129 = call i32 @device_attach(%struct.TYPE_31__* %128)
  store i32 %129, i32* %14, align 4
  br label %133

130:                                              ; preds = %100
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %132 = call i32 @device_probe_and_attach(%struct.TYPE_31__* %131)
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %127
  br label %442

134:                                              ; preds = %45
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %136 = call i32 @device_is_enabled(%struct.TYPE_31__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @ENXIO, align 4
  store i32 %139, i32* %14, align 4
  br label %442

140:                                              ; preds = %134
  %141 = load %struct.devreq*, %struct.devreq** %12, align 8
  %142 = getelementptr inbounds %struct.devreq, %struct.devreq* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DEVF_FORCE_DETACH, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %149 = call i32 @device_quiesce(%struct.TYPE_31__* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %442

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %140
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* @DF_FIXEDCLASS, align 4
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %164 = call i32 @device_detach(%struct.TYPE_31__* %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @DF_FIXEDCLASS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %154
  %170 = load i32, i32* @DF_FIXEDCLASS, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %169, %154
  %177 = load i32, i32* %14, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %181 = call i32 @device_disable(%struct.TYPE_31__* %180)
  br label %182

182:                                              ; preds = %179, %176
  br label %442

183:                                              ; preds = %45
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %185 = call i32 @device_is_suspended(%struct.TYPE_31__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @EBUSY, align 4
  store i32 %188, i32* %14, align 4
  br label %442

189:                                              ; preds = %183
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %191 = call %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__* %190)
  %192 = icmp eq %struct.TYPE_31__* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @EINVAL, align 4
  store i32 %194, i32* %14, align 4
  br label %442

195:                                              ; preds = %189
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %197 = call %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__* %196)
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %199 = call i32 @BUS_SUSPEND_CHILD(%struct.TYPE_31__* %197, %struct.TYPE_31__* %198)
  store i32 %199, i32* %14, align 4
  br label %442

200:                                              ; preds = %45
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %202 = call i32 @device_is_suspended(%struct.TYPE_31__* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @EINVAL, align 4
  store i32 %205, i32* %14, align 4
  br label %442

206:                                              ; preds = %200
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %208 = call %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__* %207)
  %209 = icmp eq %struct.TYPE_31__* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @EINVAL, align 4
  store i32 %211, i32* %14, align 4
  br label %442

212:                                              ; preds = %206
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %214 = call %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__* %213)
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %216 = call i32 @BUS_RESUME_CHILD(%struct.TYPE_31__* %214, %struct.TYPE_31__* %215)
  store i32 %216, i32* %14, align 4
  br label %442

217:                                              ; preds = %45
  %218 = load %struct.devreq*, %struct.devreq** %12, align 8
  %219 = getelementptr inbounds %struct.devreq, %struct.devreq* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %222 = call i32 @copyinstr(i32 %220, i8* %221, i32 128, i32* null)
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  br label %442

226:                                              ; preds = %217
  %227 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %228 = load i8, i8* %227, align 16
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %14, align 4
  br label %442

233:                                              ; preds = %226
  %234 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %235, align 8
  %237 = icmp ne %struct.TYPE_29__* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %233
  %239 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @strcmp(i8* %239, i32 %244)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  br label %442

248:                                              ; preds = %238, %233
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 3
  %251 = load i32*, i32** %250, align 8
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @EINVAL, align 4
  store i32 %254, i32* %14, align 4
  br label %442

255:                                              ; preds = %248
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %260 = call i32 @driver_exists(i32* %258, i8* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %255
  %263 = load i32, i32* @ENOENT, align 4
  store i32 %263, i32* %14, align 4
  br label %442

264:                                              ; preds = %255
  %265 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %266 = call i32* @devclass_create(i8* %265)
  store i32* %266, i32** %16, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i32, i32* @ENOMEM, align 4
  store i32 %270, i32* %14, align 4
  br label %442

271:                                              ; preds = %264
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %273 = call i32 @device_is_attached(%struct.TYPE_31__* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %292

275:                                              ; preds = %271
  %276 = load %struct.devreq*, %struct.devreq** %12, align 8
  %277 = getelementptr inbounds %struct.devreq, %struct.devreq* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @DEVF_SET_DRIVER_DETACH, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %275
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %284 = call i32 @device_detach(%struct.TYPE_31__* %283)
  store i32 %284, i32* %14, align 4
  br label %287

285:                                              ; preds = %275
  %286 = load i32, i32* @EBUSY, align 4
  store i32 %286, i32* %14, align 4
  br label %287

287:                                              ; preds = %285, %282
  %288 = load i32, i32* %14, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %442

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291, %271
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @DF_FIXEDCLASS, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %292
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %301, align 8
  %303 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %304 = call i32 @devclass_delete_device(%struct.TYPE_29__* %302, %struct.TYPE_31__* %303)
  br label %305

305:                                              ; preds = %299, %292
  %306 = load i32, i32* @DF_WILDCARD, align 4
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 1
  store i32 -1, i32* %312, align 4
  %313 = load i32*, i32** %16, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %315 = call i32 @devclass_add_device(i32* %313, %struct.TYPE_31__* %314)
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %305
  br label %442

319:                                              ; preds = %305
  %320 = load i32, i32* @DF_FIXEDCLASS, align 4
  %321 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %326 = call i32 @device_probe_and_attach(%struct.TYPE_31__* %325)
  store i32 %326, i32* %14, align 4
  br label %442

327:                                              ; preds = %45
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @DF_FIXEDCLASS, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %327
  store i32 0, i32* %14, align 4
  br label %442

335:                                              ; preds = %327
  %336 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %337 = call i32 @device_is_attached(%struct.TYPE_31__* %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %335
  %340 = load %struct.devreq*, %struct.devreq** %12, align 8
  %341 = getelementptr inbounds %struct.devreq, %struct.devreq* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @DEVF_CLEAR_DRIVER_DETACH, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %348 = call i32 @device_detach(%struct.TYPE_31__* %347)
  store i32 %348, i32* %14, align 4
  br label %351

349:                                              ; preds = %339
  %350 = load i32, i32* @EBUSY, align 4
  store i32 %350, i32* %14, align 4
  br label %351

351:                                              ; preds = %349, %346
  %352 = load i32, i32* %14, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  br label %442

355:                                              ; preds = %351
  br label %356

356:                                              ; preds = %355, %335
  %357 = load i32, i32* @DF_FIXEDCLASS, align 4
  %358 = xor i32 %357, -1
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = and i32 %361, %358
  store i32 %362, i32* %360, align 8
  %363 = load i32, i32* @DF_WILDCARD, align 4
  %364 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %365 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  %368 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %369, align 8
  %371 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %372 = call i32 @devclass_delete_device(%struct.TYPE_29__* %370, %struct.TYPE_31__* %371)
  %373 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %374 = call i32 @device_probe_and_attach(%struct.TYPE_31__* %373)
  store i32 %374, i32* %14, align 4
  br label %442

375:                                              ; preds = %45
  %376 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %377 = call i32 @device_is_attached(%struct.TYPE_31__* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %381, label %379

379:                                              ; preds = %375
  %380 = load i32, i32* @ENXIO, align 4
  store i32 %380, i32* %14, align 4
  br label %442

381:                                              ; preds = %375
  %382 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %383 = call i32 @BUS_RESCAN(%struct.TYPE_31__* %382)
  store i32 %383, i32* %14, align 4
  br label %442

384:                                              ; preds = %45
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %386 = call %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__* %385)
  store %struct.TYPE_31__* %386, %struct.TYPE_31__** %18, align 8
  %387 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %388 = icmp eq %struct.TYPE_31__* %387, null
  br i1 %388, label %389, label %391

389:                                              ; preds = %384
  %390 = load i32, i32* @EINVAL, align 4
  store i32 %390, i32* %14, align 4
  br label %442

391:                                              ; preds = %384
  %392 = load %struct.devreq*, %struct.devreq** %12, align 8
  %393 = getelementptr inbounds %struct.devreq, %struct.devreq* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @DEVF_FORCE_DELETE, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %405, label %398

398:                                              ; preds = %391
  %399 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %400 = call i32 @bus_child_present(%struct.TYPE_31__* %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load i32, i32* @EBUSY, align 4
  store i32 %403, i32* %14, align 4
  br label %442

404:                                              ; preds = %398
  br label %405

405:                                              ; preds = %404, %391
  %406 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %407 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %408 = call i32 @device_delete_child(%struct.TYPE_31__* %406, %struct.TYPE_31__* %407)
  store i32 %408, i32* %14, align 4
  br label %442

409:                                              ; preds = %45
  %410 = load i32, i32* @device_frozen, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = load i32, i32* @EBUSY, align 4
  store i32 %413, i32* %14, align 4
  br label %415

414:                                              ; preds = %409
  store i32 1, i32* @device_frozen, align 4
  br label %415

415:                                              ; preds = %414, %412
  br label %442

416:                                              ; preds = %45
  %417 = load i32, i32* @device_frozen, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = load i32, i32* @EBUSY, align 4
  store i32 %420, i32* %14, align 4
  br label %423

421:                                              ; preds = %416
  %422 = call i32 (...) @device_do_deferred_actions()
  store i32 0, i32* @device_frozen, align 4
  br label %423

423:                                              ; preds = %421, %419
  br label %442

424:                                              ; preds = %45
  %425 = load %struct.devreq*, %struct.devreq** %12, align 8
  %426 = getelementptr inbounds %struct.devreq, %struct.devreq* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @DEVF_RESET_DETACH, align 4
  %429 = xor i32 %428, -1
  %430 = and i32 %427, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %424
  %433 = load i32, i32* @EINVAL, align 4
  store i32 %433, i32* %14, align 4
  br label %442

434:                                              ; preds = %424
  %435 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %436 = call %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__* %435)
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %438 = load %struct.devreq*, %struct.devreq** %12, align 8
  %439 = getelementptr inbounds %struct.devreq, %struct.devreq* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @BUS_RESET_CHILD(%struct.TYPE_31__* %436, %struct.TYPE_31__* %437, i32 %440)
  store i32 %441, i32* %14, align 4
  br label %442

442:                                              ; preds = %45, %434, %432, %423, %415, %405, %402, %389, %381, %379, %356, %354, %334, %319, %318, %290, %269, %262, %253, %247, %231, %225, %212, %210, %204, %195, %193, %187, %182, %152, %138, %133, %98, %91, %89, %75, %70
  %443 = call i32 @mtx_unlock(i32* @Giant)
  %444 = load i32, i32* %14, align 4
  store i32 %444, i32* %6, align 4
  br label %445

445:                                              ; preds = %442, %42
  %446 = load i32, i32* %6, align 4
  ret i32 %446
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @find_device(%struct.devreq*, %struct.TYPE_31__**) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_is_attached(%struct.TYPE_31__*) #1

declare dso_local i32 @device_is_enabled(%struct.TYPE_31__*) #1

declare dso_local i32 @device_probe_and_attach(%struct.TYPE_31__*) #1

declare dso_local i32 @device_quiesce(%struct.TYPE_31__*) #1

declare dso_local i32 @device_detach(%struct.TYPE_31__*) #1

declare dso_local i32 @device_enable(%struct.TYPE_31__*) #1

declare dso_local i32 @device_is_alive(%struct.TYPE_31__*) #1

declare dso_local i32 @resource_disabled(i32, i32) #1

declare dso_local i32 @resource_unset_value(i32, i32, i8*) #1

declare dso_local i32 @device_attach(%struct.TYPE_31__*) #1

declare dso_local i32 @device_disable(%struct.TYPE_31__*) #1

declare dso_local i32 @device_is_suspended(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @device_get_parent(%struct.TYPE_31__*) #1

declare dso_local i32 @BUS_SUSPEND_CHILD(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @BUS_RESUME_CHILD(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @driver_exists(i32*, i8*) #1

declare dso_local i32* @devclass_create(i8*) #1

declare dso_local i32 @devclass_delete_device(%struct.TYPE_29__*, %struct.TYPE_31__*) #1

declare dso_local i32 @devclass_add_device(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @BUS_RESCAN(%struct.TYPE_31__*) #1

declare dso_local i32 @bus_child_present(%struct.TYPE_31__*) #1

declare dso_local i32 @device_delete_child(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @device_do_deferred_actions(...) #1

declare dso_local i32 @BUS_RESET_CHILD(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
