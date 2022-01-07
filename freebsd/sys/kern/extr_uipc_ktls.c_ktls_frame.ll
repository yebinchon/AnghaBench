; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_3__, %struct.mbuf* }
%struct.TYPE_3__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32, i32, i64, i64, i8*, i64, i32 }
%struct.ktls_session = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64, i64, i64 }
%struct.tls_record_layer = type { i64, i64, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@M_NOMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ktls_frame: mapped mbuf %p (top = %p)\0A\00", align 1
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@TLS_MINOR_VER_THREE = common dso_local global i64 0, align 8
@TLS_MAJOR_VER_ONE = common dso_local global i64 0, align 8
@TLS_MINOR_VER_TWO = common dso_local global i64 0, align 8
@TLS_RLTYPE_APP = common dso_local global i8* null, align 8
@CRYPTO_AES_NIST_GCM_16 = common dso_local global i64 0, align 8
@TLS_MINOR_VER_ONE = common dso_local global i64 0, align 8
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@TCP_TLS_MODE_SW = common dso_local global i64 0, align 8
@M_NOTREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktls_frame(%struct.mbuf* %0, %struct.ktls_session* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ktls_session*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tls_record_layer*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf_ext_pgs*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store %struct.ktls_session* %1, %struct.ktls_session** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %19 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %23, %struct.mbuf** %11, align 8
  br label %24

24:                                               ; preds = %240, %4
  %25 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %26 = icmp ne %struct.mbuf* %25, null
  br i1 %26, label %27, label %244

27:                                               ; preds = %24
  %28 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %27
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %5, align 4
  br label %245

40:                                               ; preds = %33
  %41 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @M_NOMAP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = bitcast %struct.mbuf* %52 to i8*
  %54 = call i32 @KASSERT(i32 %50, i8* %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %57, align 8
  store %struct.mbuf_ext_pgs* %58, %struct.mbuf_ext_pgs** %12, align 8
  %59 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %60 = call i32 @ktls_hold(%struct.ktls_session* %59)
  %61 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %62 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %64 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %68 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %70 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %74 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %76 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %40
  %82 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %83 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %88 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %86, %90
  %92 = load i32, i32* %16, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %91, %93
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %97 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %81, %40
  %101 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %102 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %105 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %113 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = bitcast i8* %115 to %struct.tls_record_layer*
  store %struct.tls_record_layer* %116, %struct.tls_record_layer** %10, align 8
  %117 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %118 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %122 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %124 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TLS_MINOR_VER_THREE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %100
  %130 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %131 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TLS_MAJOR_VER_ONE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load i64, i64* @TLS_MINOR_VER_TWO, align 8
  %138 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %139 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load i8*, i8** @TLS_RLTYPE_APP, align 8
  %141 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %142 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %145 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  br label %156

146:                                              ; preds = %129, %100
  %147 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %148 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %152 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %155 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %146, %136
  %157 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, 32
  %162 = trunc i64 %161 to i32
  %163 = call i32 @htons(i32 %162)
  %164 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %165 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %167 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @CRYPTO_AES_NIST_GCM_16, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %156
  %173 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %174 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @TLS_MINOR_VER_TWO, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %172
  %180 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %181 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 8
  %185 = inttoptr i64 %184 to i32*
  store i32* %185, i32** %13, align 8
  %186 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %187 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %186, i64 1
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @be64enc(%struct.tls_record_layer* %187, i32 %189)
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  br label %214

194:                                              ; preds = %172, %156
  %195 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %196 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %194
  %202 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %203 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TLS_MINOR_VER_ONE, align 8
  %207 = icmp sge i64 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = load %struct.tls_record_layer*, %struct.tls_record_layer** %10, align 8
  %210 = getelementptr inbounds %struct.tls_record_layer, %struct.tls_record_layer* %209, i64 1
  %211 = load i32, i32* @AES_BLOCK_LEN, align 4
  %212 = call i32 @arc4rand(%struct.tls_record_layer* %210, i32 %211, i32 0)
  br label %213

213:                                              ; preds = %208, %201, %194
  br label %214

214:                                              ; preds = %213, %179
  %215 = load %struct.ktls_session*, %struct.ktls_session** %7, align 8
  %216 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @TCP_TLS_MODE_SW, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %214
  %221 = load i32, i32* @M_NOTREADY, align 4
  %222 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %223 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %227 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %230 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  %231 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %12, align 8
  %232 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %233
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %234, align 4
  br label %239

239:                                              ; preds = %220, %214
  br label %240

240:                                              ; preds = %239
  %241 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %242 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %241, i32 0, i32 3
  %243 = load %struct.mbuf*, %struct.mbuf** %242, align 8
  store %struct.mbuf* %243, %struct.mbuf** %11, align 8
  br label %24

244:                                              ; preds = %24
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %38
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ktls_hold(%struct.ktls_session*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @be64enc(%struct.tls_record_layer*, i32) #1

declare dso_local i32 @arc4rand(%struct.tls_record_layer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
