; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_request_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.mpr_softc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAN_SLEEP = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@TDP_NOSLEEPING = common dso_local global i32 0, align 4
@NO_SLEEP = common dso_local global i32 0, align 4
@MPI2_HOST_INTERRUPT_STATUS_OFFSET = common dso_local global i32 0, align 4
@MPI2_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@MPI2_DOORBELL_USED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MPI2_FUNCTION_HANDSHAKE = common dso_local global i32 0, align 4
@MPI2_DOORBELL_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@MPI2_DOORBELL_ADD_DWORDS_SHIFT = common dso_local global i32 0, align 4
@MPR_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Doorbell failed to activate\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Doorbell handshake failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Timeout while writing doorbell\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Timeout reading doorbell 0\0A\00", align 1
@MPI2_DOORBELL_DATA_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Timeout reading doorbell 1\0A\00", align 1
@MPR_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Driver error, throwing away %d residual message words\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Timeout reading doorbell %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Timeout reading doorbell\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Timeout waiting to exit doorbell\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Warning, doorbell still active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, i8*, %struct.TYPE_4__*, i32, i32, i32)* @mpr_request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_request_sync(%struct.mpr_softc* %0, i8* %1, %struct.TYPE_4__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpr_softc*, align 8
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
  store %struct.mpr_softc* %0, %struct.mpr_softc** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @CAN_SLEEP, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TDP_NOSLEEPING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @NO_SLEEP, align 4
  store i32 %29, i32* %20, align 4
  br label %30

30:                                               ; preds = %28, %6
  %31 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %32 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %33 = call i32 @mpr_regwrite(%struct.mpr_softc* %31, i32 %32, i32 0)
  %34 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %35 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %36 = call i32 @mpr_regread(%struct.mpr_softc* %34, i32 %35)
  %37 = load i32, i32* @MPI2_DOORBELL_USED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %7, align 4
  br label %252

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 3
  %45 = sdiv i32 %44, 4
  store i32 %45, i32* %17, align 4
  %46 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %47 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %48 = load i32, i32* @MPI2_FUNCTION_HANDSHAKE, align 4
  %49 = load i32, i32* @MPI2_DOORBELL_FUNCTION_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @MPI2_DOORBELL_ADD_DWORDS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = call i32 @mpr_regwrite(%struct.mpr_softc* %46, i32 %47, i32 %54)
  %56 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %57 = call i64 @mpr_wait_db_int(%struct.mpr_softc* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %42
  %60 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %61 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %62 = call i32 @mpr_regread(%struct.mpr_softc* %60, i32 %61)
  %63 = load i32, i32* @MPI2_DOORBELL_USED, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59, %42
  %67 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %68 = load i32, i32* @MPR_FAULT, align 4
  %69 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %67, i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %7, align 4
  br label %252

71:                                               ; preds = %59
  %72 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %73 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %74 = call i32 @mpr_regwrite(%struct.mpr_softc* %72, i32 %73, i32 0)
  %75 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %76 = load i32, i32* %20, align 4
  %77 = call i64 @mpr_wait_db_ack(%struct.mpr_softc* %75, i32 5, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %81 = load i32, i32* @MPR_FAULT, align 4
  %82 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %80, i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %7, align 4
  br label %252

84:                                               ; preds = %71
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %111, %84
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %93 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @htole32(i32 %98)
  %100 = call i32 @mpr_regwrite(%struct.mpr_softc* %92, i32 %93, i32 %99)
  %101 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %102 = load i32, i32* %20, align 4
  %103 = call i64 @mpr_wait_db_ack(%struct.mpr_softc* %101, i32 5, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %91
  %106 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %107 = load i32, i32* @MPR_FAULT, align 4
  %108 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %106, i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %7, align 4
  br label %252

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %87

114:                                              ; preds = %87
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %116 = bitcast %struct.TYPE_4__* %115 to i32*
  store i32* %116, i32** %15, align 8
  %117 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %118 = call i64 @mpr_wait_db_int(%struct.mpr_softc* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %122 = load i32, i32* @MPR_FAULT, align 4
  %123 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %121, i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %7, align 4
  br label %252

125:                                              ; preds = %114
  %126 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %127 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %128 = call i32 @mpr_regread(%struct.mpr_softc* %126, i32 %127)
  %129 = load i32, i32* @MPI2_DOORBELL_DATA_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32*, i32** %15, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %134 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %135 = call i32 @mpr_regwrite(%struct.mpr_softc* %133, i32 %134, i32 0)
  %136 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %137 = call i64 @mpr_wait_db_int(%struct.mpr_softc* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %141 = load i32, i32* @MPR_FAULT, align 4
  %142 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %140, i32 %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %143 = load i32, i32* @ENXIO, align 4
  store i32 %143, i32* %7, align 4
  br label %252

144:                                              ; preds = %125
  %145 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %146 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %147 = call i32 @mpr_regread(%struct.mpr_softc* %145, i32 %146)
  %148 = load i32, i32* @MPI2_DOORBELL_DATA_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load i32*, i32** %15, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %153 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %154 = call i32 @mpr_regwrite(%struct.mpr_softc* %152, i32 %153, i32 0)
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sdiv i32 %158, 4
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @MIN(i32 %159, i32 %160)
  %162 = mul nsw i32 %161, 2
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %18, align 4
  %165 = mul nsw i32 %164, 2
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %144
  %168 = load i32, i32* %18, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load i32, i32* %17, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %19, align 4
  %172 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %173 = load i32, i32* @MPR_ERROR, align 4
  %174 = load i32, i32* %19, align 4
  %175 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %172, i32 %173, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %167, %144
  store i32 2, i32* %16, align 4
  br label %177

177:                                              ; preds = %204, %176
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %183 = call i64 @mpr_wait_db_int(%struct.mpr_softc* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %187 = load i32, i32* @MPR_FAULT, align 4
  %188 = load i32, i32* %16, align 4
  %189 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %186, i32 %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @ENXIO, align 4
  store i32 %190, i32* %7, align 4
  br label %252

191:                                              ; preds = %181
  %192 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %193 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %194 = call i32 @mpr_regread(%struct.mpr_softc* %192, i32 %193)
  %195 = load i32, i32* @MPI2_DOORBELL_DATA_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %196, i32* %200, align 4
  %201 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %202 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %203 = call i32 @mpr_regwrite(%struct.mpr_softc* %201, i32 %202, i32 0)
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %16, align 4
  br label %177

207:                                              ; preds = %177
  br label %208

208:                                              ; preds = %221, %207
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %19, align 4
  %211 = icmp ne i32 %209, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %208
  %213 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %214 = call i64 @mpr_wait_db_int(%struct.mpr_softc* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %218 = load i32, i32* @MPR_FAULT, align 4
  %219 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %217, i32 %218, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %220 = load i32, i32* @ENXIO, align 4
  store i32 %220, i32* %7, align 4
  br label %252

221:                                              ; preds = %212
  %222 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %223 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %224 = call i32 @mpr_regread(%struct.mpr_softc* %222, i32 %223)
  %225 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %226 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %227 = call i32 @mpr_regwrite(%struct.mpr_softc* %225, i32 %226, i32 0)
  br label %208

228:                                              ; preds = %208
  %229 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %230 = call i64 @mpr_wait_db_int(%struct.mpr_softc* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %234 = load i32, i32* @MPR_FAULT, align 4
  %235 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %233, i32 %234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %236 = load i32, i32* @ENXIO, align 4
  store i32 %236, i32* %7, align 4
  br label %252

237:                                              ; preds = %228
  %238 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %239 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %240 = call i32 @mpr_regread(%struct.mpr_softc* %238, i32 %239)
  %241 = load i32, i32* @MPI2_DOORBELL_USED, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %246 = load i32, i32* @MPR_FAULT, align 4
  %247 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %245, i32 %246, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %248

248:                                              ; preds = %244, %237
  %249 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  %250 = load i32, i32* @MPI2_HOST_INTERRUPT_STATUS_OFFSET, align 4
  %251 = call i32 @mpr_regwrite(%struct.mpr_softc* %249, i32 %250, i32 0)
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %248, %232, %216, %185, %139, %120, %105, %79, %66, %40
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i32 @mpr_regwrite(%struct.mpr_softc*, i32, i32) #1

declare dso_local i32 @mpr_regread(%struct.mpr_softc*, i32) #1

declare dso_local i64 @mpr_wait_db_int(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, ...) #1

declare dso_local i64 @mpr_wait_db_ack(%struct.mpr_softc*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
