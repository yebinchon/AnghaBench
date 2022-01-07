; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i32, i32 }
%struct.cryptop = type { i64, i32, i32, i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i32, i32, i32, i32, i32, %struct.cryptodesc* }
%struct.cesa_request = type { i32, %struct.TYPE_2__*, %struct.cesa_session*, %struct.cryptodesc*, %struct.cryptodesc*, %struct.cryptop* }
%struct.TYPE_2__ = type { i32 }
%struct.cesa_session = type { i32, i32, i32 }

@CESA_MAX_REQUEST_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@sessions = common dso_local global %struct.cesa_softc* null, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@CESA_MAX_KEY_LEN = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@CESA_MAX_MKEY_LEN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CRYPTO_HINT_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @cesa_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cesa_request*, align 8
  %9 = alloca %struct.cesa_session*, align 8
  %10 = alloca %struct.cryptodesc*, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca %struct.cesa_softc*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.cesa_softc* @device_get_softc(i32 %15)
  store %struct.cesa_softc* %16, %struct.cesa_softc** %13, align 8
  %17 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %18 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %17, i32 0, i32 5
  %19 = load %struct.cryptodesc*, %struct.cryptodesc** %18, align 8
  store %struct.cryptodesc* %19, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %11, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %21 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cesa_session* @crypto_get_driver_session(i32 %22)
  store %struct.cesa_session* %23, %struct.cesa_session** %9, align 8
  %24 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %25 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CESA_MAX_REQUEST_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i8*, i8** @E2BIG, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %33 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %35 = call i32 @crypto_done(%struct.cryptop* %34)
  store i32 0, i32* %4, align 4
  br label %372

36:                                               ; preds = %3
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %38 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @cesa_is_hash(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %43, %struct.cryptodesc** %12, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %45, %struct.cryptodesc** %11, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %48 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %47, i32 0, i32 6
  %49 = load %struct.cryptodesc*, %struct.cryptodesc** %48, align 8
  store %struct.cryptodesc* %49, %struct.cryptodesc** %10, align 8
  %50 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %51 = icmp ne %struct.cryptodesc* %50, null
  br i1 %51, label %52, label %92

52:                                               ; preds = %46
  %53 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %54 = icmp ne %struct.cryptodesc* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %57 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @cesa_is_hash(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %62, %struct.cryptodesc** %11, align 8
  br label %63

63:                                               ; preds = %61, %55, %52
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %65 = icmp ne %struct.cryptodesc* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %68 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @cesa_is_hash(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %73, %struct.cryptodesc** %12, align 8
  br label %74

74:                                               ; preds = %72, %66, %63
  %75 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %76 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %75, i32 0, i32 6
  %77 = load %struct.cryptodesc*, %struct.cryptodesc** %76, align 8
  %78 = icmp ne %struct.cryptodesc* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %81 = icmp ne %struct.cryptodesc* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %84 = icmp ne %struct.cryptodesc* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %82, %79, %74
  %86 = load i32, i32* @EINVAL, align 4
  %87 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %88 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %90 = call i32 @crypto_done(%struct.cryptop* %89)
  store i32 0, i32* %4, align 4
  br label %372

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %94 = call %struct.cesa_request* @cesa_alloc_request(%struct.cesa_softc* %93)
  store %struct.cesa_request* %94, %struct.cesa_request** %8, align 8
  %95 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %96 = icmp ne %struct.cesa_request* %95, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %99 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %100 = call i32 @CESA_LOCK(%struct.cesa_softc* %98, %struct.cesa_softc* %99)
  %101 = load i32, i32* @CRYPTO_SYMQ, align 4
  %102 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %103 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %105 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %106 = call i32 @CESA_UNLOCK(%struct.cesa_softc* %104, %struct.cesa_softc* %105)
  %107 = load i32, i32* @ERESTART, align 4
  store i32 %107, i32* %4, align 4
  br label %372

108:                                              ; preds = %92
  %109 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %110 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %111 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %110, i32 0, i32 5
  store %struct.cryptop* %109, %struct.cryptop** %111, align 8
  %112 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %113 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %114 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %113, i32 0, i32 4
  store %struct.cryptodesc* %112, %struct.cryptodesc** %114, align 8
  %115 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %116 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %117 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %116, i32 0, i32 3
  store %struct.cryptodesc* %115, %struct.cryptodesc** %117, align 8
  %118 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %119 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %120 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %119, i32 0, i32 2
  store %struct.cesa_session* %118, %struct.cesa_session** %120, align 8
  %121 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %122 = load %struct.cesa_softc*, %struct.cesa_softc** @sessions, align 8
  %123 = call i32 @CESA_LOCK(%struct.cesa_softc* %121, %struct.cesa_softc* %122)
  %124 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %125 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %126 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @cesa_sync_desc(%struct.cesa_softc* %124, i32 %127)
  %129 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %130 = icmp ne %struct.cryptodesc* %129, null
  br i1 %130, label %131, label %195

131:                                              ; preds = %108
  %132 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %133 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %195

138:                                              ; preds = %131
  %139 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %140 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %138
  %146 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %147 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %152 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %155 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memcpy(i32 %150, i32 %153, i32 %156)
  br label %168

158:                                              ; preds = %138
  %159 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %160 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %165 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @arc4rand(i32 %163, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %158, %145
  %169 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %170 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %168
  %176 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %177 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %180 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %183 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %186 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %189 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @crypto_copyback(i32 %178, i32 %181, i32 %184, i32 %187, i32 %192)
  br label %194

194:                                              ; preds = %175, %168
  br label %239

195:                                              ; preds = %131, %108
  %196 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %197 = icmp ne %struct.cryptodesc* %196, null
  br i1 %197, label %198, label %238

198:                                              ; preds = %195
  %199 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %200 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %198
  %206 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %207 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %212 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %215 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @memcpy(i32 %210, i32 %213, i32 %216)
  br label %237

218:                                              ; preds = %198
  %219 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %220 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %223 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %226 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %229 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %232 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %231, i32 0, i32 1
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @crypto_copydata(i32 %221, i32 %224, i32 %227, i32 %230, i32 %235)
  br label %237

237:                                              ; preds = %218, %205
  br label %238

238:                                              ; preds = %237, %195
  br label %239

239:                                              ; preds = %238, %194
  %240 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %241 = icmp ne %struct.cryptodesc* %240, null
  br i1 %241, label %242, label %286

242:                                              ; preds = %239
  %243 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %244 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %286

249:                                              ; preds = %242
  %250 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %251 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = sdiv i32 %252, 8
  %254 = load i32, i32* @CESA_MAX_KEY_LEN, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %282

256:                                              ; preds = %249
  %257 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %258 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = sdiv i32 %259, 8
  %261 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %262 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %264 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %267 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %270 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @memcpy(i32 %265, i32 %268, i32 %271)
  %273 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %274 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %256
  %279 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %280 = call i32 @cesa_prep_aes_key(%struct.cesa_session* %279)
  store i32 %280, i32* %14, align 4
  br label %281

281:                                              ; preds = %278, %256
  br label %285

282:                                              ; preds = %249
  %283 = load i8*, i8** @E2BIG, align 8
  %284 = ptrtoint i8* %283 to i32
  store i32 %284, i32* %14, align 4
  br label %285

285:                                              ; preds = %282, %281
  br label %286

286:                                              ; preds = %285, %242, %239
  %287 = load i32, i32* %14, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %323, label %289

289:                                              ; preds = %286
  %290 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %291 = icmp ne %struct.cryptodesc* %290, null
  br i1 %291, label %292, label %323

292:                                              ; preds = %289
  %293 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %294 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %323

299:                                              ; preds = %292
  %300 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %301 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = sdiv i32 %302, 8
  %304 = load i32, i32* @CESA_MAX_MKEY_LEN, align 4
  %305 = icmp sle i32 %303, %304
  br i1 %305, label %306, label %319

306:                                              ; preds = %299
  %307 = load %struct.cesa_session*, %struct.cesa_session** %9, align 8
  %308 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %309 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %312 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %315 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = sdiv i32 %316, 8
  %318 = call i32 @cesa_set_mkey(%struct.cesa_session* %307, i64 %310, i32 %313, i32 %317)
  store i32 %318, i32* %14, align 4
  br label %322

319:                                              ; preds = %299
  %320 = load i8*, i8** @E2BIG, align 8
  %321 = ptrtoint i8* %320 to i32
  store i32 %321, i32* %14, align 4
  br label %322

322:                                              ; preds = %319, %306
  br label %323

323:                                              ; preds = %322, %292, %289, %286
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %323
  %327 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %328 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %329 = call i32 @cesa_create_chain(%struct.cesa_softc* %327, %struct.cesa_request* %328)
  store i32 %329, i32* %14, align 4
  br label %330

330:                                              ; preds = %326, %323
  %331 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %332 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %333 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %334 = or i32 %332, %333
  %335 = call i32 @cesa_sync_desc(%struct.cesa_softc* %331, i32 %334)
  %336 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %337 = load %struct.cesa_softc*, %struct.cesa_softc** @sessions, align 8
  %338 = call i32 @CESA_UNLOCK(%struct.cesa_softc* %336, %struct.cesa_softc* %337)
  %339 = load i32, i32* %14, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %350

341:                                              ; preds = %330
  %342 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %343 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %344 = call i32 @cesa_free_request(%struct.cesa_softc* %342, %struct.cesa_request* %343)
  %345 = load i32, i32* %14, align 4
  %346 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %347 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 8
  %348 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %349 = call i32 @crypto_done(%struct.cryptop* %348)
  store i32 0, i32* %4, align 4
  br label %372

350:                                              ; preds = %330
  %351 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %352 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %355 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %358 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %359 = or i32 %357, %358
  %360 = call i32 @bus_dmamap_sync(i32 %353, i32 %356, i32 %359)
  %361 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %362 = load %struct.cesa_request*, %struct.cesa_request** %8, align 8
  %363 = call i32 @cesa_enqueue_request(%struct.cesa_softc* %361, %struct.cesa_request* %362)
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* @CRYPTO_HINT_MORE, align 4
  %366 = and i32 %364, %365
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %350
  %369 = load %struct.cesa_softc*, %struct.cesa_softc** %13, align 8
  %370 = call i32 @cesa_execute(%struct.cesa_softc* %369)
  br label %371

371:                                              ; preds = %368, %350
  store i32 0, i32* %4, align 4
  br label %372

372:                                              ; preds = %371, %341, %97, %85, %29
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local %struct.cesa_softc* @device_get_softc(i32) #1

declare dso_local %struct.cesa_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

declare dso_local i64 @cesa_is_hash(i64) #1

declare dso_local %struct.cesa_request* @cesa_alloc_request(%struct.cesa_softc*) #1

declare dso_local i32 @CESA_LOCK(%struct.cesa_softc*, %struct.cesa_softc*) #1

declare dso_local i32 @CESA_UNLOCK(%struct.cesa_softc*, %struct.cesa_softc*) #1

declare dso_local i32 @cesa_sync_desc(%struct.cesa_softc*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cesa_prep_aes_key(%struct.cesa_session*) #1

declare dso_local i32 @cesa_set_mkey(%struct.cesa_session*, i64, i32, i32) #1

declare dso_local i32 @cesa_create_chain(%struct.cesa_softc*, %struct.cesa_request*) #1

declare dso_local i32 @cesa_free_request(%struct.cesa_softc*, %struct.cesa_request*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @cesa_enqueue_request(%struct.cesa_softc*, %struct.cesa_request*) #1

declare dso_local i32 @cesa_execute(%struct.cesa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
