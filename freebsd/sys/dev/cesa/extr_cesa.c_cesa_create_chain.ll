; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_create_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_create_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i32 }
%struct.cesa_request = type { i32, %struct.TYPE_8__*, i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.cesa_chain_info = type { i32, i32, i64, %struct.TYPE_7__*, %struct.cesa_request*, %struct.cesa_softc* }
%struct.cesa_tdma_desc = type { i32 }
%struct.uio = type { i32 }
%struct.mbuf = type { i32 }

@sessions = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CESA_MAX_HASH_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CESA_CSHD_DECRYPT = common dso_local global i32 0, align 4
@CESA_CSHD_ENC = common dso_local global i32 0, align 4
@CESA_CSHD_MAC = common dso_local global i32 0, align 4
@CESA_CSHD_MAC_AND_ENC = common dso_local global i32 0, align 4
@CESA_CSHD_ENC_AND_MAC = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@cesa_create_chain_cb2 = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@cesa_create_chain_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cesa_softc*, %struct.cesa_request*)* @cesa_create_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_create_chain(%struct.cesa_softc* %0, %struct.cesa_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cesa_softc*, align 8
  %5 = alloca %struct.cesa_request*, align 8
  %6 = alloca %struct.cesa_chain_info, align 8
  %7 = alloca %struct.cesa_tdma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cesa_softc* %0, %struct.cesa_softc** %4, align 8
  store %struct.cesa_request* %1, %struct.cesa_request** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %11 = load i32, i32* @sessions, align 4
  %12 = call i32 @CESA_LOCK_ASSERT(%struct.cesa_softc* %10, i32 %11)
  %13 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %14 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %13, i32 0, i32 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %2
  %18 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %19 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %27 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %25
  %35 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %36 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %35, i32 0, i32 6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %41 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %46 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %45, i32 0, i32 5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %39, i32 %44, i32 %49)
  br label %68

51:                                               ; preds = %25, %17
  %52 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %53 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %52, i32 0, i32 6
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %58 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %57, i32 0, i32 5
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %63 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %62, i32 0, i32 5
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %56, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %51, %34
  br label %69

69:                                               ; preds = %68, %2
  %70 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %71 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %76 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %75, i32 0, i32 6
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %81 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %80, i32 0, i32 5
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CESA_MAX_HASH_LEN, align 4
  %86 = call i32 @memcpy(i32 %79, i32 %84, i32 %85)
  %87 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %88 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %87, i32 0, i32 6
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %93 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %92, i32 0, i32 5
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CESA_MAX_HASH_LEN, align 4
  %98 = call i32 @memcpy(i32 %91, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %74, %69
  %100 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %101 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %102 = call %struct.cesa_tdma_desc* @cesa_tdma_copyin_sa_data(%struct.cesa_softc* %100, %struct.cesa_request* %101)
  store %struct.cesa_tdma_desc* %102, %struct.cesa_tdma_desc** %7, align 8
  %103 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %7, align 8
  %104 = icmp ne %struct.cesa_tdma_desc* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %3, align 4
  br label %300

107:                                              ; preds = %99
  %108 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %109 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %7, align 8
  %110 = call i32 @cesa_append_tdesc(%struct.cesa_request* %108, %struct.cesa_tdma_desc* %109)
  %111 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %112 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %111, i32 0, i32 5
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %117 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %116, i32 0, i32 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = icmp ne %struct.TYPE_7__* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %107
  %121 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %122 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %121, i32 0, i32 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @CESA_CSHD_DECRYPT, align 4
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %120, %107
  %134 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %135 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %134, i32 0, i32 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = icmp ne %struct.TYPE_7__* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %140 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @CESA_CSHD_ENC, align 4
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %143, %138, %133
  %148 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %149 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %148, i32 0, i32 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = icmp ne %struct.TYPE_7__* %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %147
  %153 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %154 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @CESA_CSHD_MAC, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %157, %152, %147
  %162 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %163 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %162, i32 0, i32 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = icmp ne %struct.TYPE_7__* %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %161
  %167 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %168 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @CESA_CSHD_DECRYPT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @CESA_CSHD_MAC_AND_ENC, align 4
  br label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @CESA_CSHD_ENC_AND_MAC, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %180, %166, %161
  %185 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %186 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 5
  store %struct.cesa_softc* %185, %struct.cesa_softc** %186, align 8
  %187 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %188 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 4
  store %struct.cesa_request* %187, %struct.cesa_request** %188, align 8
  %189 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %190 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %189, i32 0, i32 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 3
  store %struct.TYPE_7__* %191, %struct.TYPE_7__** %192, align 8
  %193 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %194 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 2
  store i64 %195, i64* %196, align 8
  %197 = load i32, i32* %8, align 4
  %198 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 0
  store i32 %197, i32* %198, align 8
  %199 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 1
  store i32 0, i32* %199, align 4
  %200 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %201 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %200, i32 0, i32 1
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CRYPTO_F_IOV, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %184
  %209 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %210 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %213 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %216 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %215, i32 0, i32 1
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to %struct.uio*
  %221 = load i32, i32* @cesa_create_chain_cb2, align 4
  %222 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %223 = call i32 @bus_dmamap_load_uio(i32 %211, i32 %214, %struct.uio* %220, i32 %221, %struct.cesa_chain_info* %6, i32 %222)
  store i32 %223, i32* %9, align 4
  br label %270

224:                                              ; preds = %184
  %225 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %226 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %225, i32 0, i32 1
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %249

233:                                              ; preds = %224
  %234 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %235 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %238 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %241 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %240, i32 0, i32 1
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to %struct.mbuf*
  %246 = load i32, i32* @cesa_create_chain_cb2, align 4
  %247 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %248 = call i32 @bus_dmamap_load_mbuf(i32 %236, i32 %239, %struct.mbuf* %245, i32 %246, %struct.cesa_chain_info* %6, i32 %247)
  store i32 %248, i32* %9, align 4
  br label %269

249:                                              ; preds = %224
  %250 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %251 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %254 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %257 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %256, i32 0, i32 1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %262 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %261, i32 0, i32 1
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @cesa_create_chain_cb, align 4
  %267 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %268 = call i32 @bus_dmamap_load(i32 %252, i32 %255, i64 %260, i32 %265, i32 %266, %struct.cesa_chain_info* %6, i32 %267)
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %249, %233
  br label %270

270:                                              ; preds = %269, %208
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %275 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  br label %276

276:                                              ; preds = %273, %270
  %277 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.cesa_chain_info, %struct.cesa_chain_info* %6, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %9, align 4
  br label %283

283:                                              ; preds = %280, %276
  %284 = load i32, i32* %9, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* %3, align 4
  br label %300

288:                                              ; preds = %283
  %289 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %290 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %291 = call %struct.cesa_tdma_desc* @cesa_tdma_copyout_sa_data(%struct.cesa_softc* %289, %struct.cesa_request* %290)
  store %struct.cesa_tdma_desc* %291, %struct.cesa_tdma_desc** %7, align 8
  %292 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %7, align 8
  %293 = icmp ne %struct.cesa_tdma_desc* %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %288
  %295 = load i32, i32* @ENOMEM, align 4
  store i32 %295, i32* %3, align 4
  br label %300

296:                                              ; preds = %288
  %297 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %298 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %7, align 8
  %299 = call i32 @cesa_append_tdesc(%struct.cesa_request* %297, %struct.cesa_tdma_desc* %298)
  store i32 0, i32* %3, align 4
  br label %300

300:                                              ; preds = %296, %294, %286, %105
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i32 @CESA_LOCK_ASSERT(%struct.cesa_softc*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.cesa_tdma_desc* @cesa_tdma_copyin_sa_data(%struct.cesa_softc*, %struct.cesa_request*) #1

declare dso_local i32 @cesa_append_tdesc(%struct.cesa_request*, %struct.cesa_tdma_desc*) #1

declare dso_local i32 @bus_dmamap_load_uio(i32, i32, %struct.uio*, i32, %struct.cesa_chain_info*, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, %struct.mbuf*, i32, %struct.cesa_chain_info*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, %struct.cesa_chain_info*, i32) #1

declare dso_local %struct.cesa_tdma_desc* @cesa_tdma_copyout_sa_data(%struct.cesa_softc*, %struct.cesa_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
