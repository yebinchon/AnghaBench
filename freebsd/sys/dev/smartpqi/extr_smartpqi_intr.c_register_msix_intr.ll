; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_intr.c_register_msix_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_intr.c_register_msix_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32*, i8**, i32*, %struct.TYPE_9__*, i32**, i8* }
%struct.TYPE_9__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to allocate \09\09\09\09event interrupt resource\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@shared_ithread_routine = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to setup interrupt for events r=%d\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"ERR : Failed to allocate \09\09\09\09event interrupt resource\0A\00", align 1
@event_ithread_routine = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to setup interrupt for events err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Failed to allocate \09\09\09\09\09msi/x interrupt resource\0A\00", align 1
@common_ithread_routine = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to setup \09\09\09\09\09msi/x interrupt error = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"OUT error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_msix_intr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.TYPE_9__* @os_mem_alloc(%struct.TYPE_8__* %16, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %135

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %31, i32* %38, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @SYS_RES_IRQ, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* @RF_SHAREABLE, align 4
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @bus_alloc_resource_any(i8* %39, i32 %40, i32* %47, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %52, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* null, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %29
  %70 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %71, i32* %2, align 4
  br label %357

72:                                               ; preds = %29
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i8* %73, i8** %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %83, i32* %91, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @INTR_TYPE_CAM, align 4
  %102 = load i32, i32* @INTR_MPSAFE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @shared_ithread_routine, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @bus_setup_intr(i8* %92, i32* %100, i32 %103, i32* null, i32 %104, %struct.TYPE_9__* %111, i32* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %72
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %357

126:                                              ; preds = %72
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %127, i8** %134, align 8
  br label %353

135:                                              ; preds = %1
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %137, i32* %144, align 4
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* @SYS_RES_IRQ, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* @RF_SHAREABLE, align 4
  %155 = load i32, i32* @RF_ACTIVE, align 4
  %156 = or i32 %154, %155
  %157 = call i8* @bus_alloc_resource_any(i8* %145, i32 %146, i32* %153, i32 %156)
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  store i32* %158, i32** %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* null, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %135
  %176 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %177 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %177, i32* %2, align 4
  br label %357

178:                                              ; preds = %135
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  store i8* %179, i8** %187, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 %188, i32* %196, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @INTR_TYPE_CAM, align 4
  %207 = load i32, i32* @INTR_MPSAFE, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @event_ithread_routine, align 4
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i64 %215
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = call i32 @bus_setup_intr(i8* %197, i32* %205, i32 %208, i32* null, i32 %209, %struct.TYPE_9__* %216, i32* %223)
  store i32 %224, i32* %4, align 4
  %225 = load i32, i32* %4, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %178
  %228 = load i32, i32* %4, align 4
  %229 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* %4, align 4
  store i32 %230, i32* %2, align 4
  br label %357

231:                                              ; preds = %178
  %232 = load i8*, i8** @TRUE, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i8**, i8*** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* %232, i8** %239, align 8
  store i32 1, i32* %5, align 4
  br label %240

240:                                              ; preds = %349, %231
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %352

244:                                              ; preds = %240
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %246, i32* %253, align 4
  %254 = load i8*, i8** %6, align 8
  %255 = load i32, i32* @SYS_RES_IRQ, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* @RF_SHAREABLE, align 4
  %264 = load i32, i32* @RF_ACTIVE, align 4
  %265 = or i32 %263, %264
  %266 = call i8* @bus_alloc_resource_any(i8* %254, i32 %255, i32* %262, i32 %265)
  %267 = bitcast i8* %266 to i32*
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 4
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  store i32* %267, i32** %274, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 4
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = icmp eq i32* null, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %244
  %285 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %286 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %286, i32* %2, align 4
  br label %357

287:                                              ; preds = %244
  %288 = load i8*, i8** %6, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 3
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 1
  store i8* %288, i8** %296, align 8
  %297 = load i32, i32* %5, align 4
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 3
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %300, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  store i32 %297, i32* %305, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 4
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* @INTR_TYPE_CAM, align 4
  %316 = load i32, i32* @INTR_MPSAFE, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @common_ithread_routine, align 4
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i64 %324
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = call i32 @bus_setup_intr(i8* %306, i32* %314, i32 %317, i32* null, i32 %318, %struct.TYPE_9__* %325, i32* %332)
  store i32 %333, i32* %4, align 4
  %334 = load i32, i32* %4, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %287
  %337 = load i32, i32* %4, align 4
  %338 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %337)
  %339 = load i32, i32* %4, align 4
  store i32 %339, i32* %2, align 4
  br label %357

340:                                              ; preds = %287
  %341 = load i8*, i8** @TRUE, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 1
  %345 = load i8**, i8*** %344, align 8
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %345, i64 %347
  store i8* %341, i8** %348, align 8
  br label %349

349:                                              ; preds = %340
  %350 = load i32, i32* %5, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %5, align 4
  br label %240

352:                                              ; preds = %240
  br label %353

353:                                              ; preds = %352, %126
  %354 = load i32, i32* %4, align 4
  %355 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %354)
  %356 = load i32, i32* %4, align 4
  store i32 %356, i32* %2, align 4
  br label %357

357:                                              ; preds = %353, %336, %284, %227, %175, %122, %69
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @os_mem_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
