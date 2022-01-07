; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_ebus.c_atkbdc_ebus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_ebus.c_atkbdc_ebus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot determine command/data port resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot allocate command/data port resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot determine status port resource\0A\00", align 1
@KBD_STATUS_PORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot allocate status port resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"atkbdc_attach_unit failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"<%s>: only two children per 8042 supported\0A\00", align 1
@M_ATKBDDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"<%s>: malloc failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"kb_ps2\00", align 1
@KBDC_RID_KBD = common dso_local global i32 0, align 4
@ATKBD_DRIVER_NAME = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"kdmouse\00", align 1
@KBDC_RID_AUX = common dso_local global i32 0, align 4
@PSM_DRIVER_NAME = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"<%s>: unknown device\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"<%s>: cannot determine interrupt resource\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"bus_generic_attach failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @atkbdc_ebus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_ebus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @device_get_unit(i32* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @device_get_softc(i32* %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_9__**
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.TYPE_9__* @atkbdc_get_softc(i32 %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %255

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = call i32 @device_set_softc(i32* %33, %struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %32, %1
  store i32 0, i32* %13, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @bus_get_resource(i32* %37, i32 %38, i32 %39, i64* %10, i64* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @device_printf(i32* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %255

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 5000, i32* %48, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i8* @bus_alloc_resource(i32* %49, i32 %50, i32* %13, i64 %51, i64 %52, i32 1, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 (i32*, i8*, ...) @device_printf(i32* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %255

66:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @bus_get_resource(i32* %67, i32 %68, i32 %69, i64* %10, i64* %8)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 (i32*, i8*, ...) @device_printf(i32* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %12, align 4
  br label %247

76:                                               ; preds = %66
  %77 = load i64, i64* @KBD_STATUS_PORT, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @SYS_RES_MEMORY, align 4
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* @RF_ACTIVE, align 4
  %85 = call i8* @bus_alloc_resource(i32* %80, i32 %81, i32* %13, i64 %82, i64 %83, i32 1, i32 %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %76
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 (i32*, i8*, ...) @device_printf(i32* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %12, align 4
  br label %247

97:                                               ; preds = %76
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @atkbdc_attach_unit(i32 %98, %struct.TYPE_9__* %99, i32* %102, i32* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 (i32*, i8*, ...) @device_printf(i32* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %240

112:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @ofw_bus_get_node(i32* %113)
  %115 = call i64 @OF_child(i32 %114)
  store i64 %115, i64* %7, align 8
  br label %116

116:                                              ; preds = %228, %112
  %117 = load i64, i64* %7, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %231

119:                                              ; preds = %116
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @OF_getprop_alloc(i64 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %15)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %228

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = icmp sge i32 %125, 2
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32*, i32** %3, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 (i32*, i8*, ...) @device_printf(i32* %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @OF_prop_free(i8* %131)
  br label %228

133:                                              ; preds = %124
  %134 = load i32, i32* @M_ATKBDDEV, align 4
  %135 = load i32, i32* @M_NOWAIT, align 4
  %136 = load i32, i32* @M_ZERO, align 4
  %137 = or i32 %135, %136
  %138 = call %struct.TYPE_10__* @malloc(i32 4, i32 %134, i32 %137)
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %5, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = icmp eq %struct.TYPE_10__* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load i32*, i32** %3, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 (i32*, i8*, ...) @device_printf(i32* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @OF_prop_free(i8* %145)
  br label %228

147:                                              ; preds = %133
  %148 = load i8*, i8** %15, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* @KBDC_RID_KBD, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i8*, i8** @ATKBD_DRIVER_NAME, align 8
  store i8* %155, i8** %16, align 8
  br label %175

156:                                              ; preds = %147
  %157 = load i8*, i8** %15, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @KBDC_RID_AUX, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i8*, i8** @PSM_DRIVER_NAME, align 8
  store i8* %164, i8** %16, align 8
  br label %174

165:                                              ; preds = %156
  %166 = load i32*, i32** %3, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 (i32*, i8*, ...) @device_printf(i32* %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = load i32, i32* @M_ATKBDDEV, align 4
  %171 = call i32 @free(%struct.TYPE_10__* %169, i32 %170)
  %172 = load i8*, i8** %15, align 8
  %173 = call i32 @OF_prop_free(i8* %172)
  br label %228

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %151
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* @SYS_RES_IRQ, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @bus_get_resource_start(i32* %176, i32 %177, i32 %180)
  store i64 %181, i64* %9, align 8
  %182 = load i64, i64* %9, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %175
  %185 = load i32*, i32** %3, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 (i32*, i8*, ...) @device_printf(i32* %185, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %189 = load i32, i32* @M_ATKBDDEV, align 4
  %190 = call i32 @free(%struct.TYPE_10__* %188, i32 %189)
  %191 = load i8*, i8** %15, align 8
  %192 = call i32 @OF_prop_free(i8* %191)
  br label %228

193:                                              ; preds = %175
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = call i32 @resource_list_init(i32* %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* @SYS_RES_IRQ, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* %9, align 8
  %205 = call i32 @resource_list_add(i32* %198, i32 %199, i32 %202, i64 %203, i64 %204, i32 1)
  %206 = load i32*, i32** %3, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = call i32* @device_add_child(i32* %206, i8* %207, i32 -1)
  store i32* %208, i32** %6, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %222

210:                                              ; preds = %193
  %211 = load i32*, i32** %3, align 8
  %212 = load i8*, i8** %15, align 8
  %213 = call i32 (i32*, i8*, ...) @device_printf(i32* %211, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = call i32 @resource_list_free(i32* %215)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = load i32, i32* @M_ATKBDDEV, align 4
  %219 = call i32 @free(%struct.TYPE_10__* %217, i32 %218)
  %220 = load i8*, i8** %15, align 8
  %221 = call i32 @OF_prop_free(i8* %220)
  br label %228

222:                                              ; preds = %193
  %223 = load i32*, i32** %6, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = call i32 @device_set_ivars(i32* %223, %struct.TYPE_10__* %224)
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %228

228:                                              ; preds = %222, %210, %184, %165, %141, %127, %123
  %229 = load i64, i64* %7, align 8
  %230 = call i64 @OF_peer(i64 %229)
  store i64 %230, i64* %7, align 8
  br label %116

231:                                              ; preds = %116
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @bus_generic_attach(i32* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 (i32*, i8*, ...) @device_printf(i32* %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %240

239:                                              ; preds = %231
  store i32 0, i32* %2, align 4
  br label %255

240:                                              ; preds = %236, %109
  %241 = load i32*, i32** %3, align 8
  %242 = load i32, i32* @SYS_RES_MEMORY, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @bus_release_resource(i32* %241, i32 %242, i32 1, i32* %245)
  br label %247

247:                                              ; preds = %240, %93, %72
  %248 = load i32*, i32** %3, align 8
  %249 = load i32, i32* @SYS_RES_MEMORY, align 4
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @bus_release_resource(i32* %248, i32 %249, i32 0, i32* %252)
  %254 = load i32, i32* %12, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %247, %239, %62, %42, %30
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i64 @device_get_softc(i32*) #1

declare dso_local %struct.TYPE_9__* @atkbdc_get_softc(i32) #1

declare dso_local i32 @device_set_softc(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @bus_get_resource(i32*, i32, i32, i64*, i64*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource(i32*, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @atkbdc_attach_unit(i32, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i64 @OF_child(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @bus_get_resource_start(i32*, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
