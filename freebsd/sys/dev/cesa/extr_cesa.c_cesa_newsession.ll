; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, i32, i8*, i64, %struct.cryptoini* }
%struct.cesa_session = type { i32, i32, i32, i8*, i32, i32 }
%struct.cesa_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CESA_MAX_KEY_LEN = common dso_local global i32 0, align 4
@CESA_MAX_MKEY_LEN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CESA_CSHD_AES = common dso_local global i32 0, align 4
@CESA_CSHD_CBC = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CESA_CSHD_DES = common dso_local global i32 0, align 4
@DES_BLOCK_LEN = common dso_local global i32 0, align 4
@CESA_CSHD_3DES = common dso_local global i32 0, align 4
@CESA_CSHD_3DES_EDE = common dso_local global i32 0, align 4
@DES3_BLOCK_LEN = common dso_local global i32 0, align 4
@MD5_HASH_LEN = common dso_local global i8* null, align 8
@CESA_CSHD_MD5 = common dso_local global i32 0, align 4
@MD5_BLOCK_LEN = common dso_local global i32 0, align 4
@CESA_CSHD_MD5_HMAC = common dso_local global i32 0, align 4
@CESA_HMAC_TRUNC_LEN = common dso_local global i8* null, align 8
@CESA_CSHD_96_BIT_HMAC = common dso_local global i32 0, align 4
@SHA1_HASH_LEN = common dso_local global i8* null, align 8
@CESA_CSHD_SHA1 = common dso_local global i32 0, align 4
@SHA1_BLOCK_LEN = common dso_local global i32 0, align 4
@CESA_CSHD_SHA1_HMAC = common dso_local global i32 0, align 4
@SHA2_256_BLOCK_LEN = common dso_local global i32 0, align 4
@SHA2_256_HASH_LEN = common dso_local global i8* null, align 8
@CESA_CSHD_SHA2_256_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @cesa_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.cesa_session*, align 8
  %9 = alloca %struct.cesa_softc*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.cesa_softc* @device_get_softc(i32 %13)
  store %struct.cesa_softc* %14, %struct.cesa_softc** %9, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %16 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @cesa_is_hash(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %21, %struct.cryptoini** %11, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %23, %struct.cryptoini** %10, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %26 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %25, i32 0, i32 4
  %27 = load %struct.cryptoini*, %struct.cryptoini** %26, align 8
  store %struct.cryptoini* %27, %struct.cryptoini** %7, align 8
  %28 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %29 = icmp ne %struct.cryptoini* %28, null
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %32 = icmp ne %struct.cryptoini* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @cesa_is_hash(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %40, %struct.cryptoini** %10, align 8
  br label %41

41:                                               ; preds = %39, %33, %30
  %42 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %43 = icmp ne %struct.cryptoini* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %46 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @cesa_is_hash(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %51, %struct.cryptoini** %11, align 8
  br label %52

52:                                               ; preds = %50, %44, %41
  %53 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %54 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %53, i32 0, i32 4
  %55 = load %struct.cryptoini*, %struct.cryptoini** %54, align 8
  %56 = icmp ne %struct.cryptoini* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %59 = icmp ne %struct.cryptoini* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %62 = icmp ne %struct.cryptoini* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %57, %52
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %357

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %24
  %67 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %68 = icmp ne %struct.cryptoini* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %71 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 8
  %74 = load i32, i32* @CESA_MAX_KEY_LEN, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %69, %66
  %77 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %78 = icmp ne %struct.cryptoini* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %81 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 8
  %84 = load i32, i32* @CESA_MAX_MKEY_LEN, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %69
  %87 = load i32, i32* @E2BIG, align 4
  store i32 %87, i32* %4, align 4
  br label %357

88:                                               ; preds = %79, %76
  %89 = load i32, i32* %6, align 4
  %90 = call %struct.cesa_session* @crypto_get_driver_session(i32 %89)
  store %struct.cesa_session* %90, %struct.cesa_session** %8, align 8
  %91 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %92 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %94 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %96 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %98 = icmp ne %struct.cryptoini* %97, null
  br i1 %98, label %99, label %141

99:                                               ; preds = %88
  %100 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %101 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %138 [
    i32 134, label %103
    i32 133, label %114
    i32 135, label %125
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @CESA_CSHD_AES, align 4
  %105 = load i32, i32* @CESA_CSHD_CBC, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %108 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @AES_BLOCK_LEN, align 4
  %112 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %113 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %140

114:                                              ; preds = %99
  %115 = load i32, i32* @CESA_CSHD_DES, align 4
  %116 = load i32, i32* @CESA_CSHD_CBC, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %119 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* @DES_BLOCK_LEN, align 4
  %123 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %124 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %140

125:                                              ; preds = %99
  %126 = load i32, i32* @CESA_CSHD_3DES, align 4
  %127 = load i32, i32* @CESA_CSHD_3DES_EDE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @CESA_CSHD_CBC, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %132 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @DES3_BLOCK_LEN, align 4
  %136 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %137 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %140

138:                                              ; preds = %99
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %138, %125, %114, %103
  br label %141

141:                                              ; preds = %140, %88
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %291, label %144

144:                                              ; preds = %141
  %145 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %146 = icmp ne %struct.cryptoini* %145, null
  br i1 %146, label %147, label %291

147:                                              ; preds = %144
  %148 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %149 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %288 [
    i32 132, label %151
    i32 131, label %173
    i32 130, label %208
    i32 129, label %230
    i32 128, label %265
  ]

151:                                              ; preds = %147
  %152 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %153 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %152, i32 0, i32 2
  store i32 1, i32* %153, align 8
  %154 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %155 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i8*, i8** @MD5_HASH_LEN, align 8
  br label %164

160:                                              ; preds = %151
  %161 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %162 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  br label %164

164:                                              ; preds = %160, %158
  %165 = phi i8* [ %159, %158 ], [ %163, %160 ]
  %166 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %167 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @CESA_CSHD_MD5, align 4
  %169 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %170 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %290

173:                                              ; preds = %147
  %174 = load i32, i32* @MD5_BLOCK_LEN, align 4
  %175 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %176 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %178 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i8*, i8** @MD5_HASH_LEN, align 8
  br label %187

183:                                              ; preds = %173
  %184 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %185 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  br label %187

187:                                              ; preds = %183, %181
  %188 = phi i8* [ %182, %181 ], [ %186, %183 ]
  %189 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %190 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* @CESA_CSHD_MD5_HMAC, align 4
  %192 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %193 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %197 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** @CESA_HMAC_TRUNC_LEN, align 8
  %200 = icmp eq i8* %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %187
  %202 = load i32, i32* @CESA_CSHD_96_BIT_HMAC, align 4
  %203 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %204 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %187
  br label %290

208:                                              ; preds = %147
  %209 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %210 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %209, i32 0, i32 2
  store i32 1, i32* %210, align 8
  %211 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %212 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i8*, i8** @SHA1_HASH_LEN, align 8
  br label %221

217:                                              ; preds = %208
  %218 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %219 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  br label %221

221:                                              ; preds = %217, %215
  %222 = phi i8* [ %216, %215 ], [ %220, %217 ]
  %223 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %224 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* @CESA_CSHD_SHA1, align 4
  %226 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %227 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %290

230:                                              ; preds = %147
  %231 = load i32, i32* @SHA1_BLOCK_LEN, align 4
  %232 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %233 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %235 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = load i8*, i8** @SHA1_HASH_LEN, align 8
  br label %244

240:                                              ; preds = %230
  %241 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %242 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %241, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  br label %244

244:                                              ; preds = %240, %238
  %245 = phi i8* [ %239, %238 ], [ %243, %240 ]
  %246 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %247 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %246, i32 0, i32 3
  store i8* %245, i8** %247, align 8
  %248 = load i32, i32* @CESA_CSHD_SHA1_HMAC, align 4
  %249 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %250 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %254 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = load i8*, i8** @CESA_HMAC_TRUNC_LEN, align 8
  %257 = icmp eq i8* %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %244
  %259 = load i32, i32* @CESA_CSHD_96_BIT_HMAC, align 4
  %260 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %261 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %244
  br label %290

265:                                              ; preds = %147
  %266 = load i32, i32* @SHA2_256_BLOCK_LEN, align 4
  %267 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %268 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %270 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %265
  %274 = load i8*, i8** @SHA2_256_HASH_LEN, align 8
  br label %279

275:                                              ; preds = %265
  %276 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %277 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  br label %279

279:                                              ; preds = %275, %273
  %280 = phi i8* [ %274, %273 ], [ %278, %275 ]
  %281 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %282 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %281, i32 0, i32 3
  store i8* %280, i8** %282, align 8
  %283 = load i32, i32* @CESA_CSHD_SHA2_256_HMAC, align 4
  %284 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %285 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  br label %290

288:                                              ; preds = %147
  %289 = load i32, i32* @EINVAL, align 4
  store i32 %289, i32* %12, align 4
  br label %290

290:                                              ; preds = %288, %279, %264, %221, %207, %164
  br label %291

291:                                              ; preds = %290, %144, %141
  %292 = load i32, i32* %12, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %327, label %294

294:                                              ; preds = %291
  %295 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %296 = icmp ne %struct.cryptoini* %295, null
  br i1 %296, label %297, label %327

297:                                              ; preds = %294
  %298 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %299 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %327

302:                                              ; preds = %297
  %303 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %304 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = sdiv i32 %305, 8
  %307 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %308 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %307, i32 0, i32 4
  store i32 %306, i32* %308, align 8
  %309 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %310 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %313 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %316 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @memcpy(i32 %311, i64 %314, i32 %317)
  %319 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %320 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 134
  br i1 %322, label %323, label %326

323:                                              ; preds = %302
  %324 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %325 = call i32 @cesa_prep_aes_key(%struct.cesa_session* %324)
  store i32 %325, i32* %12, align 4
  br label %326

326:                                              ; preds = %323, %302
  br label %327

327:                                              ; preds = %326, %297, %294, %291
  %328 = load i32, i32* %12, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %351, label %330

330:                                              ; preds = %327
  %331 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %332 = icmp ne %struct.cryptoini* %331, null
  br i1 %332, label %333, label %351

333:                                              ; preds = %330
  %334 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %335 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %333
  %339 = load %struct.cesa_session*, %struct.cesa_session** %8, align 8
  %340 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %341 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %344 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %347 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sdiv i32 %348, 8
  %350 = call i32 @cesa_set_mkey(%struct.cesa_session* %339, i32 %342, i64 %345, i32 %349)
  store i32 %350, i32* %12, align 4
  br label %351

351:                                              ; preds = %338, %333, %330, %327
  %352 = load i32, i32* %12, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = load i32, i32* %12, align 4
  store i32 %355, i32* %4, align 4
  br label %357

356:                                              ; preds = %351
  store i32 0, i32* %4, align 4
  br label %357

357:                                              ; preds = %356, %354, %86, %63
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local %struct.cesa_softc* @device_get_softc(i32) #1

declare dso_local i64 @cesa_is_hash(i32) #1

declare dso_local %struct.cesa_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @cesa_prep_aes_key(%struct.cesa_session*) #1

declare dso_local i32 @cesa_set_mkey(%struct.cesa_session*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
