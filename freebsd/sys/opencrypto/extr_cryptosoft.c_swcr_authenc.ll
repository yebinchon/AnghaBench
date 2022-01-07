; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_authenc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_authenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, %struct.cryptodesc*, i32, i32 }
%struct.cryptodesc = type { i64, i32, i64, i32, i64, i64, i32, %struct.cryptodesc* }
%union.authctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.swcr_session = type { %struct.swcr_data* }
%struct.swcr_data = type { i64, i32, i32, %struct.auth_hash*, %struct.enc_xform* }
%struct.auth_hash = type { i32, i32, i32, i32 (%union.authctx*, %union.authctx*)*, i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)* }
%struct.enc_xform = type { i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*, i32)*, i32 (i32, %union.authctx*)* }

@EALG_MAX_BLOCK_LEN = common dso_local global i32 0, align 4
@AALG_MAX_RESULT_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AES_CCM_IV_LEN = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"assume CCM is single-block only\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"AES-CCM reinit function must be set\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @swcr_authenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swcr_authenc(%struct.cryptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.authctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.authctx, align 4
  %11 = alloca %struct.swcr_session*, align 8
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca %struct.cryptodesc*, align 8
  %14 = alloca %struct.cryptodesc*, align 8
  %15 = alloca %struct.swcr_data*, align 8
  %16 = alloca %struct.swcr_data*, align 8
  %17 = alloca %struct.swcr_data*, align 8
  %18 = alloca %struct.auth_hash*, align 8
  %19 = alloca %struct.enc_xform*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  %32 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %33 = call i32 @howmany(i32 %32, i32 4)
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %4, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %5, align 8
  %37 = bitcast i32* %36 to %union.authctx*
  store %union.authctx* %37, %union.authctx** %6, align 8
  %38 = load i32, i32* @AALG_MAX_RESULT_LEN, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca %union.authctx, i64 %39, align 16
  store i64 %39, i64* %7, align 8
  %41 = load i32, i32* @AALG_MAX_RESULT_LEN, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca %union.authctx, i64 %42, align 16
  store i64 %42, i64* %8, align 8
  %44 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca %union.authctx, i64 %45, align 16
  store i64 %45, i64* %9, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %13, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %14, align 8
  store %struct.swcr_data* null, %struct.swcr_data** %17, align 8
  store %struct.auth_hash* null, %struct.auth_hash** %18, align 8
  store %struct.enc_xform* null, %struct.enc_xform** %19, align 8
  %47 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %48 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %20, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %50 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %51 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.swcr_session* @crypto_get_driver_session(i32 %52)
  store %struct.swcr_session* %53, %struct.swcr_session** %11, align 8
  %54 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %55 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %54, i32 0, i32 1
  %56 = load %struct.cryptodesc*, %struct.cryptodesc** %55, align 8
  store %struct.cryptodesc* %56, %struct.cryptodesc** %12, align 8
  br label %57

57:                                               ; preds = %140, %1
  %58 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %59 = icmp ne %struct.cryptodesc* %58, null
  br i1 %59, label %60, label %144

60:                                               ; preds = %57
  store i32 0, i32* %24, align 4
  br label %61

61:                                               ; preds = %84, %60
  %62 = load i32, i32* %24, align 4
  %63 = load %struct.swcr_session*, %struct.swcr_session** %11, align 8
  %64 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %63, i32 0, i32 0
  %65 = load %struct.swcr_data*, %struct.swcr_data** %64, align 8
  %66 = call i32 @nitems(%struct.swcr_data* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.swcr_session*, %struct.swcr_session** %11, align 8
  %70 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %69, i32 0, i32 0
  %71 = load %struct.swcr_data*, %struct.swcr_data** %70, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %71, i64 %73
  %75 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %78 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br label %81

81:                                               ; preds = %68, %61
  %82 = phi i1 [ false, %61 ], [ %80, %68 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %24, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %24, align 4
  br label %61

87:                                               ; preds = %81
  %88 = load i32, i32* %24, align 4
  %89 = load %struct.swcr_session*, %struct.swcr_session** %11, align 8
  %90 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %89, i32 0, i32 0
  %91 = load %struct.swcr_data*, %struct.swcr_data** %90, align 8
  %92 = call i32 @nitems(%struct.swcr_data* %91)
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

96:                                               ; preds = %87
  %97 = load %struct.swcr_session*, %struct.swcr_session** %11, align 8
  %98 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %97, i32 0, i32 0
  %99 = load %struct.swcr_data*, %struct.swcr_data** %98, align 8
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %99, i64 %101
  store %struct.swcr_data* %102, %struct.swcr_data** %15, align 8
  %103 = load %struct.swcr_data*, %struct.swcr_data** %15, align 8
  %104 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  switch i64 %105, label %137 [
    i64 131, label %106
    i64 129, label %106
    i64 128, label %106
    i64 130, label %113
    i64 134, label %114
    i64 133, label %114
    i64 132, label %114
  ]

106:                                              ; preds = %96, %96, %96
  %107 = load %struct.swcr_data*, %struct.swcr_data** %15, align 8
  store %struct.swcr_data* %107, %struct.swcr_data** %17, align 8
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %108, %struct.cryptodesc** %14, align 8
  %109 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %110 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %109, i32 0, i32 4
  %111 = load %struct.enc_xform*, %struct.enc_xform** %110, align 8
  store %struct.enc_xform* %111, %struct.enc_xform** %19, align 8
  %112 = load i32, i32* @AES_CCM_IV_LEN, align 4
  store i32 %112, i32* %25, align 4
  br label %139

113:                                              ; preds = %96
  store i32 1, i32* %30, align 4
  br label %114

114:                                              ; preds = %96, %96, %96, %113
  %115 = load %struct.swcr_data*, %struct.swcr_data** %15, align 8
  store %struct.swcr_data* %115, %struct.swcr_data** %16, align 8
  %116 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %116, %struct.cryptodesc** %13, align 8
  %117 = load %struct.swcr_data*, %struct.swcr_data** %16, align 8
  %118 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %117, i32 0, i32 3
  %119 = load %struct.auth_hash*, %struct.auth_hash** %118, align 8
  store %struct.auth_hash* %119, %struct.auth_hash** %18, align 8
  %120 = load %struct.swcr_data*, %struct.swcr_data** %16, align 8
  %121 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

126:                                              ; preds = %114
  %127 = load %struct.swcr_data*, %struct.swcr_data** %16, align 8
  %128 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %131 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @bcopy(i32 %129, %union.authctx* %10, i32 %132)
  %134 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %135 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %23, align 4
  br label %139

137:                                              ; preds = %96
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

139:                                              ; preds = %126, %106
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %142 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %141, i32 0, i32 7
  %143 = load %struct.cryptodesc*, %struct.cryptodesc** %142, align 8
  store %struct.cryptodesc* %143, %struct.cryptodesc** %12, align 8
  br label %57

144:                                              ; preds = %57
  %145 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %146 = icmp eq %struct.cryptodesc* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %149 = icmp eq %struct.cryptodesc* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %147, %144
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

152:                                              ; preds = %147
  %153 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %154 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 129
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %159 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  switch i64 %160, label %162 [
    i64 134, label %161
    i64 133, label %161
    i64 132, label %161
  ]

161:                                              ; preds = %157, %157, %157
  br label %164

162:                                              ; preds = %157
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

164:                                              ; preds = %161
  br label %178

165:                                              ; preds = %152
  %166 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %167 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 131
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %172 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 130
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

177:                                              ; preds = %170, %165
  br label %178

178:                                              ; preds = %177, %164
  %179 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %180 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 129
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %185 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 131
  br i1 %187, label %188, label %197

188:                                              ; preds = %183, %178
  %189 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %190 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* @EINVAL, align 4
  store i32 %196, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

197:                                              ; preds = %188, %183
  %198 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %199 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %202 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %200, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* @EINVAL, align 4
  store i32 %206, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

207:                                              ; preds = %197
  %208 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %209 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %248

214:                                              ; preds = %207
  %215 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %216 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %223 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %25, align 4
  %226 = call i32 @bcopy(i32 %224, %union.authctx* %46, i32 %225)
  br label %230

227:                                              ; preds = %214
  %228 = load i32, i32* %25, align 4
  %229 = call i32 @arc4rand(%union.authctx* %46, i32 %228, i32 0)
  br label %230

230:                                              ; preds = %227, %221
  %231 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %232 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %247, label %237

237:                                              ; preds = %230
  %238 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %239 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %20, align 4
  %242 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %243 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %25, align 4
  %246 = call i32 @crypto_copyback(i32 %240, i32 %241, i64 %244, i32 %245, %union.authctx* %46)
  br label %247

247:                                              ; preds = %237, %230
  br label %272

248:                                              ; preds = %207
  %249 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %250 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %257 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %25, align 4
  %260 = call i32 @bcopy(i32 %258, %union.authctx* %46, i32 %259)
  br label %271

261:                                              ; preds = %248
  %262 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %263 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %267 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %25, align 4
  %270 = call i32 @crypto_copydata(i32 %264, i32 %265, i64 %268, i32 %269, %union.authctx* %46)
  br label %271

271:                                              ; preds = %261, %255
  br label %272

272:                                              ; preds = %271, %247
  %273 = load %struct.swcr_data*, %struct.swcr_data** %16, align 8
  %274 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %275, 130
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %279 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = bitcast %union.authctx* %10 to %struct.TYPE_2__*
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 4
  %283 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %284 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = bitcast %union.authctx* %10 to %struct.TYPE_2__*
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %277, %272
  %289 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %290 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %289, i32 0, i32 5
  %291 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %290, align 8
  %292 = icmp ne i32 (%union.authctx*, %union.authctx*, i32)* %291, null
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %295 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %294, i32 0, i32 5
  %296 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %295, align 8
  %297 = load i32, i32* %25, align 4
  %298 = call i32 %296(%union.authctx* %10, %union.authctx* %46, i32 %297)
  br label %299

299:                                              ; preds = %293, %288
  %300 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %301 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  store i32 %302, i32* %22, align 4
  %303 = load i32, i32* %27, align 4
  store i32 %303, i32* %24, align 4
  br label %304

304:                                              ; preds = %355, %299
  %305 = load i32, i32* %24, align 4
  %306 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %307 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %359

310:                                              ; preds = %304
  %311 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %312 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %24, align 4
  %315 = sub nsw i32 %313, %314
  %316 = load i32, i32* %23, align 4
  %317 = load i32, i32* %28, align 4
  %318 = sub nsw i32 %316, %317
  %319 = call i32 @MIN(i32 %315, i32 %318)
  store i32 %319, i32* %26, align 4
  %320 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %321 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %20, align 4
  %324 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %325 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %324, i32 0, i32 5
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* %24, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %326, %328
  %330 = load i32, i32* %26, align 4
  %331 = load %union.authctx*, %union.authctx** %6, align 8
  %332 = load i32, i32* %28, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %union.authctx, %union.authctx* %331, i64 %333
  %335 = call i32 @crypto_copydata(i32 %322, i32 %323, i64 %329, i32 %330, %union.authctx* %334)
  %336 = load %union.authctx*, %union.authctx** %6, align 8
  %337 = load i32, i32* %26, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %union.authctx, %union.authctx* %336, i64 %338
  %340 = load i32, i32* %28, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %union.authctx, %union.authctx* %339, i64 %341
  %343 = load i32, i32* %23, align 4
  %344 = load i32, i32* %26, align 4
  %345 = sub nsw i32 %343, %344
  %346 = load i32, i32* %28, align 4
  %347 = sub nsw i32 %345, %346
  %348 = call i32 @bzero(%union.authctx* %342, i32 %347)
  %349 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %350 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %349, i32 0, i32 4
  %351 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %350, align 8
  %352 = load %union.authctx*, %union.authctx** %6, align 8
  %353 = load i32, i32* %23, align 4
  %354 = call i32 %351(%union.authctx* %10, %union.authctx* %352, i32 %353)
  store i32 0, i32* %28, align 4
  br label %355

355:                                              ; preds = %310
  %356 = load i32, i32* %23, align 4
  %357 = load i32, i32* %24, align 4
  %358 = add nsw i32 %357, %356
  store i32 %358, i32* %24, align 4
  br label %304

359:                                              ; preds = %304
  %360 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %361 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %360, i32 0, i32 1
  %362 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %361, align 8
  %363 = icmp ne i32 (i32, %union.authctx*)* %362, null
  br i1 %363, label %364, label %372

364:                                              ; preds = %359
  %365 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %366 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %365, i32 0, i32 1
  %367 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %366, align 8
  %368 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %369 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = call i32 %367(i32 %370, %union.authctx* %46)
  br label %372

372:                                              ; preds = %364, %359
  store i32 0, i32* %24, align 4
  br label %373

373:                                              ; preds = %523, %372
  %374 = load i32, i32* %24, align 4
  %375 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %376 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %527

379:                                              ; preds = %373
  %380 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %381 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %380, i32 0, i32 2
  %382 = load i32 (i32, %union.authctx*, i32)*, i32 (i32, %union.authctx*, i32)** %381, align 8
  %383 = icmp ne i32 (i32, %union.authctx*, i32)* %382, null
  br i1 %383, label %384, label %402

384:                                              ; preds = %379
  %385 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %386 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* %24, align 4
  %389 = sub nsw i32 %387, %388
  %390 = load i32, i32* %23, align 4
  %391 = call i32 @rounddown(i32 %389, i32 %390)
  store i32 %391, i32* %26, align 4
  %392 = load i32, i32* %26, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %384
  %395 = load i32, i32* %23, align 4
  store i32 %395, i32* %26, align 4
  br label %401

396:                                              ; preds = %384
  %397 = load i32, i32* %26, align 4
  %398 = mul nuw i64 4, %34
  %399 = trunc i64 %398 to i32
  %400 = call i32 @MIN(i32 %397, i32 %399)
  store i32 %400, i32* %26, align 4
  br label %401

401:                                              ; preds = %396, %394
  br label %404

402:                                              ; preds = %379
  %403 = load i32, i32* %23, align 4
  store i32 %403, i32* %26, align 4
  br label %404

404:                                              ; preds = %402, %401
  %405 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %406 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %24, align 4
  %409 = sub nsw i32 %407, %408
  %410 = load i32, i32* %26, align 4
  %411 = call i32 @MIN(i32 %409, i32 %410)
  store i32 %411, i32* %26, align 4
  %412 = load i32, i32* %26, align 4
  %413 = load i32, i32* %23, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %404
  %416 = load %union.authctx*, %union.authctx** %6, align 8
  %417 = load i32, i32* %23, align 4
  %418 = call i32 @bzero(%union.authctx* %416, i32 %417)
  br label %419

419:                                              ; preds = %415, %404
  %420 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %421 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %20, align 4
  %424 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %425 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* %24, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %426, %428
  %430 = load i32, i32* %26, align 4
  %431 = load %union.authctx*, %union.authctx** %6, align 8
  %432 = call i32 @crypto_copydata(i32 %422, i32 %423, i64 %429, i32 %430, %union.authctx* %431)
  %433 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %434 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %497

439:                                              ; preds = %419
  %440 = load i32, i32* %30, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %444 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %443, i32 0, i32 4
  %445 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %444, align 8
  %446 = load %union.authctx*, %union.authctx** %6, align 8
  %447 = load i32, i32* %26, align 4
  %448 = call i32 %445(%union.authctx* %10, %union.authctx* %446, i32 %447)
  br label %449

449:                                              ; preds = %442, %439
  %450 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %451 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %450, i32 0, i32 2
  %452 = load i32 (i32, %union.authctx*, i32)*, i32 (i32, %union.authctx*, i32)** %451, align 8
  %453 = icmp ne i32 (i32, %union.authctx*, i32)* %452, null
  br i1 %453, label %454, label %464

454:                                              ; preds = %449
  %455 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %456 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %455, i32 0, i32 2
  %457 = load i32 (i32, %union.authctx*, i32)*, i32 (i32, %union.authctx*, i32)** %456, align 8
  %458 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %459 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = load %union.authctx*, %union.authctx** %6, align 8
  %462 = load i32, i32* %26, align 4
  %463 = call i32 %457(i32 %460, %union.authctx* %461, i32 %462)
  br label %473

464:                                              ; preds = %449
  %465 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %466 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %465, i32 0, i32 3
  %467 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %466, align 8
  %468 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %469 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = load %union.authctx*, %union.authctx** %6, align 8
  %472 = call i32 %467(i32 %470, %union.authctx* %471)
  br label %473

473:                                              ; preds = %464, %454
  %474 = load i32, i32* %30, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %473
  %477 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %478 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %477, i32 0, i32 4
  %479 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %478, align 8
  %480 = load %union.authctx*, %union.authctx** %6, align 8
  %481 = load i32, i32* %26, align 4
  %482 = call i32 %479(%union.authctx* %10, %union.authctx* %480, i32 %481)
  br label %483

483:                                              ; preds = %476, %473
  %484 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %485 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* %20, align 4
  %488 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %489 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = load i32, i32* %24, align 4
  %492 = sext i32 %491 to i64
  %493 = add nsw i64 %490, %492
  %494 = load i32, i32* %26, align 4
  %495 = load %union.authctx*, %union.authctx** %6, align 8
  %496 = call i32 @crypto_copyback(i32 %486, i32 %487, i64 %493, i32 %494, %union.authctx* %495)
  br label %522

497:                                              ; preds = %419
  %498 = load i32, i32* %30, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %515

500:                                              ; preds = %497
  %501 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %502 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %501, i32 0, i32 2
  %503 = load i32 (i32, %union.authctx*, i32)*, i32 (i32, %union.authctx*, i32)** %502, align 8
  %504 = icmp eq i32 (i32, %union.authctx*, i32)* %503, null
  %505 = zext i1 %504 to i32
  %506 = call i32 @KASSERT(i32 %505, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %507 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %508 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %507, i32 0, i32 0
  %509 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %508, align 8
  %510 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %511 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 8
  %513 = load %union.authctx*, %union.authctx** %6, align 8
  %514 = call i32 %509(i32 %512, %union.authctx* %513)
  br label %515

515:                                              ; preds = %500, %497
  %516 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %517 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %516, i32 0, i32 4
  %518 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %517, align 8
  %519 = load %union.authctx*, %union.authctx** %6, align 8
  %520 = load i32, i32* %26, align 4
  %521 = call i32 %518(%union.authctx* %10, %union.authctx* %519, i32 %520)
  br label %522

522:                                              ; preds = %515, %483
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %26, align 4
  %525 = load i32, i32* %24, align 4
  %526 = add nsw i32 %525, %524
  store i32 %526, i32* %24, align 4
  br label %373

527:                                              ; preds = %373
  %528 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %529 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  switch i64 %530, label %557 [
    i64 134, label %531
    i64 133, label %531
    i64 132, label %531
  ]

531:                                              ; preds = %527, %527, %527
  %532 = load %union.authctx*, %union.authctx** %6, align 8
  %533 = load i32, i32* %23, align 4
  %534 = call i32 @bzero(%union.authctx* %532, i32 %533)
  %535 = load %union.authctx*, %union.authctx** %6, align 8
  %536 = bitcast %union.authctx* %535 to i32*
  %537 = getelementptr inbounds i32, i32* %536, i64 1
  store i32* %537, i32** %21, align 8
  %538 = load i32, i32* %22, align 4
  %539 = mul nsw i32 %538, 8
  %540 = call i32 @htobe32(i32 %539)
  %541 = load i32*, i32** %21, align 8
  store i32 %540, i32* %541, align 4
  %542 = load %union.authctx*, %union.authctx** %6, align 8
  %543 = bitcast %union.authctx* %542 to i32*
  %544 = getelementptr inbounds i32, i32* %543, i64 3
  store i32* %544, i32** %21, align 8
  %545 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %546 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = mul nsw i32 %547, 8
  %549 = call i32 @htobe32(i32 %548)
  %550 = load i32*, i32** %21, align 8
  store i32 %549, i32* %550, align 4
  %551 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %552 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %551, i32 0, i32 4
  %553 = load i32 (%union.authctx*, %union.authctx*, i32)*, i32 (%union.authctx*, %union.authctx*, i32)** %552, align 8
  %554 = load %union.authctx*, %union.authctx** %6, align 8
  %555 = load i32, i32* %23, align 4
  %556 = call i32 %553(%union.authctx* %10, %union.authctx* %554, i32 %555)
  br label %557

557:                                              ; preds = %527, %531
  %558 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %559 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %558, i32 0, i32 3
  %560 = load i32 (%union.authctx*, %union.authctx*)*, i32 (%union.authctx*, %union.authctx*)** %559, align 8
  %561 = call i32 %560(%union.authctx* %40, %union.authctx* %10)
  %562 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %563 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 8
  %565 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %566 = and i32 %564, %565
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %668, label %568

568:                                              ; preds = %557
  %569 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %570 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = load i32, i32* %20, align 4
  %573 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %574 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %573, i32 0, i32 4
  %575 = load i64, i64* %574, align 8
  %576 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %577 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = call i32 @crypto_copydata(i32 %571, i32 %572, i64 %575, i32 %578, %union.authctx* %43)
  %580 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %581 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = call i32 @timingsafe_bcmp(%union.authctx* %40, %union.authctx* %43, i32 %582)
  store i32 %583, i32* %29, align 4
  %584 = load i32, i32* %29, align 4
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %665

586:                                              ; preds = %568
  %587 = load i32, i32* %30, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %603

589:                                              ; preds = %586
  %590 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %591 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %590, i32 0, i32 1
  %592 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %591, align 8
  %593 = icmp ne i32 (i32, %union.authctx*)* %592, null
  %594 = zext i1 %593 to i32
  %595 = call i32 @KASSERT(i32 %594, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %596 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %597 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %596, i32 0, i32 1
  %598 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %597, align 8
  %599 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %600 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = call i32 %598(i32 %601, %union.authctx* %46)
  br label %603

603:                                              ; preds = %589, %586
  store i32 0, i32* %24, align 4
  br label %604

604:                                              ; preds = %660, %603
  %605 = load i32, i32* %24, align 4
  %606 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %607 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 8
  %609 = icmp slt i32 %605, %608
  br i1 %609, label %610, label %664

610:                                              ; preds = %604
  %611 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %612 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* %24, align 4
  %615 = sub nsw i32 %613, %614
  %616 = load i32, i32* %23, align 4
  %617 = call i32 @MIN(i32 %615, i32 %616)
  store i32 %617, i32* %26, align 4
  %618 = load i32, i32* %26, align 4
  %619 = load i32, i32* %23, align 4
  %620 = icmp slt i32 %618, %619
  br i1 %620, label %621, label %625

621:                                              ; preds = %610
  %622 = load %union.authctx*, %union.authctx** %6, align 8
  %623 = load i32, i32* %23, align 4
  %624 = call i32 @bzero(%union.authctx* %622, i32 %623)
  br label %625

625:                                              ; preds = %621, %610
  %626 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %627 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  %629 = load i32, i32* %20, align 4
  %630 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %631 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %630, i32 0, i32 5
  %632 = load i64, i64* %631, align 8
  %633 = load i32, i32* %24, align 4
  %634 = sext i32 %633 to i64
  %635 = add nsw i64 %632, %634
  %636 = load i32, i32* %26, align 4
  %637 = load %union.authctx*, %union.authctx** %6, align 8
  %638 = call i32 @crypto_copydata(i32 %628, i32 %629, i64 %635, i32 %636, %union.authctx* %637)
  %639 = load %struct.enc_xform*, %struct.enc_xform** %19, align 8
  %640 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %639, i32 0, i32 0
  %641 = load i32 (i32, %union.authctx*)*, i32 (i32, %union.authctx*)** %640, align 8
  %642 = load %struct.swcr_data*, %struct.swcr_data** %17, align 8
  %643 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 8
  %645 = load %union.authctx*, %union.authctx** %6, align 8
  %646 = call i32 %641(i32 %644, %union.authctx* %645)
  %647 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %648 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 8
  %650 = load i32, i32* %20, align 4
  %651 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %652 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %651, i32 0, i32 5
  %653 = load i64, i64* %652, align 8
  %654 = load i32, i32* %24, align 4
  %655 = sext i32 %654 to i64
  %656 = add nsw i64 %653, %655
  %657 = load i32, i32* %26, align 4
  %658 = load %union.authctx*, %union.authctx** %6, align 8
  %659 = call i32 @crypto_copyback(i32 %649, i32 %650, i64 %656, i32 %657, %union.authctx* %658)
  br label %660

660:                                              ; preds = %625
  %661 = load i32, i32* %23, align 4
  %662 = load i32, i32* %24, align 4
  %663 = add nsw i32 %662, %661
  store i32 %663, i32* %24, align 4
  br label %604

664:                                              ; preds = %604
  br label %667

665:                                              ; preds = %568
  %666 = load i32, i32* @EBADMSG, align 4
  store i32 %666, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

667:                                              ; preds = %664
  br label %680

668:                                              ; preds = %557
  %669 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %670 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 8
  %672 = load i32, i32* %20, align 4
  %673 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %674 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %673, i32 0, i32 4
  %675 = load i64, i64* %674, align 8
  %676 = load %struct.auth_hash*, %struct.auth_hash** %18, align 8
  %677 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %676, i32 0, i32 2
  %678 = load i32, i32* %677, align 8
  %679 = call i32 @crypto_copyback(i32 %671, i32 %672, i64 %675, i32 %678, %union.authctx* %40)
  br label %680

680:                                              ; preds = %668, %667
  store i32 0, i32* %2, align 4
  store i32 1, i32* %31, align 4
  br label %681

681:                                              ; preds = %680, %665, %205, %195, %175, %162, %150, %137, %124, %94
  %682 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %682)
  %683 = load i32, i32* %2, align 4
  ret i32 %683
}

declare dso_local i32 @howmany(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.swcr_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @nitems(%struct.swcr_data*) #1

declare dso_local i32 @bcopy(i32, %union.authctx*, i32) #1

declare dso_local i32 @arc4rand(%union.authctx*, i32, i32) #1

declare dso_local i32 @crypto_copyback(i32, i32, i64, i32, %union.authctx*) #1

declare dso_local i32 @crypto_copydata(i32, i32, i64, i32, %union.authctx*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @bzero(%union.authctx*, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @timingsafe_bcmp(%union.authctx*, %union.authctx*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
