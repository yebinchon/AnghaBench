; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.safe_softc = type { i32, i32, i32, i32 }
%struct.safe_ringentry = type { i64, i64, i32, %struct.TYPE_9__, i32*, i32*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_9__ = type { i8** }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.cryptop = type { i32, i64, %struct.cryptodesc*, i32, i32 }
%struct.cryptodesc = type { i64, i32, %struct.cryptodesc*, i64, i64 }
%struct.safe_session = type { i32, i64 }

@safestats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@SAFE_PE_CSR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"csr 0x%x cmd0 0x%x cmd1 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@SAFE_QFLAGS_COPYOUTIV = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_3DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@SAFE_QFLAGS_COPYOUTICV = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@CRYPTO_NULL_HMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safe_softc*, %struct.safe_ringentry*)* @safe_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_callback(%struct.safe_softc* %0, %struct.safe_ringentry* %1) #0 {
  %3 = alloca %struct.safe_softc*, align 8
  %4 = alloca %struct.safe_ringentry*, align 8
  %5 = alloca %struct.cryptop*, align 8
  %6 = alloca %struct.safe_session*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca i32, align 4
  store %struct.safe_softc* %0, %struct.safe_softc** %3, align 8
  store %struct.safe_ringentry* %1, %struct.safe_ringentry** %4, align 8
  %9 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %10 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cryptop*
  store %struct.cryptop* %12, %struct.cryptop** %5, align 8
  %13 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %14 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.safe_session* @crypto_get_driver_session(i32 %15)
  store %struct.safe_session* %16, %struct.safe_session** %6, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @safestats, i32 0, i32 2), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @safestats, i32 0, i32 2), align 4
  %19 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %20 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @safestats, i32 0, i32 1), align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @safestats, i32 0, i32 1), align 4
  %27 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %28 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %27, i32 0, i32 3
  %29 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %30 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @safe_dma_sync(i32* %28, i32 %31)
  %33 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %34 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SAFE_PE_CSR_STATUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %2
  %41 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %45 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %49 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %53 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @safestats, i32 0, i32 0), align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @safestats, i32 0, i32 0), align 4
  %59 = load i32, i32* @EIO, align 4
  %60 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %61 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %40, %2
  %63 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %64 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %98

67:                                               ; preds = %62
  %68 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %69 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %72 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %77 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %80 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %83 = call i32 @bus_dmamap_sync(i32 %78, i32* %81, i32 %82)
  %84 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %85 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %88 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_dmamap_unload(i32 %86, i32* %89)
  %91 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %92 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %95 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_dmamap_destroy(i32 %93, i32* %96)
  br label %98

98:                                               ; preds = %75, %67, %62
  %99 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %100 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %103 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %106 = call i32 @bus_dmamap_sync(i32 %101, i32* %104, i32 %105)
  %107 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %108 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %111 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @bus_dmamap_unload(i32 %109, i32* %112)
  %114 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %115 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %118 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @bus_dmamap_destroy(i32 %116, i32* %119)
  %121 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %122 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %98
  %128 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %129 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %132 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %137 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @m_freem(i64 %138)
  %140 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %141 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %144 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %135, %127, %98
  %146 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %147 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SAFE_QFLAGS_COPYOUTIV, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %208

152:                                              ; preds = %145
  %153 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %154 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %153, i32 0, i32 2
  %155 = load %struct.cryptodesc*, %struct.cryptodesc** %154, align 8
  store %struct.cryptodesc* %155, %struct.cryptodesc** %7, align 8
  br label %156

156:                                              ; preds = %203, %152
  %157 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %158 = icmp ne %struct.cryptodesc* %157, null
  br i1 %158, label %159, label %207

159:                                              ; preds = %156
  %160 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %161 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %167 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165, %159
  store i32 8, i32* %8, align 4
  br label %181

172:                                              ; preds = %165
  %173 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %174 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  store i32 16, i32* %8, align 4
  br label %180

179:                                              ; preds = %172
  br label %203

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %180, %171
  %182 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %183 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %186 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %189 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %192 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.safe_session*, %struct.safe_session** %6, align 8
  %200 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @crypto_copydata(i32 %184, i64 %187, i64 %197, i32 %198, i64 %201)
  br label %207

203:                                              ; preds = %179
  %204 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %205 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %204, i32 0, i32 2
  %206 = load %struct.cryptodesc*, %struct.cryptodesc** %205, align 8
  store %struct.cryptodesc* %206, %struct.cryptodesc** %7, align 8
  br label %156

207:                                              ; preds = %181, %156
  br label %208

208:                                              ; preds = %207, %145
  %209 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %210 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @SAFE_QFLAGS_COPYOUTICV, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %308

215:                                              ; preds = %208
  %216 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %217 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %216, i32 0, i32 2
  %218 = load %struct.cryptodesc*, %struct.cryptodesc** %217, align 8
  store %struct.cryptodesc* %218, %struct.cryptodesc** %7, align 8
  br label %219

219:                                              ; preds = %303, %215
  %220 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %221 = icmp ne %struct.cryptodesc* %220, null
  br i1 %221, label %222, label %307

222:                                              ; preds = %219
  %223 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %224 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %241, label %228

228:                                              ; preds = %222
  %229 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %230 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %241, label %234

234:                                              ; preds = %228
  %235 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %236 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @CRYPTO_NULL_HMAC, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %241, label %240

240:                                              ; preds = %234
  br label %303

241:                                              ; preds = %234, %228, %222
  %242 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %243 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %284

247:                                              ; preds = %241
  %248 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %249 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i8* @bswap32(i8* %253)
  %255 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %256 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i8**, i8*** %257, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 0
  store i8* %254, i8** %259, align 8
  %260 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %261 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  %265 = load i8*, i8** %264, align 8
  %266 = call i8* @bswap32(i8* %265)
  %267 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %268 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  %270 = load i8**, i8*** %269, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 1
  store i8* %266, i8** %271, align 8
  %272 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %273 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 2
  %277 = load i8*, i8** %276, align 8
  %278 = call i8* @bswap32(i8* %277)
  %279 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %280 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i8**, i8*** %281, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 2
  store i8* %278, i8** %283, align 8
  br label %284

284:                                              ; preds = %247, %241
  %285 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %286 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %289 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %292 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.safe_session*, %struct.safe_session** %6, align 8
  %295 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %298 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i8**, i8*** %299, align 8
  %301 = ptrtoint i8** %300 to i64
  %302 = call i32 @crypto_copyback(i32 %287, i64 %290, i32 %293, i32 %296, i64 %301)
  br label %307

303:                                              ; preds = %240
  %304 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %305 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %304, i32 0, i32 2
  %306 = load %struct.cryptodesc*, %struct.cryptodesc** %305, align 8
  store %struct.cryptodesc* %306, %struct.cryptodesc** %7, align 8
  br label %219

307:                                              ; preds = %284, %219
  br label %308

308:                                              ; preds = %307, %208
  %309 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %310 = call i32 @crypto_done(%struct.cryptop* %309)
  ret void
}

declare dso_local %struct.safe_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @safe_dma_sync(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_freem(i64) #1

declare dso_local i32 @crypto_copydata(i32, i64, i64, i32, i64) #1

declare dso_local i8* @bswap32(i8*) #1

declare dso_local i32 @crypto_copyback(i32, i64, i32, i32, i64) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
