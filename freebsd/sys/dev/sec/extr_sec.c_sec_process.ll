; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i64, i32, i32, i32, i32 }
%struct.sec_softc = type { i32, i32, i64 }
%struct.sec_desc = type { %struct.TYPE_4__*, %struct.cryptop*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.cryptodesc = type { i32, i32, i32, i32, i32 }
%struct.sec_session = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.sec_softc*, %struct.sec_session*, %struct.sec_desc*, %struct.cryptop*, i32)* }

@SEC_MAX_DMA_BLOCK_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@descriptors = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@SEC_UIO = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@SEC_MBUF = common dso_local global i32 0, align 4
@SEC_MEMORY = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@SEC_MAX_KEY_LEN = common dso_local global i32 0, align 4
@CRYPTO_HINT_MORE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @sec_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sec_softc*, align 8
  %9 = alloca %struct.sec_desc*, align 8
  %10 = alloca %struct.cryptodesc*, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca %struct.sec_session*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.sec_softc* @device_get_softc(i32 %15)
  store %struct.sec_softc* %16, %struct.sec_softc** %8, align 8
  store %struct.sec_desc* null, %struct.sec_desc** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %18 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sec_session* @crypto_get_driver_session(i32 %19)
  store %struct.sec_session* %20, %struct.sec_session** %12, align 8
  %21 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SEC_MAX_DMA_BLOCK_SIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i8*, i8** @E2BIG, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %30 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %32 = call i32 @crypto_done(%struct.cryptop* %31)
  store i32 0, i32* %4, align 4
  br label %386

33:                                               ; preds = %3
  %34 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %35 = call i64 @sec_split_crp(%struct.cryptop* %34, %struct.cryptodesc** %11, %struct.cryptodesc** %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %40 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %42 = call i32 @crypto_done(%struct.cryptop* %41)
  store i32 0, i32* %4, align 4
  br label %386

43:                                               ; preds = %33
  %44 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %45 = load i32, i32* @descriptors, align 4
  %46 = call i32 @SEC_LOCK(%struct.sec_softc* %44, i32 %45)
  %47 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %48 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %49 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @SEC_DESC_SYNC(%struct.sec_softc* %47, i32 %50)
  %52 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %53 = call i64 @SEC_FREE_DESC_CNT(%struct.sec_softc* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %57 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55, %43
  %61 = load i32, i32* @CRYPTO_SYMQ, align 4
  %62 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %63 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %67 = load i32, i32* @descriptors, align 4
  %68 = call i32 @SEC_UNLOCK(%struct.sec_softc* %66, i32 %67)
  %69 = load i32, i32* @ERESTART, align 4
  store i32 %69, i32* %4, align 4
  br label %386

70:                                               ; preds = %55
  %71 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %72 = call %struct.sec_desc* @SEC_GET_FREE_DESC(%struct.sec_softc* %71)
  store %struct.sec_desc* %72, %struct.sec_desc** %9, align 8
  %73 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %74 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %76 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %78 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %79 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %78, i32 0, i32 1
  store %struct.cryptop* %77, %struct.cryptop** %79, align 8
  %80 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %81 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CRYPTO_F_IOV, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* @SEC_UIO, align 4
  store i32 %87, i32* %13, align 4
  br label %100

88:                                               ; preds = %70
  %89 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %90 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @SEC_MBUF, align 4
  store i32 %96, i32* %13, align 4
  br label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @SEC_MEMORY, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %95
  br label %100

100:                                              ; preds = %99, %86
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %102 = icmp ne %struct.cryptodesc* %101, null
  br i1 %102, label %103, label %167

103:                                              ; preds = %100
  %104 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %105 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %167

110:                                              ; preds = %103
  %111 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %112 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %119 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %124 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %127 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @memcpy(i32 %122, i32 %125, i32 %128)
  br label %140

130:                                              ; preds = %110
  %131 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %132 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %137 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @arc4rand(i32 %135, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %130, %117
  %141 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %142 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %140
  %148 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %149 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %152 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %155 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %158 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %161 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @crypto_copyback(i32 %150, i32 %153, i32 %156, i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %147, %140
  br label %211

167:                                              ; preds = %103, %100
  %168 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %169 = icmp ne %struct.cryptodesc* %168, null
  br i1 %169, label %170, label %210

170:                                              ; preds = %167
  %171 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %172 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %170
  %178 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %179 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %184 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %187 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @memcpy(i32 %182, i32 %185, i32 %188)
  br label %209

190:                                              ; preds = %170
  %191 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %192 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %195 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %198 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %201 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %204 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @crypto_copydata(i32 %193, i32 %196, i32 %199, i32 %202, i32 %207)
  br label %209

209:                                              ; preds = %190, %177
  br label %210

210:                                              ; preds = %209, %167
  br label %211

211:                                              ; preds = %210, %166
  %212 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %213 = icmp ne %struct.cryptodesc* %212, null
  br i1 %213, label %214, label %249

214:                                              ; preds = %211
  %215 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %216 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %249

221:                                              ; preds = %214
  %222 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %223 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 8
  %226 = load i32, i32* @SEC_MAX_KEY_LEN, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %245

228:                                              ; preds = %221
  %229 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %230 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %231, 8
  %233 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %234 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %236 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %239 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %242 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @memcpy(i32 %237, i32 %240, i32 %243)
  br label %248

245:                                              ; preds = %221
  %246 = load i8*, i8** @E2BIG, align 8
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %245, %228
  br label %249

249:                                              ; preds = %248, %214, %211
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %290, label %252

252:                                              ; preds = %249
  %253 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %254 = icmp ne %struct.cryptodesc* %253, null
  br i1 %254, label %255, label %290

255:                                              ; preds = %252
  %256 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %257 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %290

262:                                              ; preds = %255
  %263 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %264 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sdiv i32 %265, 8
  %267 = load i32, i32* @SEC_MAX_KEY_LEN, align 4
  %268 = icmp sle i32 %266, %267
  br i1 %268, label %269, label %286

269:                                              ; preds = %262
  %270 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %271 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sdiv i32 %272, 8
  %274 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %275 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %277 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %280 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %283 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @memcpy(i32 %278, i32 %281, i32 %284)
  br label %289

286:                                              ; preds = %262
  %287 = load i8*, i8** @E2BIG, align 8
  %288 = ptrtoint i8* %287 to i32
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %286, %269
  br label %290

290:                                              ; preds = %289, %255, %252, %249
  %291 = load i32, i32* %14, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %329, label %293

293:                                              ; preds = %290
  %294 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %295 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %294, i32 0, i32 0
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %300 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %303 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @memcpy(i32 %298, i32 %301, i32 %304)
  %306 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %307 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %306, i32 0, i32 0
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %312 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %315 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @memcpy(i32 %310, i32 %313, i32 %316)
  %318 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %319 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %318, i32 0, i32 3
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i32 (%struct.sec_softc*, %struct.sec_session*, %struct.sec_desc*, %struct.cryptop*, i32)*, i32 (%struct.sec_softc*, %struct.sec_session*, %struct.sec_desc*, %struct.cryptop*, i32)** %321, align 8
  %323 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %324 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %325 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %326 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %327 = load i32, i32* %13, align 4
  %328 = call i32 %322(%struct.sec_softc* %323, %struct.sec_session* %324, %struct.sec_desc* %325, %struct.cryptop* %326, i32 %327)
  store i32 %328, i32* %14, align 4
  br label %329

329:                                              ; preds = %293, %290
  %330 = load i32, i32* %14, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %329
  %333 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %334 = call i32 @SEC_DESC_FREE_POINTERS(%struct.sec_desc* %333)
  %335 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %336 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %337 = call i32 @SEC_DESC_PUT_BACK_LT(%struct.sec_softc* %335, %struct.sec_desc* %336)
  %338 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %339 = call i32 @SEC_PUT_BACK_FREE_DESC(%struct.sec_softc* %338)
  %340 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %341 = load i32, i32* @descriptors, align 4
  %342 = call i32 @SEC_UNLOCK(%struct.sec_softc* %340, i32 %341)
  %343 = load i32, i32* %14, align 4
  %344 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %345 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 8
  %346 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %347 = call i32 @crypto_done(%struct.cryptop* %346)
  store i32 0, i32* %4, align 4
  br label %386

348:                                              ; preds = %329
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* @CRYPTO_HINT_MORE, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %348
  %354 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %355 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp eq i32 %356, 3
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %360 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  store i32 0, i32* %362, align 4
  br label %368

363:                                              ; preds = %353, %348
  %364 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %365 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %364, i32 0, i32 0
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  store i32 1, i32* %367, align 4
  br label %368

368:                                              ; preds = %363, %358
  %369 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %370 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %371 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %372 = or i32 %370, %371
  %373 = call i32 @SEC_DESC_SYNC(%struct.sec_softc* %369, i32 %372)
  %374 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %375 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %376 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %377 = or i32 %375, %376
  %378 = call i32 @SEC_DESC_SYNC_POINTERS(%struct.sec_desc* %374, i32 %377)
  %379 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %380 = call i32 @SEC_DESC_FREE2READY(%struct.sec_softc* %379)
  %381 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %382 = load i32, i32* @descriptors, align 4
  %383 = call i32 @SEC_UNLOCK(%struct.sec_softc* %381, i32 %382)
  %384 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %385 = call i32 @sec_enqueue(%struct.sec_softc* %384)
  store i32 0, i32* %4, align 4
  br label %386

386:                                              ; preds = %368, %332, %60, %37, %26
  %387 = load i32, i32* %4, align 4
  ret i32 %387
}

declare dso_local %struct.sec_softc* @device_get_softc(i32) #1

declare dso_local %struct.sec_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

declare dso_local i64 @sec_split_crp(%struct.cryptop*, %struct.cryptodesc**, %struct.cryptodesc**) #1

declare dso_local i32 @SEC_LOCK(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_DESC_SYNC(%struct.sec_softc*, i32) #1

declare dso_local i64 @SEC_FREE_DESC_CNT(%struct.sec_softc*) #1

declare dso_local i32 @SEC_UNLOCK(%struct.sec_softc*, i32) #1

declare dso_local %struct.sec_desc* @SEC_GET_FREE_DESC(%struct.sec_softc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SEC_DESC_FREE_POINTERS(%struct.sec_desc*) #1

declare dso_local i32 @SEC_DESC_PUT_BACK_LT(%struct.sec_softc*, %struct.sec_desc*) #1

declare dso_local i32 @SEC_PUT_BACK_FREE_DESC(%struct.sec_softc*) #1

declare dso_local i32 @SEC_DESC_SYNC_POINTERS(%struct.sec_desc*, i32) #1

declare dso_local i32 @SEC_DESC_FREE2READY(%struct.sec_softc*) #1

declare dso_local i32 @sec_enqueue(%struct.sec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
