; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_probe_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_probe_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i64, i32, %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }

@GIANT_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"device_probe_child: parent device has no devclass\00", align 1
@DS_ALIVE = common dso_local global i64 0, align 8
@DF_REBID = common dso_local global i32 0, align 4
@bus_current_pass = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Trying %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"driver bug: Unable to set devclass (class: %s devname: %s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@BUS_PROBE_NOWILDCARD = common dso_local global i32 0, align 4
@DF_FIXEDCLASS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_probe_child(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %16 = icmp ne %struct.TYPE_24__* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @GIANT_REQUIRED, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %6, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = icmp ne %struct.TYPE_24__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DS_ALIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DF_REBID, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %269

40:                                               ; preds = %32, %26
  br label %41

41:                                               ; preds = %181, %40
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = icmp ne %struct.TYPE_24__* %42, null
  br i1 %43, label %44, label %185

44:                                               ; preds = %41
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %47 = call %struct.TYPE_22__* @first_matching_driver(%struct.TYPE_24__* %45, %struct.TYPE_23__* %46)
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %8, align 8
  br label %48

48:                                               ; preds = %168, %44
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = icmp ne %struct.TYPE_22__* %49, null
  br i1 %50, label %51, label %173

51:                                               ; preds = %48
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @bus_current_pass, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %168

58:                                               ; preds = %51
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = call i32 @DRIVERNAME(%struct.TYPE_21__* %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @PDEBUG(i8* %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = call i32 @device_set_driver(%struct.TYPE_23__* %66, %struct.TYPE_21__* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %269

76:                                               ; preds = %58
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %168

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @device_set_devclass(%struct.TYPE_23__* %85, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = call i8* @device_get_name(%struct.TYPE_23__* %94)
  store i8* %95, i8** %12, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %99

99:                                               ; preds = %98, %93
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %104, i8* %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = call i32 @device_set_driver(%struct.TYPE_23__* %107, %struct.TYPE_21__* null)
  br label %168

109:                                              ; preds = %84
  br label %110

110:                                              ; preds = %109, %81
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = call i32 @resource_int_value(i8* %115, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = call i32 @DEVICE_PROBE(%struct.TYPE_23__* %122)
  store i32 %123, i32* %9, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %110
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = call i64 @device_set_devclass(%struct.TYPE_23__* %129, i8* null)
  br label %131

131:                                              ; preds = %128, %110
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %10, align 4
  br label %173

136:                                              ; preds = %131
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = call i32 @device_verbose(%struct.TYPE_23__* %137)
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @BUS_PROBE_NOWILDCARD, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DF_FIXEDCLASS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %149, %142, %136
  %152 = load i32, i32* %9, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %156 = call i32 @device_set_driver(%struct.TYPE_23__* %155, %struct.TYPE_21__* null)
  br label %168

157:                                              ; preds = %151
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %159 = icmp eq %struct.TYPE_22__* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160, %157
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %165, %struct.TYPE_22__** %7, align 8
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %10, align 4
  br label %168

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %164, %154, %99, %79, %57
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %172 = call %struct.TYPE_22__* @next_matching_driver(%struct.TYPE_24__* %169, %struct.TYPE_23__* %170, %struct.TYPE_22__* %171)
  store %struct.TYPE_22__* %172, %struct.TYPE_22__** %8, align 8
  br label %48

173:                                              ; preds = %134, %48
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %175 = icmp ne %struct.TYPE_22__* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %185

180:                                              ; preds = %176, %173
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %183, align 8
  store %struct.TYPE_24__* %184, %struct.TYPE_24__** %6, align 8
  br label %41

185:                                              ; preds = %179, %41
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %187 = icmp ne %struct.TYPE_22__* %186, null
  br i1 %187, label %188, label %267

188:                                              ; preds = %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @DS_ALIVE, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %209

194:                                              ; preds = %188
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = icmp ne %struct.TYPE_21__* %197, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %194
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %204 = call i32 @device_detach(%struct.TYPE_23__* %203)
  store i32 %204, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %269

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208, %194, %188
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %211, align 8
  %213 = icmp ne %struct.TYPE_24__* %212, null
  br i1 %213, label %228, label %214

214:                                              ; preds = %209
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @device_set_devclass(%struct.TYPE_23__* %215, i8* %220)
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %214
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %3, align 4
  br label %269

227:                                              ; preds = %214
  br label %228

228:                                              ; preds = %227, %209
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = call i32 @device_set_driver(%struct.TYPE_23__* %229, %struct.TYPE_21__* %232)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %3, align 4
  br label %269

238:                                              ; preds = %228
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 2
  %249 = call i32 @resource_int_value(i8* %243, i32 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %248)
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %238
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %254 = call i32 @DEVICE_PROBE(%struct.TYPE_23__* %253)
  br label %262

255:                                              ; preds = %238
  %256 = load i32, i32* @DF_REBID, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %255, %252
  %263 = load i64, i64* @DS_ALIVE, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = call i32 (...) @bus_data_generation_update()
  store i32 0, i32* %3, align 4
  br label %269

267:                                              ; preds = %185
  %268 = load i32, i32* @ENXIO, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %267, %262, %236, %225, %206, %74, %39
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_22__* @first_matching_driver(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DRIVERNAME(%struct.TYPE_21__*) #1

declare dso_local i32 @device_set_driver(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i64 @device_set_devclass(%struct.TYPE_23__*, i8*) #1

declare dso_local i8* @device_get_name(%struct.TYPE_23__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @resource_int_value(i8*, i32, i8*, i64*) #1

declare dso_local i32 @DEVICE_PROBE(%struct.TYPE_23__*) #1

declare dso_local i32 @device_verbose(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @next_matching_driver(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @device_detach(%struct.TYPE_23__*) #1

declare dso_local i32 @bus_data_generation_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
