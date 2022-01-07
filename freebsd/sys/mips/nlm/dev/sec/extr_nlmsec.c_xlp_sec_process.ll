; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_sec_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_sec_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, %struct.cryptodesc*, i32, i32* }
%struct.cryptodesc = type { i32, i64, i32, i32, i64, %struct.cryptodesc* }
%struct.xlp_sec_softc = type { i32 }
%struct.xlp_sec_command = type { i32, i32, %struct.cryptodesc*, i32, i32, i64, %struct.cryptodesc*, i32, i32, i64, i32, i32, %struct.xlp_sec_session*, %struct.cryptop* }
%struct.xlp_sec_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_3DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@CRYPTO_ARC4 = common dso_local global i64 0, align 8
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1 = common dso_local global i64 0, align 8
@CRYPTO_MD5 = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@creditleft = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @xlp_sec_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_sec_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xlp_sec_softc*, align 8
  %9 = alloca %struct.xlp_sec_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca %struct.cryptodesc*, align 8
  %14 = alloca %struct.xlp_sec_session*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.xlp_sec_softc* @device_get_softc(i32 %16)
  store %struct.xlp_sec_softc* %17, %struct.xlp_sec_softc** %8, align 8
  store %struct.xlp_sec_command* null, %struct.xlp_sec_command** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %19 = icmp eq %struct.cryptop* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %494

27:                                               ; preds = %20
  %28 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %29 = icmp eq %struct.xlp_sec_softc* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %10, align 4
  br label %474

32:                                               ; preds = %27
  %33 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %34 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.xlp_sec_session* @crypto_get_driver_session(i32 %35)
  store %struct.xlp_sec_session* %36, %struct.xlp_sec_session** %14, align 8
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.xlp_sec_command* @malloc(i32 80, i32 %37, i32 %40)
  store %struct.xlp_sec_command* %41, %struct.xlp_sec_command** %9, align 8
  %42 = icmp eq %struct.xlp_sec_command* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %10, align 4
  br label %474

45:                                               ; preds = %32
  %46 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %47 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %48 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %47, i32 0, i32 13
  store %struct.cryptop* %46, %struct.cryptop** %48, align 8
  %49 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %14, align 8
  %50 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %51 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %50, i32 0, i32 12
  store %struct.xlp_sec_session* %49, %struct.xlp_sec_session** %51, align 8
  %52 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %14, align 8
  %53 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %56 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %58 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %57, i32 0, i32 1
  %59 = load %struct.cryptodesc*, %struct.cryptodesc** %58, align 8
  store %struct.cryptodesc* %59, %struct.cryptodesc** %12, align 8
  %60 = icmp eq %struct.cryptodesc* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %10, align 4
  br label %474

63:                                               ; preds = %45
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %65 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %64, i32 0, i32 5
  %66 = load %struct.cryptodesc*, %struct.cryptodesc** %65, align 8
  store %struct.cryptodesc* %66, %struct.cryptodesc** %13, align 8
  %67 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %68 = call i32 @xlp_get_nsegs(%struct.cryptop* %67, i32* %15)
  store i32 %68, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %10, align 4
  br label %474

72:                                               ; preds = %63
  %73 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %74 = icmp ne %struct.cryptodesc* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %77 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %84 = icmp ne %struct.cryptodesc* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %87 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85, %75
  %93 = load i32, i32* %15, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %85, %82
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %98 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @xlp_alloc_cmd_params(%struct.xlp_sec_command* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %474

104:                                              ; preds = %95
  %105 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %106 = icmp ne %struct.cryptodesc* %105, null
  br i1 %106, label %107, label %271

107:                                              ; preds = %104
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %109 = icmp eq %struct.cryptodesc* %108, null
  br i1 %109, label %110, label %271

110:                                              ; preds = %107
  %111 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %112 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %134, label %116

116:                                              ; preds = %110
  %117 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %118 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %116
  %123 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %124 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %130 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CRYPTO_ARC4, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %207

134:                                              ; preds = %128, %122, %116, %110
  %135 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %136 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %137 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %136, i32 0, i32 2
  store %struct.cryptodesc* %135, %struct.cryptodesc** %137, align 8
  %138 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %139 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %138, i32 0, i32 6
  store %struct.cryptodesc* null, %struct.cryptodesc** %139, align 8
  %140 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %141 = call i32 @nlm_get_cipher_param(%struct.xlp_sec_command* %140)
  store i32 %141, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %10, align 4
  br label %474

145:                                              ; preds = %134
  %146 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %147 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %154 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %157 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  br label %166

158:                                              ; preds = %145
  %159 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %160 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %159, i32 0, i32 2
  %161 = load %struct.cryptodesc*, %struct.cryptodesc** %160, align 8
  %162 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %165 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %158, %152
  %167 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %168 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %167, i32 0, i32 2
  %169 = load %struct.cryptodesc*, %struct.cryptodesc** %168, align 8
  %170 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %173 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %175 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %166
  %181 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %182 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %181, i32 0, i32 9
  store i64 0, i64* %182, align 8
  br label %191

183:                                              ; preds = %166
  %184 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %185 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %184, i32 0, i32 2
  %186 = load %struct.cryptodesc*, %struct.cryptodesc** %185, align 8
  %187 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %190 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %189, i32 0, i32 9
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %183, %180
  %192 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %193 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %194 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %195 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %194, i32 0, i32 2
  %196 = load %struct.cryptodesc*, %struct.cryptodesc** %195, align 8
  %197 = call i32 @xlp_copyiv(%struct.xlp_sec_softc* %192, %struct.xlp_sec_command* %193, %struct.cryptodesc* %196)
  store i32 %197, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %474

200:                                              ; preds = %191
  %201 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %202 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %203 = call i32 @nlm_crypto_do_cipher(%struct.xlp_sec_softc* %201, %struct.xlp_sec_command* %202)
  store i32 %203, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %474

206:                                              ; preds = %200
  br label %270

207:                                              ; preds = %128
  %208 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %209 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %231, label %213

213:                                              ; preds = %207
  %214 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %215 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %231, label %219

219:                                              ; preds = %213
  %220 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %221 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CRYPTO_SHA1, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %227 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @CRYPTO_MD5, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %267

231:                                              ; preds = %225, %219, %213, %207
  %232 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %233 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %232, i32 0, i32 2
  store %struct.cryptodesc* null, %struct.cryptodesc** %233, align 8
  %234 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %235 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %236 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %235, i32 0, i32 6
  store %struct.cryptodesc* %234, %struct.cryptodesc** %236, align 8
  %237 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %238 = call i32 @nlm_get_digest_param(%struct.xlp_sec_command* %237)
  store i32 %238, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i32, i32* @EINVAL, align 4
  store i32 %241, i32* %10, align 4
  br label %474

242:                                              ; preds = %231
  %243 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %244 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %243, i32 0, i32 6
  %245 = load %struct.cryptodesc*, %struct.cryptodesc** %244, align 8
  %246 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %249 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %248, i32 0, i32 8
  store i32 %247, i32* %249, align 4
  %250 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %251 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %250, i32 0, i32 6
  %252 = load %struct.cryptodesc*, %struct.cryptodesc** %251, align 8
  %253 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %256 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %255, i32 0, i32 7
  store i32 %254, i32* %256, align 8
  %257 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %258 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %257, i32 0, i32 5
  store i64 0, i64* %258, align 8
  %259 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %260 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %259, i32 0, i32 1
  store i32 0, i32* %260, align 4
  %261 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %262 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %263 = call i32 @nlm_crypto_do_digest(%struct.xlp_sec_softc* %261, %struct.xlp_sec_command* %262)
  store i32 %263, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %242
  br label %474

266:                                              ; preds = %242
  br label %269

267:                                              ; preds = %225
  %268 = load i32, i32* @EINVAL, align 4
  store i32 %268, i32* %10, align 4
  br label %474

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %269, %206
  br label %473

271:                                              ; preds = %107, %104
  %272 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %273 = icmp ne %struct.cryptodesc* %272, null
  br i1 %273, label %274, label %470

274:                                              ; preds = %271
  %275 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %276 = icmp ne %struct.cryptodesc* %275, null
  br i1 %276, label %277, label %470

277:                                              ; preds = %274
  %278 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %279 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %301, label %283

283:                                              ; preds = %277
  %284 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %285 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %301, label %289

289:                                              ; preds = %283
  %290 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %291 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @CRYPTO_MD5, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %301, label %295

295:                                              ; preds = %289
  %296 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %297 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @CRYPTO_SHA1, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %332

301:                                              ; preds = %295, %289, %283, %277
  %302 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %303 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %325, label %307

307:                                              ; preds = %301
  %308 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %309 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %325, label %313

313:                                              ; preds = %307
  %314 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %315 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %325, label %319

319:                                              ; preds = %313
  %320 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %321 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @CRYPTO_ARC4, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %319, %313, %307, %301
  %326 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %327 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %328 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %327, i32 0, i32 6
  store %struct.cryptodesc* %326, %struct.cryptodesc** %328, align 8
  %329 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %330 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %331 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %330, i32 0, i32 2
  store %struct.cryptodesc* %329, %struct.cryptodesc** %331, align 8
  br label %390

332:                                              ; preds = %319, %295
  %333 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %334 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %356, label %338

338:                                              ; preds = %332
  %339 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %340 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @CRYPTO_ARC4, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %356, label %344

344:                                              ; preds = %338
  %345 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %346 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %356, label %350

350:                                              ; preds = %344
  %351 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %352 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %387

356:                                              ; preds = %350, %344, %338, %332
  %357 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %358 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %380, label %362

362:                                              ; preds = %356
  %363 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %364 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %380, label %368

368:                                              ; preds = %362
  %369 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %370 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @CRYPTO_MD5, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %380, label %374

374:                                              ; preds = %368
  %375 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %376 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @CRYPTO_SHA1, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %374, %368, %362, %356
  %381 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %382 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %383 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %382, i32 0, i32 2
  store %struct.cryptodesc* %381, %struct.cryptodesc** %383, align 8
  %384 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %385 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %386 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %385, i32 0, i32 6
  store %struct.cryptodesc* %384, %struct.cryptodesc** %386, align 8
  br label %389

387:                                              ; preds = %374, %350
  %388 = load i32, i32* @EINVAL, align 4
  store i32 %388, i32* %10, align 4
  br label %474

389:                                              ; preds = %380
  br label %390

390:                                              ; preds = %389, %325
  %391 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %392 = call i32 @nlm_get_cipher_param(%struct.xlp_sec_command* %391)
  store i32 %392, i32* %11, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %390
  %395 = load i32, i32* @EINVAL, align 4
  store i32 %395, i32* %10, align 4
  br label %474

396:                                              ; preds = %390
  %397 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %398 = call i32 @nlm_get_digest_param(%struct.xlp_sec_command* %397)
  store i32 %398, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %396
  %401 = load i32, i32* @EINVAL, align 4
  store i32 %401, i32* %10, align 4
  br label %474

402:                                              ; preds = %396
  %403 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %404 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %403, i32 0, i32 2
  %405 = load %struct.cryptodesc*, %struct.cryptodesc** %404, align 8
  %406 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %405, i32 0, i32 4
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %409 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %408, i32 0, i32 9
  store i64 %407, i64* %409, align 8
  %410 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %411 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %410, i32 0, i32 6
  %412 = load %struct.cryptodesc*, %struct.cryptodesc** %411, align 8
  %413 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %416 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %415, i32 0, i32 8
  store i32 %414, i32* %416, align 4
  %417 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %418 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %417, i32 0, i32 6
  %419 = load %struct.cryptodesc*, %struct.cryptodesc** %418, align 8
  %420 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %423 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %422, i32 0, i32 7
  store i32 %421, i32* %423, align 8
  %424 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %425 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %424, i32 0, i32 5
  store i64 0, i64* %425, align 8
  %426 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %427 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %426, i32 0, i32 2
  %428 = load %struct.cryptodesc*, %struct.cryptodesc** %427, align 8
  %429 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %402
  %435 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %436 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %435, i32 0, i32 1
  store i32 1, i32* %436, align 4
  br label %440

437:                                              ; preds = %402
  %438 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %439 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %438, i32 0, i32 1
  store i32 0, i32* %439, align 4
  br label %440

440:                                              ; preds = %437, %434
  %441 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %442 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %441, i32 0, i32 2
  %443 = load %struct.cryptodesc*, %struct.cryptodesc** %442, align 8
  %444 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %447 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %446, i32 0, i32 4
  store i32 %445, i32* %447, align 4
  %448 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %449 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %448, i32 0, i32 2
  %450 = load %struct.cryptodesc*, %struct.cryptodesc** %449, align 8
  %451 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %454 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %453, i32 0, i32 3
  store i32 %452, i32* %454, align 8
  %455 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %456 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %457 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %458 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %457, i32 0, i32 2
  %459 = load %struct.cryptodesc*, %struct.cryptodesc** %458, align 8
  %460 = call i32 @xlp_copyiv(%struct.xlp_sec_softc* %455, %struct.xlp_sec_command* %456, %struct.cryptodesc* %459)
  store i32 %460, i32* %10, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %440
  br label %474

463:                                              ; preds = %440
  %464 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %465 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %466 = call i32 @nlm_crypto_do_cipher_digest(%struct.xlp_sec_softc* %464, %struct.xlp_sec_command* %465)
  store i32 %466, i32* %10, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %463
  br label %474

469:                                              ; preds = %463
  br label %472

470:                                              ; preds = %274, %271
  %471 = load i32, i32* @EINVAL, align 4
  store i32 %471, i32* %10, align 4
  br label %474

472:                                              ; preds = %469
  br label %473

473:                                              ; preds = %472, %270
  store i32 0, i32* %4, align 4
  br label %494

474:                                              ; preds = %470, %468, %462, %400, %394, %387, %267, %265, %240, %205, %199, %143, %103, %70, %61, %43, %30
  %475 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %476 = call i32 @xlp_free_cmd_params(%struct.xlp_sec_command* %475)
  %477 = load i32, i32* %10, align 4
  %478 = load i32, i32* @ERESTART, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %487

480:                                              ; preds = %474
  %481 = load i32, i32* @CRYPTO_SYMQ, align 4
  %482 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %8, align 8
  %483 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = or i32 %484, %481
  store i32 %485, i32* %483, align 4
  store i64 0, i64* @creditleft, align 8
  %486 = load i32, i32* %10, align 4
  store i32 %486, i32* %4, align 4
  br label %494

487:                                              ; preds = %474
  %488 = load i32, i32* %10, align 4
  %489 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %490 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %489, i32 0, i32 0
  store i32 %488, i32* %490, align 8
  %491 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %492 = call i32 @crypto_done(%struct.cryptop* %491)
  %493 = load i32, i32* %10, align 4
  store i32 %493, i32* %4, align 4
  br label %494

494:                                              ; preds = %487, %480, %473, %25
  %495 = load i32, i32* %4, align 4
  ret i32 %495
}

declare dso_local %struct.xlp_sec_softc* @device_get_softc(i32) #1

declare dso_local %struct.xlp_sec_session* @crypto_get_driver_session(i32) #1

declare dso_local %struct.xlp_sec_command* @malloc(i32, i32, i32) #1

declare dso_local i32 @xlp_get_nsegs(%struct.cryptop*, i32*) #1

declare dso_local i32 @xlp_alloc_cmd_params(%struct.xlp_sec_command*, i32) #1

declare dso_local i32 @nlm_get_cipher_param(%struct.xlp_sec_command*) #1

declare dso_local i32 @xlp_copyiv(%struct.xlp_sec_softc*, %struct.xlp_sec_command*, %struct.cryptodesc*) #1

declare dso_local i32 @nlm_crypto_do_cipher(%struct.xlp_sec_softc*, %struct.xlp_sec_command*) #1

declare dso_local i32 @nlm_get_digest_param(%struct.xlp_sec_command*) #1

declare dso_local i32 @nlm_crypto_do_digest(%struct.xlp_sec_softc*, %struct.xlp_sec_command*) #1

declare dso_local i32 @nlm_crypto_do_cipher_digest(%struct.xlp_sec_softc*, %struct.xlp_sec_command*) #1

declare dso_local i32 @xlp_free_cmd_params(%struct.xlp_sec_command*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
