; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i32, i32, i32, i32, %struct.cryptodesc*, i32 }
%struct.ccr_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ccr_session = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRYPTO_AES_NIST_GCM_16 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@CRYPTO_AES_CCM_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @ccr_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccr_softc*, align 8
  %9 = alloca %struct.ccr_session*, align 8
  %10 = alloca %struct.cryptodesc*, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %15 = icmp eq %struct.cryptop* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %523

18:                                               ; preds = %3
  %19 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %20 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %19, i32 0, i32 2
  %21 = load %struct.cryptodesc*, %struct.cryptodesc** %20, align 8
  store %struct.cryptodesc* %21, %struct.cryptodesc** %10, align 8
  %22 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %23 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ccr_session* @crypto_get_driver_session(i32 %24)
  store %struct.ccr_session* %25, %struct.ccr_session** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.ccr_softc* @device_get_softc(i32 %26)
  store %struct.ccr_softc* %27, %struct.ccr_softc** %8, align 8
  %28 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %29 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %32 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %35 = call i32 @ccr_populate_sglist(i32 %33, %struct.cryptop* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %40 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %510

43:                                               ; preds = %18
  %44 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %45 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %492 [
    i32 129, label %47
    i32 128, label %60
    i32 135, label %100
    i32 136, label %156
    i32 130, label %277
    i32 134, label %401
  ]

47:                                               ; preds = %43
  %48 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %49 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %50 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %51 = call i32 @ccr_hash(%struct.ccr_softc* %48, %struct.ccr_session* %49, %struct.cryptop* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %56 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %47
  br label %492

60:                                               ; preds = %43
  %61 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %62 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %69 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %73 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %77 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %80 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %83 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @t4_init_hmac_digest(i32 %71, i32 %75, i32 %78, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %67, %60
  %88 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %89 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %90 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %91 = call i32 @ccr_hash(%struct.ccr_softc* %88, %struct.ccr_session* %89, %struct.cryptop* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %96 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %87
  br label %492

100:                                              ; preds = %43
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %102 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %100
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %109 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %112 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ccr_aes_check_keylen(i32 %110, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %492

118:                                              ; preds = %107
  %119 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %120 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %121 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %124 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %127 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ccr_aes_setkey(%struct.ccr_session* %119, i32 %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %118, %100
  %131 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %132 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %133 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %134 = call i32 @ccr_blkcipher(%struct.ccr_softc* %131, %struct.ccr_session* %132, %struct.cryptop* %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %130
  %138 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %139 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %146 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %154

149:                                              ; preds = %137
  %150 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %151 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154, %130
  br label %492

156:                                              ; preds = %43
  store i32 0, i32* %13, align 4
  %157 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %158 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %174 [
    i32 133, label %160
    i32 132, label %160
    i32 131, label %160
  ]

160:                                              ; preds = %156, %156, %156
  %161 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %161, %struct.cryptodesc** %12, align 8
  %162 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %163 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %162, i32 0, i32 4
  %164 = load %struct.cryptodesc*, %struct.cryptodesc** %163, align 8
  store %struct.cryptodesc* %164, %struct.cryptodesc** %11, align 8
  %165 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %166 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %160
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %13, align 4
  br label %188

173:                                              ; preds = %160
  br label %188

174:                                              ; preds = %156
  %175 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %175, %struct.cryptodesc** %11, align 8
  %176 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %177 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %176, i32 0, i32 4
  %178 = load %struct.cryptodesc*, %struct.cryptodesc** %177, align 8
  store %struct.cryptodesc* %178, %struct.cryptodesc** %12, align 8
  %179 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %180 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = load i32, i32* @EINVAL, align 4
  store i32 %186, i32* %13, align 4
  br label %188

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %185, %173, %171
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %492

192:                                              ; preds = %188
  %193 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %194 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %192
  %200 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %201 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %205 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %209 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %212 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %215 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @t4_init_hmac_digest(i32 %203, i32 %207, i32 %210, i32 %213, i32 %217)
  br label %219

219:                                              ; preds = %199, %192
  %220 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %221 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %249

226:                                              ; preds = %219
  %227 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %228 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %231 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @ccr_aes_check_keylen(i32 %229, i32 %232)
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  br label %492

237:                                              ; preds = %226
  %238 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %239 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %240 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %243 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %246 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ccr_aes_setkey(%struct.ccr_session* %238, i32 %241, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %237, %219
  %250 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %251 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %252 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %253 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %254 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %255 = call i32 @ccr_authenc(%struct.ccr_softc* %250, %struct.ccr_session* %251, %struct.cryptop* %252, %struct.cryptodesc* %253, %struct.cryptodesc* %254)
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %13, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %249
  %259 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %260 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %258
  %266 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %267 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  br label %275

270:                                              ; preds = %258
  %271 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %272 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %270, %265
  br label %276

276:                                              ; preds = %275, %249
  br label %492

277:                                              ; preds = %43
  store i32 0, i32* %13, align 4
  %278 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %279 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @CRYPTO_AES_NIST_GCM_16, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %277
  %284 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %284, %struct.cryptodesc** %12, align 8
  %285 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %286 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %285, i32 0, i32 4
  %287 = load %struct.cryptodesc*, %struct.cryptodesc** %286, align 8
  store %struct.cryptodesc* %287, %struct.cryptodesc** %11, align 8
  br label %293

288:                                              ; preds = %277
  %289 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %289, %struct.cryptodesc** %11, align 8
  %290 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %291 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %290, i32 0, i32 4
  %292 = load %struct.cryptodesc*, %struct.cryptodesc** %291, align 8
  store %struct.cryptodesc* %292, %struct.cryptodesc** %12, align 8
  br label %293

293:                                              ; preds = %288, %283
  %294 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %295 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %293
  %301 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %302 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %305 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %308 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @t4_init_gmac_hash(i32 %303, i32 %306, i32 %310)
  br label %312

312:                                              ; preds = %300, %293
  %313 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %314 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %342

319:                                              ; preds = %312
  %320 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %321 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %324 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @ccr_aes_check_keylen(i32 %322, i32 %325)
  store i32 %326, i32* %13, align 4
  %327 = load i32, i32* %13, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %319
  br label %492

330:                                              ; preds = %319
  %331 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %332 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %333 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %336 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %339 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @ccr_aes_setkey(%struct.ccr_session* %331, i32 %334, i32 %337, i32 %340)
  br label %342

342:                                              ; preds = %330, %312
  %343 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %344 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %342
  %348 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %349 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %348, i32 0, i32 0
  %350 = call i32 @mtx_unlock(i32* %349)
  %351 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %352 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %353 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %354 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %355 = call i32 @ccr_gcm_soft(%struct.ccr_session* %351, %struct.cryptop* %352, %struct.cryptodesc* %353, %struct.cryptodesc* %354)
  store i32 0, i32* %4, align 4
  br label %523

356:                                              ; preds = %342
  %357 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %358 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %359 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %360 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %361 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %362 = call i32 @ccr_gcm(%struct.ccr_softc* %357, %struct.ccr_session* %358, %struct.cryptop* %359, %struct.cryptodesc* %360, %struct.cryptodesc* %361)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %13, align 4
  %364 = load i32, i32* @EMSGSIZE, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %379

366:                                              ; preds = %356
  %367 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %368 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 4
  %371 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %372 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %371, i32 0, i32 0
  %373 = call i32 @mtx_unlock(i32* %372)
  %374 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %375 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %376 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %377 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %378 = call i32 @ccr_gcm_soft(%struct.ccr_session* %374, %struct.cryptop* %375, %struct.cryptodesc* %376, %struct.cryptodesc* %377)
  store i32 0, i32* %4, align 4
  br label %523

379:                                              ; preds = %356
  %380 = load i32, i32* %13, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %400

382:                                              ; preds = %379
  %383 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %384 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %382
  %390 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %391 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %390, i32 0, i32 7
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 4
  br label %399

394:                                              ; preds = %382
  %395 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %396 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %394, %389
  br label %400

400:                                              ; preds = %399, %379
  br label %492

401:                                              ; preds = %43
  store i32 0, i32* %13, align 4
  %402 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %403 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @CRYPTO_AES_CCM_16, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %401
  %408 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %408, %struct.cryptodesc** %12, align 8
  %409 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %410 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %409, i32 0, i32 4
  %411 = load %struct.cryptodesc*, %struct.cryptodesc** %410, align 8
  store %struct.cryptodesc* %411, %struct.cryptodesc** %11, align 8
  br label %417

412:                                              ; preds = %401
  %413 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %413, %struct.cryptodesc** %11, align 8
  %414 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %415 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %414, i32 0, i32 4
  %416 = load %struct.cryptodesc*, %struct.cryptodesc** %415, align 8
  store %struct.cryptodesc* %416, %struct.cryptodesc** %12, align 8
  br label %417

417:                                              ; preds = %412, %407
  %418 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %419 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %447

424:                                              ; preds = %417
  %425 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %426 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %429 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @ccr_aes_check_keylen(i32 %427, i32 %430)
  store i32 %431, i32* %13, align 4
  %432 = load i32, i32* %13, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %424
  br label %492

435:                                              ; preds = %424
  %436 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %437 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %438 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %441 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %444 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @ccr_aes_setkey(%struct.ccr_session* %436, i32 %439, i32 %442, i32 %445)
  br label %447

447:                                              ; preds = %435, %417
  %448 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %449 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %450 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %451 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %452 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %453 = call i32 @ccr_ccm(%struct.ccr_softc* %448, %struct.ccr_session* %449, %struct.cryptop* %450, %struct.cryptodesc* %451, %struct.cryptodesc* %452)
  store i32 %453, i32* %13, align 4
  %454 = load i32, i32* %13, align 4
  %455 = load i32, i32* @EMSGSIZE, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %470

457:                                              ; preds = %447
  %458 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %459 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %458, i32 0, i32 5
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 4
  %462 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %463 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %462, i32 0, i32 0
  %464 = call i32 @mtx_unlock(i32* %463)
  %465 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %466 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %467 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %468 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %469 = call i32 @ccr_ccm_soft(%struct.ccr_session* %465, %struct.cryptop* %466, %struct.cryptodesc* %467, %struct.cryptodesc* %468)
  store i32 0, i32* %4, align 4
  br label %523

470:                                              ; preds = %447
  %471 = load i32, i32* %13, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %491

473:                                              ; preds = %470
  %474 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %475 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %473
  %481 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %482 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %482, align 4
  br label %490

485:                                              ; preds = %473
  %486 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %487 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %487, align 4
  br label %490

490:                                              ; preds = %485, %480
  br label %491

491:                                              ; preds = %490, %470
  br label %492

492:                                              ; preds = %43, %491, %434, %400, %329, %276, %236, %191, %155, %117, %99, %59
  %493 = load i32, i32* %13, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %504

495:                                              ; preds = %492
  %496 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %497 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %497, align 4
  %500 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %501 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %501, align 4
  br label %509

504:                                              ; preds = %492
  %505 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %506 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %506, align 4
  br label %509

509:                                              ; preds = %504, %495
  br label %510

510:                                              ; preds = %509, %38
  %511 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %512 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %511, i32 0, i32 0
  %513 = call i32 @mtx_unlock(i32* %512)
  %514 = load i32, i32* %13, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %510
  %517 = load i32, i32* %13, align 4
  %518 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %519 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %518, i32 0, i32 0
  store i32 %517, i32* %519, align 8
  %520 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %521 = call i32 @crypto_done(%struct.cryptop* %520)
  br label %522

522:                                              ; preds = %516, %510
  store i32 0, i32* %4, align 4
  br label %523

523:                                              ; preds = %522, %457, %366, %347, %16
  %524 = load i32, i32* %4, align 4
  ret i32 %524
}

declare dso_local %struct.ccr_session* @crypto_get_driver_session(i32) #1

declare dso_local %struct.ccr_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ccr_populate_sglist(i32, %struct.cryptop*) #1

declare dso_local i32 @ccr_hash(%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*) #1

declare dso_local i32 @t4_init_hmac_digest(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccr_aes_check_keylen(i32, i32) #1

declare dso_local i32 @ccr_aes_setkey(%struct.ccr_session*, i32, i32, i32) #1

declare dso_local i32 @ccr_blkcipher(%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*) #1

declare dso_local i32 @ccr_authenc(%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*) #1

declare dso_local i32 @t4_init_gmac_hash(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ccr_gcm_soft(%struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*) #1

declare dso_local i32 @ccr_gcm(%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*) #1

declare dso_local i32 @ccr_ccm(%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*) #1

declare dso_local i32 @ccr_ccm_soft(%struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
