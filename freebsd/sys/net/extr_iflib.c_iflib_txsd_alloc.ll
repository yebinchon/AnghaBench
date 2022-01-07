; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_txsd_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_txsd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_8__ = type { i32*, i32*, %struct.mbuf** }
%struct.mbuf = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32, i64, i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX DMA tag: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"maxsize: %ju nsegments: %d maxsegsize: %ju\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate TSO TX DMA tag: %d\0A\00", align 1
@M_IFLIB = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to allocate TX mbuf map memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to allocate TX buffer DMA map memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Unable to allocate TSO TX buffer map memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to create TX DMA map\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unable to create TSO TX DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @iflib_txsd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_txsd_alloc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %6, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @if_getcapabilities(i32 %36)
  %38 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %41, %1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @MPASS(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @MPASS(i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @if_getcapabilities(i32 %70)
  %72 = load i32, i32* @IFCAP_TSO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %44
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @MPASS(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp sge i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @MPASS(i32 %85)
  br label %87

87:                                               ; preds = %75, %44
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @bus_get_dma_tag(i32 %88)
  %90 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %91 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = call i32 @bus_dma_tag_create(i32 %89, i32 1, i32 0, i32 %90, i32 %91, i32* null, i32* null, i64 %94, i32 %95, i64 %98, i32 0, i32* null, i32* null, i32* %100)
  store i32 %101, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112, i32 %116)
  br label %283

118:                                              ; preds = %87
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @if_getcapabilities(i32 %121)
  %123 = load i32, i32* @IFCAP_TSO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %118
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @bus_get_dma_tag(i32 %130)
  %132 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %133 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %134 = load i64, i64* %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = call i32 @bus_dma_tag_create(i32 %131, i32 1, i32 0, i32 %132, i32 %133, i32* null, i32* null, i64 %134, i32 %135, i64 %138, i32 0, i32* null, i32* null, i32* %140)
  store i32 %141, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %129
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  br label %283

147:                                              ; preds = %129, %118
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 8, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* @M_IFLIB, align 4
  %160 = load i32, i32* @M_NOWAIT, align 4
  %161 = load i32, i32* @M_ZERO, align 4
  %162 = or i32 %160, %161
  %163 = call i64 @malloc(i32 %158, i32 %159, i32 %162)
  %164 = inttoptr i64 %163 to %struct.mbuf**
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  store %struct.mbuf** %164, %struct.mbuf*** %167, align 8
  %168 = icmp ne %struct.mbuf** %164, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %147
  %170 = load i32, i32* %7, align 4
  %171 = call i32 (i32, i8*, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32, i32* @ENOMEM, align 4
  store i32 %172, i32* %9, align 4
  br label %283

173:                                              ; preds = %147
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 4, %182
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* @M_IFLIB, align 4
  %186 = load i32, i32* @M_NOWAIT, align 4
  %187 = load i32, i32* @M_ZERO, align 4
  %188 = or i32 %186, %187
  %189 = call i64 @malloc(i32 %184, i32 %185, i32 %188)
  %190 = inttoptr i64 %189 to i32*
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  store i32* %190, i32** %193, align 8
  %194 = icmp eq i32* %190, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %173
  %196 = load i32, i32* %7, align 4
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %196, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %198 = load i32, i32* @ENOMEM, align 4
  store i32 %198, i32* %9, align 4
  br label %283

199:                                              ; preds = %173
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 4, %211
  %213 = trunc i64 %212 to i32
  %214 = load i32, i32* @M_IFLIB, align 4
  %215 = load i32, i32* @M_NOWAIT, align 4
  %216 = load i32, i32* @M_ZERO, align 4
  %217 = or i32 %215, %216
  %218 = call i64 @malloc(i32 %213, i32 %214, i32 %217)
  %219 = inttoptr i64 %218 to i32*
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32* %219, i32** %222, align 8
  %223 = icmp eq i32* %219, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %202
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (i32, i8*, ...) @device_printf(i32 %225, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %227 = load i32, i32* @ENOMEM, align 4
  store i32 %227, i32* %9, align 4
  br label %283

228:                                              ; preds = %202, %199
  store i32 0, i32* %13, align 4
  br label %229

229:                                              ; preds = %279, %228
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %230, %238
  br i1 %239, label %240, label %282

240:                                              ; preds = %229
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = call i32 @bus_dmamap_create(i32 %243, i32 0, i32* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %240
  %255 = load i32, i32* %7, align 4
  %256 = call i32 (i32, i8*, ...) @device_printf(i32 %255, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %283

257:                                              ; preds = %240
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  br label %279

261:                                              ; preds = %257
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = call i32 @bus_dmamap_create(i32 %264, i32 0, i32* %271)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %261
  %276 = load i32, i32* %7, align 4
  %277 = call i32 (i32, i8*, ...) @device_printf(i32 %276, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %283

278:                                              ; preds = %261
  br label %279

279:                                              ; preds = %278, %260
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %229

282:                                              ; preds = %229
  store i32 0, i32* %2, align 4
  br label %287

283:                                              ; preds = %275, %254, %224, %195, %169, %143, %103
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %285 = call i32 @iflib_tx_structures_free(%struct.TYPE_12__* %284)
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %283, %282
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @iflib_tx_structures_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
