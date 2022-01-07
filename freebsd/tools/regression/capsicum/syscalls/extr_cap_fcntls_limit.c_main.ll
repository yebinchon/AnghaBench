; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"1..870\0A\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @AF_UNIX, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @fcntl_tests_0(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @close(i32 %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHECK(i32 %18)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %2, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @CHECK(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @fcntl_tests_1(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @close(i32 %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @CHECK(i32 %31)
  %33 = load i32, i32* @AF_UNIX, align 4
  %34 = load i32, i32* @SOCK_STREAM, align 4
  %35 = call i32 @socket(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %2, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @CHECK(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @fcntl_tests_2(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @close(i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  %46 = load i32, i32* @AF_UNIX, align 4
  %47 = load i32, i32* @SOCK_STREAM, align 4
  %48 = call i32 @socket(i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %2, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = call i64 (...) @fork()
  store i64 %52, i64* %5, align 8
  %53 = icmp sge i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %0
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @fcntl_tests_0(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @close(i32 %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @CHECK(i32 %64)
  %66 = call i32 @exit(i32 0) #3
  unreachable

67:                                               ; preds = %0
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @waitpid(i64 %68, i32* null, i32 0)
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @CHECK(i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @fcntl_tests_0(i32 %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %2, align 4
  %78 = call i64 @close(i32 %77)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @CHECK(i32 %80)
  %82 = load i32, i32* @AF_UNIX, align 4
  %83 = load i32, i32* @SOCK_STREAM, align 4
  %84 = call i32 @socket(i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %2, align 4
  %85 = icmp sge i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @CHECK(i32 %86)
  %88 = call i64 (...) @fork()
  store i64 %88, i64* %5, align 8
  %89 = icmp sge i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @CHECK(i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %76
  %95 = call i32 @sleep(i32 1)
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @fcntl_tests_0(i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = call i64 @close(i32 %98)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @CHECK(i32 %101)
  %103 = call i32 @exit(i32 0) #3
  unreachable

104:                                              ; preds = %76
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @fcntl_tests_0(i32 %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @waitpid(i64 %107, i32* null, i32 0)
  %109 = load i64, i64* %5, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @CHECK(i32 %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %2, align 4
  %115 = call i64 @close(i32 %114)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i32, i32* @AF_UNIX, align 4
  %120 = load i32, i32* @SOCK_STREAM, align 4
  %121 = call i32 @socket(i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %2, align 4
  %122 = icmp sge i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @CHECK(i32 %123)
  %125 = call i64 @pdfork(i32* %3, i32 0)
  store i64 %125, i64* %5, align 8
  %126 = icmp sge i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @CHECK(i32 %127)
  %129 = load i64, i64* %5, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %113
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @fcntl_tests_1(i32 %132)
  %134 = call i32 @exit(i32 0) #3
  unreachable

135:                                              ; preds = %113
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @pdwait(i32 %136)
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @CHECK(i32 %139)
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @fcntl_tests_1(i32 %141)
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %2, align 4
  %145 = call i64 @close(i32 %144)
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @CHECK(i32 %147)
  %149 = load i32, i32* @AF_UNIX, align 4
  %150 = load i32, i32* @SOCK_STREAM, align 4
  %151 = call i32 @socket(i32 %149, i32 %150, i32 0)
  store i32 %151, i32* %2, align 4
  %152 = icmp sge i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @CHECK(i32 %153)
  %155 = call i64 @pdfork(i32* %3, i32 0)
  store i64 %155, i64* %5, align 8
  %156 = icmp sge i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @CHECK(i32 %157)
  %159 = load i64, i64* %5, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %143
  %162 = call i32 @sleep(i32 1)
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @fcntl_tests_1(i32 %163)
  %165 = call i32 @exit(i32 0) #3
  unreachable

166:                                              ; preds = %143
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @fcntl_tests_1(i32 %167)
  %169 = load i32, i32* %3, align 4
  %170 = call i64 @pdwait(i32 %169)
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @CHECK(i32 %172)
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %2, align 4
  %176 = call i64 @close(i32 %175)
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @CHECK(i32 %178)
  %180 = load i32, i32* @AF_UNIX, align 4
  %181 = load i32, i32* @SOCK_STREAM, align 4
  %182 = call i32 @socket(i32 %180, i32 %181, i32 0)
  store i32 %182, i32* %2, align 4
  %183 = icmp sge i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @CHECK(i32 %184)
  %186 = call i64 (...) @fork()
  store i64 %186, i64* %5, align 8
  %187 = icmp sge i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @CHECK(i32 %188)
  %190 = load i64, i64* %5, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %174
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @fcntl_tests_2(i32 %193)
  %195 = call i32 @exit(i32 0) #3
  unreachable

196:                                              ; preds = %174
  %197 = load i64, i64* %5, align 8
  %198 = call i64 @waitpid(i64 %197, i32* null, i32 0)
  %199 = load i64, i64* %5, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @CHECK(i32 %201)
  %203 = load i32, i32* %2, align 4
  %204 = call i32 @fcntl_tests_2(i32 %203)
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %2, align 4
  %207 = call i64 @close(i32 %206)
  %208 = icmp eq i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @CHECK(i32 %209)
  %211 = load i32, i32* @AF_UNIX, align 4
  %212 = load i32, i32* @SOCK_STREAM, align 4
  %213 = call i32 @socket(i32 %211, i32 %212, i32 0)
  store i32 %213, i32* %2, align 4
  %214 = icmp sge i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @CHECK(i32 %215)
  %217 = call i64 (...) @fork()
  store i64 %217, i64* %5, align 8
  %218 = icmp sge i64 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @CHECK(i32 %219)
  %221 = load i64, i64* %5, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %205
  %224 = call i32 @sleep(i32 1)
  %225 = load i32, i32* %2, align 4
  %226 = call i32 @fcntl_tests_2(i32 %225)
  %227 = call i32 @exit(i32 0) #3
  unreachable

228:                                              ; preds = %205
  %229 = load i32, i32* %2, align 4
  %230 = call i32 @fcntl_tests_2(i32 %229)
  %231 = load i64, i64* %5, align 8
  %232 = call i64 @waitpid(i64 %231, i32* null, i32 0)
  %233 = load i64, i64* %5, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @CHECK(i32 %235)
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %2, align 4
  %239 = call i64 @close(i32 %238)
  %240 = icmp eq i64 %239, 0
  %241 = zext i1 %240 to i32
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i32, i32* @AF_UNIX, align 4
  %244 = load i32, i32* @SOCK_STREAM, align 4
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %246 = call i64 @socketpair(i32 %243, i32 %244, i32 0, i32* %245)
  %247 = icmp eq i64 %246, 0
  %248 = zext i1 %247 to i32
  %249 = call i32 @CHECK(i32 %248)
  %250 = call i64 (...) @fork()
  store i64 %250, i64* %5, align 8
  %251 = icmp sge i64 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @CHECK(i32 %252)
  %254 = load i64, i64* %5, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %237
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = call i64 @close(i32 %258)
  %260 = icmp eq i64 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @CHECK(i32 %261)
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @fcntl_tests_recv_0(i32 %264)
  %266 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @close(i32 %267)
  %269 = icmp eq i64 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 @CHECK(i32 %270)
  %272 = call i32 @exit(i32 0) #3
  unreachable

273:                                              ; preds = %237
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @close(i32 %275)
  %277 = icmp eq i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @CHECK(i32 %278)
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @fcntl_tests_send_0(i32 %281)
  %283 = load i64, i64* %5, align 8
  %284 = call i64 @waitpid(i64 %283, i32* null, i32 0)
  %285 = load i64, i64* %5, align 8
  %286 = icmp eq i64 %284, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @CHECK(i32 %287)
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @close(i32 %290)
  %292 = icmp eq i64 %291, 0
  %293 = zext i1 %292 to i32
  %294 = call i32 @CHECK(i32 %293)
  br label %295

295:                                              ; preds = %273
  %296 = load i32, i32* @AF_UNIX, align 4
  %297 = load i32, i32* @SOCK_STREAM, align 4
  %298 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %299 = call i64 @socketpair(i32 %296, i32 %297, i32 0, i32* %298)
  %300 = icmp eq i64 %299, 0
  %301 = zext i1 %300 to i32
  %302 = call i32 @CHECK(i32 %301)
  %303 = call i64 (...) @fork()
  store i64 %303, i64* %5, align 8
  %304 = icmp sge i64 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i32 @CHECK(i32 %305)
  %307 = load i64, i64* %5, align 8
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %326

309:                                              ; preds = %295
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = call i64 @close(i32 %311)
  %313 = icmp eq i64 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @CHECK(i32 %314)
  %316 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @fcntl_tests_send_0(i32 %317)
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @close(i32 %320)
  %322 = icmp eq i64 %321, 0
  %323 = zext i1 %322 to i32
  %324 = call i32 @CHECK(i32 %323)
  %325 = call i32 @exit(i32 0) #3
  unreachable

326:                                              ; preds = %295
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @close(i32 %328)
  %330 = icmp eq i64 %329, 0
  %331 = zext i1 %330 to i32
  %332 = call i32 @CHECK(i32 %331)
  %333 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @fcntl_tests_recv_0(i32 %334)
  %336 = load i64, i64* %5, align 8
  %337 = call i64 @waitpid(i64 %336, i32* null, i32 0)
  %338 = load i64, i64* %5, align 8
  %339 = icmp eq i64 %337, %338
  %340 = zext i1 %339 to i32
  %341 = call i32 @CHECK(i32 %340)
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = call i64 @close(i32 %343)
  %345 = icmp eq i64 %344, 0
  %346 = zext i1 %345 to i32
  %347 = call i32 @CHECK(i32 %346)
  br label %348

348:                                              ; preds = %326
  %349 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl_tests_0(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @fcntl_tests_1(i32) #1

declare dso_local i32 @fcntl_tests_2(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @pdfork(i32*, i32) #1

declare dso_local i64 @pdwait(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fcntl_tests_recv_0(i32) #1

declare dso_local i32 @fcntl_tests_send_0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
