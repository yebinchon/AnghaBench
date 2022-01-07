; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_request_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.mps_softc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAN_SLEEP = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@NO_SLEEP = common dso_local global i32 0, align 4
@MPI2_HOST_INTERRUPT_STATUS_OFFSET = common dso_local global i32 0, align 4
@MPI2_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@MPI2_DOORBELL_USED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MPI2_FUNCTION_HANDSHAKE = common dso_local global i32 0, align 4
@MPI2_DOORBELL_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@MPI2_DOORBELL_ADD_DWORDS_SHIFT = common dso_local global i32 0, align 4
@MPS_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Doorbell failed to activate\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Doorbell handshake failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Timeout while writing doorbell\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Timeout reading doorbell 0\0A\00", align 1
@MPI2_DOORBELL_DATA_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Timeout reading doorbell 1\0A\00", align 1
@MPS_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Driver error, throwing away %d residual message words\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Timeout reading doorbell %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Timeout reading doorbell\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Timeout waiting to exit doorbell\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Warning, doorbell still active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*, i8*, %struct.TYPE_4__*, i32, i32, i32)* @mps_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_request_sync(%struct.mps_softc* %0, i8* %1, %struct.TYPE_4__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mps_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @CAN_SLEEP, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @NO_SLEEP, align 4
  store i32 %27, i32* %20, align 4
  br label %28

28:                                               ; preds = %26, %6
  %29 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %30 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %31 = call i32 @mps_regwrite(%struct.mps_softc* %29, i32 %30, i32 0)
  %32 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %33 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %34 = call i32 @mps_regread(%struct.mps_softc* %32, i32 %33)
  %35 = load i32, i32* @MPI2_DOORBELL_USED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @EBUSY, align 4
  store i32 %39, i32* %7, align 4
  br label %250

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 3
  %43 = sdiv i32 %42, 4
  store i32 %43, i32* %17, align 4
  %44 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %45 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %46 = load i32, i32* @MPI2_FUNCTION_HANDSHAKE, align 4
  %47 = load i32, i32* @MPI2_DOORBELL_FUNCTION_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @MPI2_DOORBELL_ADD_DWORDS_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = call i32 @mps_regwrite(%struct.mps_softc* %44, i32 %45, i32 %52)
  %54 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %55 = call i64 @mps_wait_db_int(%struct.mps_softc* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %40
  %58 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %59 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %60 = call i32 @mps_regread(%struct.mps_softc* %58, i32 %59)
  %61 = load i32, i32* @MPI2_DOORBELL_USED, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57, %40
  %65 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %66 = load i32, i32* @MPS_FAULT, align 4
  %67 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %65, i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %7, align 4
  br label %250

69:                                               ; preds = %57
  %70 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %71 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %72 = call i32 @mps_regwrite(%struct.mps_softc* %70, i32 %71, i32 0)
  %73 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %74 = load i32, i32* %20, align 4
  %75 = call i64 @mps_wait_db_ack(%struct.mps_softc* %73, i32 5, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %79 = load i32, i32* @MPS_FAULT, align 4
  %80 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %78, i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %7, align 4
  br label %250

82:                                               ; preds = %69
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %109, %82
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %85
  %90 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %91 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @htole32(i32 %96)
  %98 = call i32 @mps_regwrite(%struct.mps_softc* %90, i32 %91, i32 %97)
  %99 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %100 = load i32, i32* %20, align 4
  %101 = call i64 @mps_wait_db_ack(%struct.mps_softc* %99, i32 5, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %105 = load i32, i32* @MPS_FAULT, align 4
  %106 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %104, i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %7, align 4
  br label %250

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %85

112:                                              ; preds = %85
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = bitcast %struct.TYPE_4__* %113 to i32*
  store i32* %114, i32** %15, align 8
  %115 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %116 = call i64 @mps_wait_db_int(%struct.mps_softc* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %120 = load i32, i32* @MPS_FAULT, align 4
  %121 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %119, i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %7, align 4
  br label %250

123:                                              ; preds = %112
  %124 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %125 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %126 = call i32 @mps_regread(%struct.mps_softc* %124, i32 %125)
  %127 = load i32, i32* @MPI2_DOORBELL_DATA_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32*, i32** %15, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %132 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %133 = call i32 @mps_regwrite(%struct.mps_softc* %131, i32 %132, i32 0)
  %134 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %135 = call i64 @mps_wait_db_int(%struct.mps_softc* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %123
  %138 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %139 = load i32, i32* @MPS_FAULT, align 4
  %140 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %138, i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %7, align 4
  br label %250

142:                                              ; preds = %123
  %143 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %144 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %145 = call i32 @mps_regread(%struct.mps_softc* %143, i32 %144)
  %146 = load i32, i32* @MPI2_DOORBELL_DATA_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %151 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %152 = call i32 @mps_regwrite(%struct.mps_softc* %150, i32 %151, i32 0)
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sdiv i32 %156, 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @MIN(i32 %157, i32 %158)
  %160 = mul nsw i32 %159, 2
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = mul nsw i32 %162, 2
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %142
  %166 = load i32, i32* %18, align 4
  %167 = mul nsw i32 %166, 2
  %168 = load i32, i32* %17, align 4
  %169 = sub nsw i32 %167, %168
  store i32 %169, i32* %19, align 4
  %170 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %171 = load i32, i32* @MPS_ERROR, align 4
  %172 = load i32, i32* %19, align 4
  %173 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %170, i32 %171, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %165, %142
  store i32 2, i32* %16, align 4
  br label %175

175:                                              ; preds = %202, %174
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %205

179:                                              ; preds = %175
  %180 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %181 = call i64 @mps_wait_db_int(%struct.mps_softc* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %185 = load i32, i32* @MPS_FAULT, align 4
  %186 = load i32, i32* %16, align 4
  %187 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %184, i32 %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @ENXIO, align 4
  store i32 %188, i32* %7, align 4
  br label %250

189:                                              ; preds = %179
  %190 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %191 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %192 = call i32 @mps_regread(%struct.mps_softc* %190, i32 %191)
  %193 = load i32, i32* @MPI2_DOORBELL_DATA_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32*, i32** %15, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  %199 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %200 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %201 = call i32 @mps_regwrite(%struct.mps_softc* %199, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %175

205:                                              ; preds = %175
  br label %206

206:                                              ; preds = %219, %205
  %207 = load i32, i32* %19, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %19, align 4
  %209 = icmp ne i32 %207, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %206
  %211 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %212 = call i64 @mps_wait_db_int(%struct.mps_softc* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %216 = load i32, i32* @MPS_FAULT, align 4
  %217 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %215, i32 %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %218 = load i32, i32* @ENXIO, align 4
  store i32 %218, i32* %7, align 4
  br label %250

219:                                              ; preds = %210
  %220 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %221 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %222 = call i32 @mps_regread(%struct.mps_softc* %220, i32 %221)
  %223 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %224 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %225 = call i32 @mps_regwrite(%struct.mps_softc* %223, i32 %224, i32 0)
  br label %206

226:                                              ; preds = %206
  %227 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %228 = call i64 @mps_wait_db_int(%struct.mps_softc* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %232 = load i32, i32* @MPS_FAULT, align 4
  %233 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %231, i32 %232, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %234 = load i32, i32* @ENXIO, align 4
  store i32 %234, i32* %7, align 4
  br label %250

235:                                              ; preds = %226
  %236 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %237 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %238 = call i32 @mps_regread(%struct.mps_softc* %236, i32 %237)
  %239 = load i32, i32* @MPI2_DOORBELL_USED, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %244 = load i32, i32* @MPS_FAULT, align 4
  %245 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %243, i32 %244, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %246

246:                                              ; preds = %242, %235
  %247 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %248 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %249 = call i32 @mps_regwrite(%struct.mps_softc* %247, i32 %248, i32 0)
  store i32 0, i32* %7, align 4
  br label %250

250:                                              ; preds = %246, %230, %214, %183, %137, %118, %103, %77, %64, %38
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i32 @mps_regwrite(%struct.mps_softc*, i32, i32) #1

declare dso_local i32 @mps_regread(%struct.mps_softc*, i32) #1

declare dso_local i64 @mps_wait_db_int(%struct.mps_softc*) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, ...) #1

declare dso_local i64 @mps_wait_db_ack(%struct.mps_softc*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
