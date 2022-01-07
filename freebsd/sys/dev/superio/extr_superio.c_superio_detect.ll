; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 (%struct.resource*, i64)*, i32 (%struct.resource*, i64)* }
%struct.resource = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32*, i32 }
%struct.siosc = type { i64, i32, i32, i32, i32, i32, i32, i64, %struct.resource*, i32, %struct.TYPE_4__* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8
@NUMPORTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unexpected I/O range size\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate I/O resource\0A\00", align 1
@methods_table = common dso_local global %struct.TYPE_4__** null, align 8
@SUPERIO_VENDOR_ITE = common dso_local global i64 0, align 8
@SUPERIO_VENDOR_NUVOTON = common dso_local global i64 0, align 8
@superio_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Only ITE and Nuvoton SuperIO-s are supported\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ITE IT%4x SuperIO (revision 0x%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.siosc*)* @superio_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_detect(i32 %0, i32 %1, %struct.siosc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.siosc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.siosc* %2, %struct.siosc** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SYS_RES_IOPORT, align 4
  %21 = call i32 @bus_get_resource(i32 %19, i32 %20, i32 0, i64* %9, i64* %10)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %299

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @UINT16_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @NUMPORTS, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %4, align 4
  br label %299

38:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SYS_RES_IOPORT, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call %struct.resource* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %14, i32 %41)
  store %struct.resource* %42, %struct.resource** %8, align 8
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = icmp eq %struct.resource* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %4, align 4
  br label %299

53:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %178, %53
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %181

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32 (%struct.resource*, i64)*, i32 (%struct.resource*, i64)** %67, align 8
  %69 = load %struct.resource*, %struct.resource** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 %68(%struct.resource* %69, i64 %70)
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SUPERIO_VENDOR_ITE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %61
  %82 = load %struct.resource*, %struct.resource** %8, align 8
  %83 = call i32 @sio_readw(%struct.resource* %82, i32 32)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.resource*, %struct.resource** %8, align 8
  %85 = call i32 @sio_read(%struct.resource* %84, i32 34)
  store i32 %85, i32* %12, align 4
  br label %107

86:                                               ; preds = %61
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SUPERIO_VENDOR_NUVOTON, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %86
  %97 = load %struct.resource*, %struct.resource** %8, align 8
  %98 = call i32 @sio_read(%struct.resource* %97, i32 32)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.resource*, %struct.resource** %8, align 8
  %100 = call i32 @sio_read(%struct.resource* %99, i32 33)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %11, align 4
  br label %106

105:                                              ; preds = %86
  br label %178

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %81
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32 (%struct.resource*, i64)*, i32 (%struct.resource*, i64)** %113, align 8
  %115 = load %struct.resource*, %struct.resource** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 %114(%struct.resource* %115, i64 %116)
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %165, %107
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %168

126:                                              ; preds = %118
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %17, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 %141
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %138, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %126
  br label %165

148:                                              ; preds = %126
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %17, align 4
  %156 = xor i32 %155, -1
  %157 = and i32 %154, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %17, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %157, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  br label %165

164:                                              ; preds = %148
  br label %168

165:                                              ; preds = %163, %147
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %118

168:                                              ; preds = %164, %118
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %181

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %105
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %54

181:                                              ; preds = %176, %54
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %182, i64 %184
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = icmp eq %struct.TYPE_4__* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @ENXIO, align 4
  store i32 %189, i32* %13, align 4
  br label %191

190:                                              ; preds = %181
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %190, %188
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194, %191
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @SYS_RES_IOPORT, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.resource*, %struct.resource** %8, align 8
  %202 = call i32 @bus_release_resource(i32 %198, i32 %199, i32 %200, %struct.resource* %201)
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %4, align 4
  br label %299

204:                                              ; preds = %194
  %205 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods_table, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %205, i64 %207
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load %struct.siosc*, %struct.siosc** %7, align 8
  %211 = getelementptr inbounds %struct.siosc, %struct.siosc* %210, i32 0, i32 10
  store %struct.TYPE_4__* %209, %struct.TYPE_4__** %211, align 8
  %212 = load %struct.siosc*, %struct.siosc** %7, align 8
  %213 = getelementptr inbounds %struct.siosc, %struct.siosc* %212, i32 0, i32 10
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.siosc*, %struct.siosc** %7, align 8
  %218 = getelementptr inbounds %struct.siosc, %struct.siosc* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.siosc*, %struct.siosc** %7, align 8
  %226 = getelementptr inbounds %struct.siosc, %struct.siosc* %225, i32 0, i32 9
  store i32 %224, i32* %226, align 8
  %227 = load %struct.resource*, %struct.resource** %8, align 8
  %228 = load %struct.siosc*, %struct.siosc** %7, align 8
  %229 = getelementptr inbounds %struct.siosc, %struct.siosc* %228, i32 0, i32 8
  store %struct.resource* %227, %struct.resource** %229, align 8
  %230 = load i32, i32* %14, align 4
  %231 = load %struct.siosc*, %struct.siosc** %7, align 8
  %232 = getelementptr inbounds %struct.siosc, %struct.siosc* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load i64, i64* %9, align 8
  %234 = load %struct.siosc*, %struct.siosc** %7, align 8
  %235 = getelementptr inbounds %struct.siosc, %struct.siosc* %234, i32 0, i32 7
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.siosc*, %struct.siosc** %7, align 8
  %238 = getelementptr inbounds %struct.siosc, %struct.siosc* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.siosc*, %struct.siosc** %7, align 8
  %241 = getelementptr inbounds %struct.siosc, %struct.siosc* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 8
  %242 = load %struct.siosc*, %struct.siosc** %7, align 8
  %243 = getelementptr inbounds %struct.siosc, %struct.siosc* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SUPERIO_VENDOR_ITE, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %204
  %248 = load %struct.siosc*, %struct.siosc** %7, align 8
  %249 = getelementptr inbounds %struct.siosc, %struct.siosc* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @SUPERIO_VENDOR_NUVOTON, align 8
  %252 = icmp eq i64 %250, %251
  br label %253

253:                                              ; preds = %247, %204
  %254 = phi i1 [ true, %204 ], [ %252, %247 ]
  %255 = zext i1 %254 to i32
  %256 = call i32 @KASSERT(i32 %255, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %257 = load %struct.siosc*, %struct.siosc** %7, align 8
  %258 = getelementptr inbounds %struct.siosc, %struct.siosc* %257, i32 0, i32 4
  store i32 7, i32* %258, align 4
  %259 = load %struct.siosc*, %struct.siosc** %7, align 8
  %260 = getelementptr inbounds %struct.siosc, %struct.siosc* %259, i32 0, i32 5
  store i32 48, i32* %260, align 8
  %261 = load %struct.siosc*, %struct.siosc** %7, align 8
  %262 = getelementptr inbounds %struct.siosc, %struct.siosc* %261, i32 0, i32 6
  store i32 255, i32* %262, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %279

270:                                              ; preds = %253
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** @superio_table, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @device_set_desc(i32 %271, i32* %277)
  br label %298

279:                                              ; preds = %253
  %280 = load %struct.siosc*, %struct.siosc** %7, align 8
  %281 = getelementptr inbounds %struct.siosc, %struct.siosc* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @SUPERIO_VENDOR_ITE, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %297

285:                                              ; preds = %279
  %286 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %287 = load %struct.siosc*, %struct.siosc** %7, align 8
  %288 = getelementptr inbounds %struct.siosc, %struct.siosc* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.siosc*, %struct.siosc** %7, align 8
  %291 = getelementptr inbounds %struct.siosc, %struct.siosc* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @snprintf(i8* %286, i32 64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %289, i32 %292)
  %294 = load i32, i32* %5, align 4
  %295 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %296 = call i32 @device_set_desc_copy(i32 %294, i8* %295)
  br label %297

297:                                              ; preds = %285, %279
  br label %298

298:                                              ; preds = %297, %270
  store i32 0, i32* %4, align 4
  br label %299

299:                                              ; preds = %298, %197, %51, %34, %24
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local i32 @bus_get_resource(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @sio_readw(%struct.resource*, i32) #1

declare dso_local i32 @sio_read(%struct.resource*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
