; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bfe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bfe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list_entry = type { i32* }
%struct.scc_chan = type { i32, i32, i32, i32, i32*, %struct.scc_mode*, i32, i32, i32 }
%struct.scc_mode = type { i32, i32, i32, i32, i32, %struct.scc_chan* }
%struct.scc_class = type { i32, i64, i32, i32 }
%struct.scc_softc = type { i32, i32, i32, i32*, i32, %struct.scc_chan*, %struct.TYPE_2__, i32, %struct.scc_class* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@M_SCC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"scc_hwmtx\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SCC_NMODES = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%sresetting hardware\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@scc_bfe_intr = common dso_local global i32* null, align 8
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"could not activate interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%sfast interrupt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%spolled mode\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bfe_attach(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource_list_entry*, align 8
  %7 = alloca %struct.scc_chan*, align 8
  %8 = alloca %struct.scc_class*, align 8
  %9 = alloca %struct.scc_mode*, align 8
  %10 = alloca %struct.scc_softc*, align 8
  %11 = alloca %struct.scc_softc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.scc_softc* @device_get_softc(i32 %22)
  store %struct.scc_softc* %23, %struct.scc_softc** %11, align 8
  %24 = load %struct.scc_softc*, %struct.scc_softc** %11, align 8
  %25 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %24, i32 0, i32 8
  %26 = load %struct.scc_class*, %struct.scc_class** %25, align 8
  store %struct.scc_class* %26, %struct.scc_class** %8, align 8
  %27 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %28 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 64
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %34 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @M_SCC, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @malloc(i32 %35, i32 %36, i32 %39)
  %41 = bitcast i8* %40 to %struct.scc_softc*
  store %struct.scc_softc* %41, %struct.scc_softc** %10, align 8
  %42 = load %struct.scc_softc*, %struct.scc_softc** %11, align 8
  %43 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %44 = call i32 @bcopy(%struct.scc_softc* %42, %struct.scc_softc* %43, i32 64)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %47 = call i32 @device_set_softc(i32 %45, %struct.scc_softc* %46)
  br label %50

48:                                               ; preds = %2
  %49 = load %struct.scc_softc*, %struct.scc_softc** %11, align 8
  store %struct.scc_softc* %49, %struct.scc_softc** %10, align 8
  br label %50

50:                                               ; preds = %48, %32
  %51 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %52 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @abs(i64 %53)
  %55 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %56 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %54, %58
  store i32 %59, i32* %15, align 4
  %60 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %61 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %60, i32 0, i32 7
  %62 = load i32, i32* @MTX_SPIN, align 4
  %63 = call i32 @mtx_init(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %66 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %69 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %68, i32 0, i32 0
  %70 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %71 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* @RF_ACTIVE, align 4
  %76 = call i32* @bus_alloc_resource_anywhere(i32 %64, i32 %67, i32* %69, i32 %74, i32 %75)
  %77 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %78 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  %79 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %80 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %50
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %3, align 4
  br label %622

85:                                               ; preds = %50
  %86 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %87 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @rman_get_bushandle(i32* %88)
  %90 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %91 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %94 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @rman_get_bustag(i32* %95)
  %97 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %98 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %101 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul i64 48, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @M_SCC, align 4
  %107 = load i32, i32* @M_WAITOK, align 4
  %108 = load i32, i32* @M_ZERO, align 4
  %109 = or i32 %107, %108
  %110 = call i8* @malloc(i32 %105, i32 %106, i32 %109)
  %111 = bitcast i8* %110 to %struct.scc_chan*
  %112 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %113 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %112, i32 0, i32 5
  store %struct.scc_chan* %111, %struct.scc_chan** %113, align 8
  store i32 0, i32* %18, align 4
  br label %114

114:                                              ; preds = %146, %85
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %117 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %114
  %121 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %122 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %121, i32 0, i32 5
  %123 = load %struct.scc_chan*, %struct.scc_chan** %122, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %123, i64 %125
  store %struct.scc_chan* %126, %struct.scc_chan** %7, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %131 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @SYS_RES_IRQ, align 4
  %134 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %135 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %134, i32 0, i32 0
  %136 = load i32, i32* @RF_ACTIVE, align 4
  %137 = load i32, i32* @RF_SHAREABLE, align 4
  %138 = or i32 %136, %137
  %139 = call i32* @bus_alloc_resource_any(i32 %132, i32 %133, i32* %135, i32 %138)
  %140 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %141 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %120
  br label %149

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %18, align 4
  br label %114

149:                                              ; preds = %144, %114
  store i32 0, i32* %21, align 4
  %150 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %151 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @rman_get_start(i32* %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %15, align 4
  br label %163

158:                                              ; preds = %149
  %159 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %160 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @rman_get_size(i32* %161)
  br label %163

163:                                              ; preds = %158, %156
  %164 = phi i32 [ %157, %156 ], [ %162, %158 ]
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %167 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %173 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 1
  %176 = mul nsw i32 %171, %175
  br label %178

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %170
  %179 = phi i32 [ %176, %170 ], [ 0, %177 ]
  %180 = add nsw i32 %165, %179
  store i32 %180, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %379, %178
  %182 = load i32, i32* %18, align 4
  %183 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %184 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %382

187:                                              ; preds = %181
  %188 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %189 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %188, i32 0, i32 5
  %190 = load %struct.scc_chan*, %struct.scc_chan** %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %190, i64 %192
  store %struct.scc_chan* %193, %struct.scc_chan** %7, align 8
  %194 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %195 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %194, i32 0, i32 7
  %196 = call i32 @resource_list_init(i32* %195)
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  %199 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %200 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %202 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %203 = call i32 @SCC_ENABLED(%struct.scc_softc* %201, %struct.scc_chan* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %187
  br label %360

206:                                              ; preds = %187
  %207 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %208 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %207, i32 0, i32 2
  store i32 1, i32* %208, align 8
  %209 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %210 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %209, i32 0, i32 7
  %211 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %212 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %215, %216
  %218 = sub nsw i32 %217, 1
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @resource_list_add(i32* %210, i32 %213, i32 0, i32 %214, i32 %218, i32 %219)
  %221 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %222 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %221, i32 0, i32 7
  %223 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %224 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = call %struct.resource_list_entry* @resource_list_find(i32* %222, i32 %225, i32 0)
  store %struct.resource_list_entry* %226, %struct.resource_list_entry** %6, align 8
  %227 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %228 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %227, i32 0, i32 8
  %229 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %230 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %229, i32 0, i32 0
  store i32* %228, i32** %230, align 8
  %231 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %232 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @rman_get_bustag(i32* %233)
  %235 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %236 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @rman_get_bushandle(i32* %237)
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %14, align 4
  %241 = sub nsw i32 %239, %240
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @bus_space_subregion(i32 %234, i32 %238, i32 %241, i32 %242, i32* %13)
  %244 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %245 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @rman_set_bushandle(i32* %246, i32 %247)
  %249 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %250 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %253 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @rman_get_bustag(i32* %254)
  %256 = call i32 @rman_set_bustag(i32* %251, i32 %255)
  %257 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %258 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %257, i32 0, i32 7
  %259 = load i32, i32* @SYS_RES_IRQ, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %18, align 4
  %262 = call i32 @resource_list_add(i32* %258, i32 %259, i32 0, i32 %260, i32 %261, i32 1)
  %263 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %264 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %263, i32 0, i32 7
  %265 = load i32, i32* @SYS_RES_IRQ, align 4
  %266 = call %struct.resource_list_entry* @resource_list_find(i32* %264, i32 %265, i32 0)
  store %struct.resource_list_entry* %266, %struct.resource_list_entry** %6, align 8
  %267 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %268 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %206
  %272 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %273 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %272, i32 0, i32 4
  %274 = load i32*, i32** %273, align 8
  br label %282

275:                                              ; preds = %206
  %276 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %277 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %276, i32 0, i32 5
  %278 = load %struct.scc_chan*, %struct.scc_chan** %277, align 8
  %279 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %278, i64 0
  %280 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  br label %282

282:                                              ; preds = %275, %271
  %283 = phi i32* [ %274, %271 ], [ %281, %275 ]
  %284 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %285 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %284, i32 0, i32 0
  store i32* %283, i32** %285, align 8
  store i32 0, i32* %20, align 4
  br label %286

286:                                              ; preds = %356, %282
  %287 = load i32, i32* %20, align 4
  %288 = load i32, i32* @SCC_NMODES, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %359

290:                                              ; preds = %286
  %291 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %292 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %291, i32 0, i32 5
  %293 = load %struct.scc_mode*, %struct.scc_mode** %292, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %293, i64 %295
  store %struct.scc_mode* %296, %struct.scc_mode** %9, align 8
  %297 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %298 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %299 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %298, i32 0, i32 5
  store %struct.scc_chan* %297, %struct.scc_chan** %299, align 8
  %300 = load i32, i32* %20, align 4
  %301 = shl i32 1, %300
  %302 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %303 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  %304 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %305 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %308 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = and i32 %306, %309
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %290
  %313 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %314 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312, %290
  br label %356

318:                                              ; preds = %312
  %319 = load i32, i32* %4, align 4
  %320 = call i32 @device_add_child(i32 %319, i32* null, i32 -1)
  %321 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %322 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 8
  %323 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %324 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %327 = bitcast %struct.scc_mode* %326 to i8*
  %328 = call i32 @device_set_ivars(i32 %325, i8* %327)
  %329 = load i32, i32* %4, align 4
  %330 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %331 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @device_probe_child(i32 %329, i32 %332)
  store i32 %333, i32* %19, align 4
  %334 = load i32, i32* %19, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %355, label %336

336:                                              ; preds = %318
  %337 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %338 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %337, i32 0, i32 1
  store i32 1, i32* %338, align 4
  %339 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %340 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = call i64 @SERDEV_SYSDEV(i32 %341)
  %343 = icmp ne i64 %342, 0
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i32 1, i32 0
  %346 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %347 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %346, i32 0, i32 2
  store i32 %345, i32* %347, align 8
  %348 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %349 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %352 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 4
  br label %355

355:                                              ; preds = %336, %318
  br label %356

356:                                              ; preds = %355, %317
  %357 = load i32, i32* %20, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %20, align 4
  br label %286

359:                                              ; preds = %286
  br label %360

360:                                              ; preds = %359, %205
  %361 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %362 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp slt i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i32, i32* %15, align 4
  %367 = sub nsw i32 0, %366
  br label %370

368:                                              ; preds = %360
  %369 = load i32, i32* %15, align 4
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi i32 [ %367, %365 ], [ %369, %368 ]
  %372 = load i32, i32* %16, align 4
  %373 = add nsw i32 %372, %371
  store i32 %373, i32* %16, align 4
  %374 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %375 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %21, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %21, align 4
  br label %379

379:                                              ; preds = %370
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %18, align 4
  br label %181

382:                                              ; preds = %181
  %383 = load i64, i64* @bootverbose, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load i32, i32* %4, align 4
  %387 = load i32, i32* %21, align 4
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %391 = call i32 (i32, i8*, ...) @device_printf(i32 %386, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %390)
  br label %392

392:                                              ; preds = %385, %382
  %393 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %394 = load i32, i32* %21, align 4
  %395 = icmp ne i32 %394, 0
  %396 = xor i1 %395, true
  %397 = zext i1 %396 to i32
  %398 = call i32 @SCC_ATTACH(%struct.scc_softc* %393, i32 %397)
  store i32 %398, i32* %19, align 4
  %399 = load i32, i32* %19, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %392
  br label %577

402:                                              ; preds = %392
  store i32 0, i32* %18, align 4
  br label %403

403:                                              ; preds = %468, %402
  %404 = load i32, i32* %18, align 4
  %405 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %406 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = icmp slt i32 %404, %407
  br i1 %408, label %409, label %471

409:                                              ; preds = %403
  %410 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %411 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %410, i32 0, i32 5
  %412 = load %struct.scc_chan*, %struct.scc_chan** %411, align 8
  %413 = load i32, i32* %18, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %412, i64 %414
  store %struct.scc_chan* %415, %struct.scc_chan** %7, align 8
  %416 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %417 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %416, i32 0, i32 4
  %418 = load i32*, i32** %417, align 8
  %419 = icmp eq i32* %418, null
  br i1 %419, label %420, label %421

420:                                              ; preds = %409
  br label %468

421:                                              ; preds = %409
  %422 = load i32, i32* %4, align 4
  %423 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %424 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %423, i32 0, i32 4
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* @INTR_TYPE_TTY, align 4
  %427 = load i32*, i32** @scc_bfe_intr, align 8
  %428 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %429 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %430 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %429, i32 0, i32 6
  %431 = call i32 @bus_setup_intr(i32 %422, i32* %425, i32 %426, i32* %427, i32* null, %struct.scc_softc* %428, i32* %430)
  store i32 %431, i32* %19, align 4
  %432 = load i32, i32* %19, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %421
  %435 = load i32, i32* %4, align 4
  %436 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %437 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %436, i32 0, i32 4
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* @INTR_TYPE_TTY, align 4
  %440 = load i32, i32* @INTR_MPSAFE, align 4
  %441 = or i32 %439, %440
  %442 = load i32*, i32** @scc_bfe_intr, align 8
  %443 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %444 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %445 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %444, i32 0, i32 6
  %446 = call i32 @bus_setup_intr(i32 %435, i32* %438, i32 %441, i32* null, i32* %442, %struct.scc_softc* %443, i32* %445)
  store i32 %446, i32* %19, align 4
  br label %450

447:                                              ; preds = %421
  %448 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %449 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %448, i32 0, i32 1
  store i32 1, i32* %449, align 4
  br label %450

450:                                              ; preds = %447, %434
  %451 = load i32, i32* %19, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %467

453:                                              ; preds = %450
  %454 = load i32, i32* %4, align 4
  %455 = call i32 (i32, i8*, ...) @device_printf(i32 %454, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %456 = load i32, i32* %4, align 4
  %457 = load i32, i32* @SYS_RES_IRQ, align 4
  %458 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %459 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %462 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %461, i32 0, i32 4
  %463 = load i32*, i32** %462, align 8
  %464 = call i32 @bus_release_resource(i32 %456, i32 %457, i32 %460, i32* %463)
  %465 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %466 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %465, i32 0, i32 4
  store i32* null, i32** %466, align 8
  br label %467

467:                                              ; preds = %453, %450
  br label %468

468:                                              ; preds = %467, %420
  %469 = load i32, i32* %18, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %18, align 4
  br label %403

471:                                              ; preds = %403
  %472 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %473 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %472, i32 0, i32 2
  store i32 1, i32* %473, align 8
  store i32 0, i32* %18, align 4
  br label %474

474:                                              ; preds = %492, %471
  %475 = load i32, i32* %18, align 4
  %476 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %477 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = icmp slt i32 %475, %478
  br i1 %479, label %480, label %495

480:                                              ; preds = %474
  %481 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %482 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %481, i32 0, i32 5
  %483 = load %struct.scc_chan*, %struct.scc_chan** %482, align 8
  %484 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %483, i64 0
  %485 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %484, i32 0, i32 4
  %486 = load i32*, i32** %485, align 8
  %487 = icmp ne i32* %486, null
  br i1 %487, label %488, label %491

488:                                              ; preds = %480
  %489 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %490 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %489, i32 0, i32 2
  store i32 0, i32* %490, align 8
  br label %491

491:                                              ; preds = %488, %480
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %18, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %18, align 4
  br label %474

495:                                              ; preds = %474
  store i32 0, i32* %18, align 4
  br label %496

496:                                              ; preds = %540, %495
  %497 = load i32, i32* %18, align 4
  %498 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %499 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 8
  %501 = icmp slt i32 %497, %500
  br i1 %501, label %502, label %543

502:                                              ; preds = %496
  %503 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %504 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %503, i32 0, i32 5
  %505 = load %struct.scc_chan*, %struct.scc_chan** %504, align 8
  %506 = load i32, i32* %18, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %505, i64 %507
  store %struct.scc_chan* %508, %struct.scc_chan** %7, align 8
  store i32 0, i32* %20, align 4
  br label %509

509:                                              ; preds = %536, %502
  %510 = load i32, i32* %20, align 4
  %511 = load i32, i32* @SCC_NMODES, align 4
  %512 = icmp slt i32 %510, %511
  br i1 %512, label %513, label %539

513:                                              ; preds = %509
  %514 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %515 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %514, i32 0, i32 5
  %516 = load %struct.scc_mode*, %struct.scc_mode** %515, align 8
  %517 = load i32, i32* %20, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %516, i64 %518
  store %struct.scc_mode* %519, %struct.scc_mode** %9, align 8
  %520 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %521 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %513
  br label %536

525:                                              ; preds = %513
  %526 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %527 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %526, i32 0, i32 4
  %528 = load i32, i32* %527, align 8
  %529 = call i32 @device_attach(i32 %528)
  store i32 %529, i32* %19, align 4
  %530 = load i32, i32* %19, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %525
  br label %536

533:                                              ; preds = %525
  %534 = load %struct.scc_mode*, %struct.scc_mode** %9, align 8
  %535 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %534, i32 0, i32 3
  store i32 1, i32* %535, align 4
  br label %536

536:                                              ; preds = %533, %532, %524
  %537 = load i32, i32* %20, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %20, align 4
  br label %509

539:                                              ; preds = %509
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %18, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %18, align 4
  br label %496

543:                                              ; preds = %496
  %544 = load i64, i64* @bootverbose, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %576

546:                                              ; preds = %543
  %547 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %548 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %546
  %552 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %553 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %576

556:                                              ; preds = %551, %546
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %557 = load i32, i32* %4, align 4
  %558 = call i32 @device_print_prettyname(i32 %557)
  %559 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %560 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %556
  %564 = load i8*, i8** %12, align 8
  %565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %564)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %566

566:                                              ; preds = %563, %556
  %567 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %568 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 8
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %566
  %572 = load i8*, i8** %12, align 8
  %573 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %572)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %574

574:                                              ; preds = %571, %566
  %575 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %576

576:                                              ; preds = %574, %551, %543
  store i32 0, i32* %3, align 4
  br label %622

577:                                              ; preds = %401
  store i32 0, i32* %18, align 4
  br label %578

578:                                              ; preds = %606, %577
  %579 = load i32, i32* %18, align 4
  %580 = load %struct.scc_class*, %struct.scc_class** %8, align 8
  %581 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = icmp slt i32 %579, %582
  br i1 %583, label %584, label %609

584:                                              ; preds = %578
  %585 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %586 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %585, i32 0, i32 5
  %587 = load %struct.scc_chan*, %struct.scc_chan** %586, align 8
  %588 = load i32, i32* %18, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %587, i64 %589
  store %struct.scc_chan* %590, %struct.scc_chan** %7, align 8
  %591 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %592 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %591, i32 0, i32 4
  %593 = load i32*, i32** %592, align 8
  %594 = icmp eq i32* %593, null
  br i1 %594, label %595, label %596

595:                                              ; preds = %584
  br label %606

596:                                              ; preds = %584
  %597 = load i32, i32* %4, align 4
  %598 = load i32, i32* @SYS_RES_IRQ, align 4
  %599 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %600 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  %602 = load %struct.scc_chan*, %struct.scc_chan** %7, align 8
  %603 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %602, i32 0, i32 4
  %604 = load i32*, i32** %603, align 8
  %605 = call i32 @bus_release_resource(i32 %597, i32 %598, i32 %601, i32* %604)
  br label %606

606:                                              ; preds = %596, %595
  %607 = load i32, i32* %18, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %18, align 4
  br label %578

609:                                              ; preds = %578
  %610 = load i32, i32* %4, align 4
  %611 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %612 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %611, i32 0, i32 4
  %613 = load i32, i32* %612, align 8
  %614 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %615 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.scc_softc*, %struct.scc_softc** %10, align 8
  %618 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %617, i32 0, i32 3
  %619 = load i32*, i32** %618, align 8
  %620 = call i32 @bus_release_resource(i32 %610, i32 %613, i32 %616, i32* %619)
  %621 = load i32, i32* %19, align 4
  store i32 %621, i32* %3, align 4
  br label %622

622:                                              ; preds = %609, %576, %83
  %623 = load i32, i32* %3, align 4
  ret i32 %623
}

declare dso_local %struct.scc_softc* @device_get_softc(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.scc_softc*, %struct.scc_softc*, i32) #1

declare dso_local i32 @device_set_softc(i32, %struct.scc_softc*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @SCC_ENABLED(%struct.scc_softc*, %struct.scc_chan*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_set_bushandle(i32*, i32) #1

declare dso_local i32 @rman_set_bustag(i32*, i32) #1

declare dso_local i32 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32, i8*) #1

declare dso_local i32 @device_probe_child(i32, i32) #1

declare dso_local i64 @SERDEV_SYSDEV(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @SCC_ATTACH(%struct.scc_softc*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.scc_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @device_attach(i32) #1

declare dso_local i32 @device_print_prettyname(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
