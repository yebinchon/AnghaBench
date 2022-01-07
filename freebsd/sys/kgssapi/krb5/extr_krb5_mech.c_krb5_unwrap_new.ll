; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_unwrap_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_unwrap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, %struct.TYPE_2__, %struct.krb5_key_state*, %struct.krb5_key_state*, %struct.krb5_key_state* }
%struct.TYPE_2__ = type { i32 }
%struct.krb5_key_state = type { %struct.krb5_encryption_class* }
%struct.krb5_encryption_class = type { i64, i64 }
%struct.mbuf = type { i32, i32*, %struct.mbuf* }

@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@GSS_TOKEN_SEALED = common dso_local global i32 0, align 4
@GSS_TOKEN_SENT_BY_ACCEPTOR = common dso_local global i32 0, align 4
@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_TOKEN_ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_S_UNSEQ_TOKEN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, %struct.mbuf**, i32*)* @krb5_unwrap_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_unwrap_new(%struct.krb5_context* %0, %struct.mbuf** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_context*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.krb5_key_state*, align 8
  %10 = alloca %struct.krb5_key_state*, align 8
  %11 = alloca %struct.krb5_key_state*, align 8
  %12 = alloca %struct.krb5_encryption_class*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca [32 x i8], align 16
  %30 = alloca [32 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca %struct.mbuf*, align 8
  %33 = alloca i64, align 8
  store %struct.krb5_context* %0, %struct.krb5_context** %5, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %6, align 8
  store i32* %2, i32** %7, align 8
  %34 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %35 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %34, i32 0, i32 4
  %36 = load %struct.krb5_key_state*, %struct.krb5_key_state** %35, align 8
  store %struct.krb5_key_state* %36, %struct.krb5_key_state** %9, align 8
  %37 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %38 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %37, i32 0, i32 3
  %39 = load %struct.krb5_key_state*, %struct.krb5_key_state** %38, align 8
  store %struct.krb5_key_state* %39, %struct.krb5_key_state** %10, align 8
  %40 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %41 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %40, i32 0, i32 2
  %42 = load %struct.krb5_key_state*, %struct.krb5_key_state** %41, align 8
  store %struct.krb5_key_state* %42, %struct.krb5_key_state** %11, align 8
  %43 = load %struct.krb5_key_state*, %struct.krb5_key_state** %9, align 8
  %44 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %43, i32 0, i32 0
  %45 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %44, align 8
  store %struct.krb5_encryption_class* %45, %struct.krb5_encryption_class** %12, align 8
  %46 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  store %struct.mbuf* %47, %struct.mbuf** %13, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %49 = call i64 @m_length(%struct.mbuf* %48, %struct.mbuf** %14)
  store i64 %49, i64* %26, align 8
  %50 = load i64, i64* %26, align 8
  %51 = icmp ule i64 %50, 16
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %53, i32* %4, align 4
  br label %449

54:                                               ; preds = %3
  %55 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %61 = call %struct.mbuf* @m_pullup(%struct.mbuf* %60, i32 16)
  store %struct.mbuf* %61, %struct.mbuf** %13, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %63 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %62, %struct.mbuf** %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 5
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %73, i32* %4, align 4
  br label %449

74:                                               ; preds = %64
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 4
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %80, i32* %4, align 4
  br label %449

81:                                               ; preds = %74
  %82 = load i32*, i32** %17, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GSS_TOKEN_SEALED, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %20, align 4
  %88 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %89 = call i64 @is_initiator(%struct.krb5_context* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32, i32* @GSS_TOKEN_SENT_BY_ACCEPTOR, align 4
  %93 = load i32, i32* %20, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %20, align 4
  br label %95

95:                                               ; preds = %91, %81
  %96 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %97 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @GSS_TOKEN_ACCEPTOR_SUBKEY, align 4
  %104 = load i32, i32* %20, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32*, i32** %17, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %113, i32* %4, align 4
  br label %449

114:                                              ; preds = %106
  %115 = load i32*, i32** %17, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 255
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %120, i32* %4, align 4
  br label %449

121:                                              ; preds = %114
  %122 = load i32*, i32** %17, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = load i32*, i32** %17, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %21, align 4
  %130 = load i32*, i32** %17, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 6
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = load i32*, i32** %17, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 7
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  store i32 %137, i32* %22, align 4
  %138 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %139 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %143 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %198

147:                                              ; preds = %121
  %148 = load i32*, i32** %17, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %147
  %153 = load i32*, i32** %17, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 9
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  %158 = load i32*, i32** %17, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 10
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i32*, i32** %17, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 11
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162, %157, %152, %147
  %168 = load i32, i32* @GSS_S_UNSEQ_TOKEN, align 4
  store i32 %168, i32* %8, align 4
  br label %191

169:                                              ; preds = %162
  %170 = load i32*, i32** %17, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 24
  %174 = load i32*, i32** %17, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 13
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 16
  %178 = or i32 %173, %177
  %179 = load i32*, i32** %17, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 14
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 8
  %183 = or i32 %178, %182
  %184 = load i32*, i32** %17, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 15
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  store i32 %187, i32* %31, align 4
  %188 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %189 = load i32, i32* %31, align 4
  %190 = call i32 @krb5_sequence_check(%struct.krb5_context* %188, i32 %189)
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %169, %167
  %192 = load i32, i32* %8, align 4
  %193 = call i64 @GSS_ERROR(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %449

197:                                              ; preds = %191
  br label %200

198:                                              ; preds = %121
  %199 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %198, %197
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  store %struct.mbuf* null, %struct.mbuf** %15, align 8
  %204 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %205 = call i32 @m_adj(%struct.mbuf* %204, i64 16)
  br label %214

206:                                              ; preds = %200
  %207 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %207, %struct.mbuf** %15, align 8
  %208 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %209 = load i32, i32* @M_WAITOK, align 4
  %210 = call %struct.mbuf* @m_split(%struct.mbuf* %208, i64 16, i32 %209)
  store %struct.mbuf* %210, %struct.mbuf** %13, align 8
  %211 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %210, %struct.mbuf** %211, align 8
  %212 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %213 = call %struct.mbuf* @m_last(%struct.mbuf* %212)
  store %struct.mbuf* %213, %struct.mbuf** %14, align 8
  br label %214

214:                                              ; preds = %206, %203
  %215 = load i32, i32* %22, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %282

217:                                              ; preds = %214
  %218 = load i64, i64* %26, align 8
  %219 = sub i64 %218, 16
  store i64 %219, i64* %33, align 8
  %220 = load i32, i32* %22, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp ule i64 %221, 32
  br i1 %222, label %223, label %269

223:                                              ; preds = %217
  %224 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %225 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* %33, align 8
  %229 = icmp uge i64 %227, %228
  br i1 %229, label %230, label %269

230:                                              ; preds = %223
  %231 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %232 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = bitcast i32* %233 to i8*
  %235 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %236 = load i32, i32* %22, align 4
  %237 = sext i32 %236 to i64
  %238 = call i32 @bcopy(i8* %234, i8* %235, i64 %237)
  %239 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %240 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %22, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = bitcast i32* %244 to i8*
  %246 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %247 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = bitcast i32* %248 to i8*
  %250 = load i64, i64* %33, align 8
  %251 = load i32, i32* %22, align 4
  %252 = sext i32 %251 to i64
  %253 = sub i64 %250, %252
  %254 = call i32 @bcopy(i8* %245, i8* %249, i64 %253)
  %255 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %256 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %257 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %33, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %22, align 4
  %262 = sext i32 %261 to i64
  %263 = sub i64 0, %262
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = bitcast i32* %264 to i8*
  %266 = load i32, i32* %22, align 4
  %267 = sext i32 %266 to i64
  %268 = call i32 @bcopy(i8* %255, i8* %265, i64 %267)
  br label %281

269:                                              ; preds = %223, %217
  %270 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %270, %struct.mbuf** %32, align 8
  %271 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %272 = load i32, i32* %22, align 4
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* @M_WAITOK, align 4
  %275 = call %struct.mbuf* @m_split(%struct.mbuf* %271, i64 %273, i32 %274)
  store %struct.mbuf* %275, %struct.mbuf** %13, align 8
  %276 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %275, %struct.mbuf** %276, align 8
  %277 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %278 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %279 = call i32 @m_cat(%struct.mbuf* %277, %struct.mbuf* %278)
  %280 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  store %struct.mbuf* %280, %struct.mbuf** %14, align 8
  br label %281

281:                                              ; preds = %269, %230
  br label %282

282:                                              ; preds = %281, %214
  %283 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %12, align 8
  %284 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %23, align 8
  %286 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %12, align 8
  %287 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %24, align 8
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %371

291:                                              ; preds = %282
  %292 = load i64, i64* %26, align 8
  %293 = load i64, i64* %23, align 8
  %294 = mul i64 2, %293
  %295 = add i64 16, %294
  %296 = load i64, i64* %24, align 8
  %297 = add i64 %295, %296
  %298 = icmp ult i64 %292, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %291
  %300 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %300, i32* %4, align 4
  br label %449

301:                                              ; preds = %291
  %302 = load i64, i64* %26, align 8
  %303 = sub i64 %302, 16
  %304 = load i64, i64* %24, align 8
  %305 = sub i64 %303, %304
  store i64 %305, i64* %25, align 8
  %306 = load %struct.krb5_key_state*, %struct.krb5_key_state** %9, align 8
  %307 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %308 = load i64, i64* %25, align 8
  %309 = call i32 @krb5_decrypt(%struct.krb5_key_state* %306, %struct.mbuf* %307, i32 0, i64 %308, i32* null, i32 0)
  %310 = load i64, i64* %25, align 8
  %311 = load i64, i64* %23, align 8
  %312 = sub i64 %310, %311
  %313 = sub i64 %312, 16
  %314 = load i32, i32* %21, align 4
  %315 = sext i32 %314 to i64
  %316 = sub i64 %313, %315
  store i64 %316, i64* %27, align 8
  %317 = load i32*, i32** %17, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 16
  %319 = load i64, i64* %23, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32* %320, i32** %18, align 8
  %321 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %322 = load i64, i64* %25, align 8
  %323 = load i64, i64* %24, align 8
  %324 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %325 = call i32 @m_copydata(%struct.mbuf* %321, i64 %322, i64 %323, i8* %324)
  %326 = load %struct.krb5_key_state*, %struct.krb5_key_state** %10, align 8
  %327 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %328 = load i64, i64* %25, align 8
  %329 = load i64, i64* %24, align 8
  %330 = call i32 @krb5_checksum(%struct.krb5_key_state* %326, i32 0, %struct.mbuf* %327, i32 0, i64 %328, i64 %329)
  %331 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %332 = load i64, i64* %25, align 8
  %333 = load i64, i64* %24, align 8
  %334 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i64 0, i64 0
  %335 = call i32 @m_copydata(%struct.mbuf* %331, i64 %332, i64 %333, i8* %334)
  %336 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %337 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i64 0, i64 0
  %338 = load i64, i64* %24, align 8
  %339 = call i64 @bcmp(i8* %336, i8* %337, i64 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %301
  %342 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %342, i32* %4, align 4
  br label %449

343:                                              ; preds = %301
  %344 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %345 = load i64, i64* %23, align 8
  %346 = call i32 @m_adj(%struct.mbuf* %344, i64 %345)
  %347 = load i32, i32* %21, align 4
  %348 = add nsw i32 16, %347
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* %24, align 8
  %351 = add i64 %349, %350
  store i64 %351, i64* %28, align 8
  %352 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %353 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = load i64, i64* %28, align 8
  %357 = icmp uge i64 %355, %356
  br i1 %357, label %358, label %366

358:                                              ; preds = %343
  %359 = load i64, i64* %28, align 8
  %360 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %361 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = sub i64 %363, %359
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %361, align 8
  br label %370

366:                                              ; preds = %343
  %367 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %368 = load i64, i64* %27, align 8
  %369 = call i32 @m_trim(%struct.mbuf* %367, i64 %368)
  br label %370

370:                                              ; preds = %366, %358
  br label %439

371:                                              ; preds = %282
  %372 = load i64, i64* %26, align 8
  %373 = load i64, i64* %24, align 8
  %374 = add i64 16, %373
  %375 = icmp ult i64 %372, %374
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = load i32, i32* %21, align 4
  %378 = sext i32 %377 to i64
  %379 = load i64, i64* %24, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %376, %371
  %382 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %382, i32* %4, align 4
  br label %449

383:                                              ; preds = %376
  %384 = load i64, i64* %26, align 8
  %385 = sub i64 %384, 16
  %386 = load i64, i64* %24, align 8
  %387 = sub i64 %385, %386
  store i64 %387, i64* %27, align 8
  %388 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %389 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  store i32* %390, i32** %17, align 8
  %391 = load i32*, i32** %17, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 7
  store i32 0, i32* %392, align 4
  %393 = load i32*, i32** %17, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 6
  store i32 0, i32* %394, align 4
  %395 = load i32*, i32** %17, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 5
  store i32 0, i32* %396, align 4
  %397 = load i32*, i32** %17, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 4
  store i32 0, i32* %398, align 4
  %399 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %400 = load i64, i64* %27, align 8
  %401 = load i32, i32* @M_WAITOK, align 4
  %402 = call %struct.mbuf* @m_split(%struct.mbuf* %399, i64 %400, i32 %401)
  store %struct.mbuf* %402, %struct.mbuf** %16, align 8
  %403 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %404 = call %struct.mbuf* @m_last(%struct.mbuf* %403)
  store %struct.mbuf* %404, %struct.mbuf** %14, align 8
  %405 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %406 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %407 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %406, i32 0, i32 2
  store %struct.mbuf* %405, %struct.mbuf** %407, align 8
  %408 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %409 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %410 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %409, i32 0, i32 2
  store %struct.mbuf* %408, %struct.mbuf** %410, align 8
  %411 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %412 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %411, i32 0, i32 1
  %413 = load i32*, i32** %412, align 8
  %414 = bitcast i32* %413 to i8*
  %415 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %416 = load i64, i64* %24, align 8
  %417 = call i32 @bcopy(i8* %414, i8* %415, i64 %416)
  %418 = load %struct.krb5_key_state*, %struct.krb5_key_state** %11, align 8
  %419 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %420 = load i64, i64* %27, align 8
  %421 = add i64 %420, 16
  %422 = load i64, i64* %24, align 8
  %423 = call i32 @krb5_checksum(%struct.krb5_key_state* %418, i32 0, %struct.mbuf* %419, i32 0, i64 %421, i64 %422)
  %424 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %425 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = bitcast i32* %426 to i8*
  %428 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %429 = load i64, i64* %24, align 8
  %430 = call i64 @bcmp(i8* %427, i8* %428, i64 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %383
  %433 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %433, i32* %4, align 4
  br label %449

434:                                              ; preds = %383
  %435 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %436 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %435, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %436, align 8
  %437 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %438 = call i32 @m_freem(%struct.mbuf* %437)
  br label %439

439:                                              ; preds = %434, %370
  %440 = load i32*, i32** %7, align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %447

442:                                              ; preds = %439
  %443 = load i32, i32* %19, align 4
  %444 = icmp ne i32 %443, 0
  %445 = zext i1 %444 to i32
  %446 = load i32*, i32** %7, align 8
  store i32 %445, i32* %446, align 4
  br label %447

447:                                              ; preds = %442, %439
  %448 = load i32, i32* %8, align 4
  store i32 %448, i32* %4, align 4
  br label %449

449:                                              ; preds = %447, %432, %381, %341, %299, %195, %119, %112, %79, %72, %52
  %450 = load i32, i32* %4, align 4
  ret i32 %450
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @krb5_sequence_check(%struct.krb5_context*, i32) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local %struct.mbuf* @m_split(%struct.mbuf*, i64, i32) #1

declare dso_local %struct.mbuf* @m_last(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @krb5_decrypt(%struct.krb5_key_state*, %struct.mbuf*, i32, i64, i32*, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i64, i64, i8*) #1

declare dso_local i32 @krb5_checksum(%struct.krb5_key_state*, i32, %struct.mbuf*, i32, i64, i64) #1

declare dso_local i64 @bcmp(i8*, i8*, i64) #1

declare dso_local i32 @m_trim(%struct.mbuf*, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
