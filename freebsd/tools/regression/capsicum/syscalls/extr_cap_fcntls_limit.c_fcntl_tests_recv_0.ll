; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_recv_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_recv_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_FCNTL_ALL = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CAP_FCNTL_GETFL = common dso_local global i32 0, align 4
@CAP_FCNTL_SETFL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fcntl_tests_recv_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcntl_tests_recv_0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @descriptor_recv(i32 %5, i32* %4)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @CHECK(i32 %8)
  store i32 0, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @cap_fcntls_get(i32 %10, i32* %3)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @CHECK(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CAP_FCNTL_ALL, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHECK(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @F_GETFD, align 4
  %22 = call i32 (i32, i32, ...) @fcntl(i32 %20, i32 %21)
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @CHECK(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @F_SETFD, align 4
  %28 = load i32, i32* @FD_CLOEXEC, align 4
  %29 = call i32 (i32, i32, ...) @fcntl(i32 %26, i32 %27, i32 %28)
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @CHECK(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @F_GETFD, align 4
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %33, i32 %34)
  %36 = load i32, i32* @FD_CLOEXEC, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHECK(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @F_SETFD, align 4
  %42 = call i32 (i32, i32, ...) @fcntl(i32 %40, i32 %41, i32 0)
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @F_GETFD, align 4
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %46, i32 %47)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @F_GETFL, align 4
  %54 = call i32 (i32, i32, ...) @fcntl(i32 %52, i32 %53)
  %55 = load i32, i32* @O_RDWR, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @CHECK(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @F_SETFL, align 4
  %61 = load i32, i32* @O_NONBLOCK, align 4
  %62 = call i32 (i32, i32, ...) @fcntl(i32 %59, i32 %60, i32 %61)
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @CHECK(i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @F_GETFL, align 4
  %68 = call i32 (i32, i32, ...) @fcntl(i32 %66, i32 %67)
  %69 = load i32, i32* @O_RDWR, align 4
  %70 = load i32, i32* @O_NONBLOCK, align 4
  %71 = or i32 %69, %70
  %72 = icmp eq i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @F_SETFL, align 4
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %75, i32 %76, i32 0)
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @CHECK(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @F_GETFL, align 4
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %81, i32 %82)
  %84 = load i32, i32* @O_RDWR, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @CHECK(i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @close(i32 %88)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = call i64 @descriptor_recv(i32 %93, i32* %4)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @CHECK(i32 %96)
  store i32 0, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @cap_fcntls_get(i32 %98, i32* %3)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @CHECK(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %105 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %106 = or i32 %104, %105
  %107 = icmp eq i32 %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @CHECK(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %112 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @cap_fcntls_limit(i32 %110, i32 %113)
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @CHECK(i32 %116)
  store i32 0, i32* %3, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i64 @cap_fcntls_get(i32 %118, i32* %3)
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @CHECK(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %125 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %126 = or i32 %124, %125
  %127 = icmp eq i32 %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @CHECK(i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @F_GETFD, align 4
  %132 = call i32 (i32, i32, ...) @fcntl(i32 %130, i32 %131)
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @CHECK(i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @F_SETFD, align 4
  %138 = load i32, i32* @FD_CLOEXEC, align 4
  %139 = call i32 (i32, i32, ...) @fcntl(i32 %136, i32 %137, i32 %138)
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @CHECK(i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @F_GETFD, align 4
  %145 = call i32 (i32, i32, ...) @fcntl(i32 %143, i32 %144)
  %146 = load i32, i32* @FD_CLOEXEC, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @CHECK(i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @F_SETFD, align 4
  %152 = call i32 (i32, i32, ...) @fcntl(i32 %150, i32 %151, i32 0)
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @CHECK(i32 %154)
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @F_GETFD, align 4
  %158 = call i32 (i32, i32, ...) @fcntl(i32 %156, i32 %157)
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @CHECK(i32 %160)
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @F_GETFL, align 4
  %164 = call i32 (i32, i32, ...) @fcntl(i32 %162, i32 %163)
  %165 = load i32, i32* @O_RDWR, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @CHECK(i32 %167)
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @F_SETFL, align 4
  %171 = load i32, i32* @O_NONBLOCK, align 4
  %172 = call i32 (i32, i32, ...) @fcntl(i32 %169, i32 %170, i32 %171)
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @CHECK(i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @F_GETFL, align 4
  %178 = call i32 (i32, i32, ...) @fcntl(i32 %176, i32 %177)
  %179 = load i32, i32* @O_RDWR, align 4
  %180 = load i32, i32* @O_NONBLOCK, align 4
  %181 = or i32 %179, %180
  %182 = icmp eq i32 %178, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @CHECK(i32 %183)
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @F_SETFL, align 4
  %187 = call i32 (i32, i32, ...) @fcntl(i32 %185, i32 %186, i32 0)
  %188 = icmp eq i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @CHECK(i32 %189)
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @F_GETFL, align 4
  %193 = call i32 (i32, i32, ...) @fcntl(i32 %191, i32 %192)
  %194 = load i32, i32* @O_RDWR, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @CHECK(i32 %196)
  %198 = load i32, i32* %4, align 4
  %199 = call i64 @close(i32 %198)
  %200 = icmp eq i64 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @CHECK(i32 %201)
  %203 = load i32, i32* %2, align 4
  %204 = call i64 @descriptor_recv(i32 %203, i32* %4)
  %205 = icmp eq i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @CHECK(i32 %206)
  store i32 0, i32* %3, align 4
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @cap_fcntls_get(i32 %208, i32* %3)
  %210 = icmp eq i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @CHECK(i32 %211)
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @CHECK(i32 %216)
  store i64 0, i64* @errno, align 8
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %220 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @cap_fcntls_limit(i32 %218, i32 %221)
  %223 = icmp eq i32 %222, -1
  %224 = zext i1 %223 to i32
  %225 = call i32 @CHECK(i32 %224)
  %226 = load i64, i64* @errno, align 8
  %227 = load i64, i64* @ENOTCAPABLE, align 8
  %228 = icmp eq i64 %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @CHECK(i32 %229)
  store i32 0, i32* %3, align 4
  %231 = load i32, i32* %4, align 4
  %232 = call i64 @cap_fcntls_get(i32 %231, i32* %3)
  %233 = icmp eq i64 %232, 0
  %234 = zext i1 %233 to i32
  %235 = call i32 @CHECK(i32 %234)
  %236 = load i32, i32* %3, align 4
  %237 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @CHECK(i32 %239)
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %243 = call i32 @cap_fcntls_limit(i32 %241, i32 %242)
  %244 = icmp eq i32 %243, 0
  %245 = zext i1 %244 to i32
  %246 = call i32 @CHECK(i32 %245)
  store i32 0, i32* %3, align 4
  %247 = load i32, i32* %4, align 4
  %248 = call i64 @cap_fcntls_get(i32 %247, i32* %3)
  %249 = icmp eq i64 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i32 @CHECK(i32 %250)
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %254 = icmp eq i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @CHECK(i32 %255)
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* @F_GETFD, align 4
  %259 = call i32 (i32, i32, ...) @fcntl(i32 %257, i32 %258)
  %260 = icmp eq i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @CHECK(i32 %261)
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* @F_SETFD, align 4
  %265 = load i32, i32* @FD_CLOEXEC, align 4
  %266 = call i32 (i32, i32, ...) @fcntl(i32 %263, i32 %264, i32 %265)
  %267 = icmp eq i32 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i32 @CHECK(i32 %268)
  %270 = load i32, i32* %4, align 4
  %271 = load i32, i32* @F_GETFD, align 4
  %272 = call i32 (i32, i32, ...) @fcntl(i32 %270, i32 %271)
  %273 = load i32, i32* @FD_CLOEXEC, align 4
  %274 = icmp eq i32 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @CHECK(i32 %275)
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @F_SETFD, align 4
  %279 = call i32 (i32, i32, ...) @fcntl(i32 %277, i32 %278, i32 0)
  %280 = icmp eq i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = call i32 @CHECK(i32 %281)
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @F_GETFD, align 4
  %285 = call i32 (i32, i32, ...) @fcntl(i32 %283, i32 %284)
  %286 = icmp eq i32 %285, 0
  %287 = zext i1 %286 to i32
  %288 = call i32 @CHECK(i32 %287)
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @F_GETFL, align 4
  %291 = call i32 (i32, i32, ...) @fcntl(i32 %289, i32 %290)
  %292 = load i32, i32* @O_RDWR, align 4
  %293 = icmp eq i32 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @CHECK(i32 %294)
  store i64 0, i64* @errno, align 8
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* @F_SETFL, align 4
  %298 = load i32, i32* @O_NONBLOCK, align 4
  %299 = call i32 (i32, i32, ...) @fcntl(i32 %296, i32 %297, i32 %298)
  %300 = icmp eq i32 %299, -1
  %301 = zext i1 %300 to i32
  %302 = call i32 @CHECK(i32 %301)
  %303 = load i64, i64* @errno, align 8
  %304 = load i64, i64* @ENOTCAPABLE, align 8
  %305 = icmp eq i64 %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @CHECK(i32 %306)
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @F_GETFL, align 4
  %310 = call i32 (i32, i32, ...) @fcntl(i32 %308, i32 %309)
  %311 = load i32, i32* @O_RDWR, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @CHECK(i32 %313)
  store i64 0, i64* @errno, align 8
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @F_SETFL, align 4
  %317 = call i32 (i32, i32, ...) @fcntl(i32 %315, i32 %316, i32 0)
  %318 = icmp eq i32 %317, -1
  %319 = zext i1 %318 to i32
  %320 = call i32 @CHECK(i32 %319)
  %321 = load i64, i64* @errno, align 8
  %322 = load i64, i64* @ENOTCAPABLE, align 8
  %323 = icmp eq i64 %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 @CHECK(i32 %324)
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* @F_GETFL, align 4
  %328 = call i32 (i32, i32, ...) @fcntl(i32 %326, i32 %327)
  %329 = load i32, i32* @O_RDWR, align 4
  %330 = icmp eq i32 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @CHECK(i32 %331)
  %333 = load i32, i32* %4, align 4
  %334 = call i64 @close(i32 %333)
  %335 = icmp eq i64 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i32 @CHECK(i32 %336)
  %338 = load i32, i32* %2, align 4
  %339 = call i64 @descriptor_recv(i32 %338, i32* %4)
  %340 = icmp eq i64 %339, 0
  %341 = zext i1 %340 to i32
  %342 = call i32 @CHECK(i32 %341)
  store i32 0, i32* %3, align 4
  %343 = load i32, i32* %4, align 4
  %344 = call i64 @cap_fcntls_get(i32 %343, i32* %3)
  %345 = icmp eq i64 %344, 0
  %346 = zext i1 %345 to i32
  %347 = call i32 @CHECK(i32 %346)
  %348 = load i32, i32* %3, align 4
  %349 = icmp eq i32 %348, 0
  %350 = zext i1 %349 to i32
  %351 = call i32 @CHECK(i32 %350)
  store i64 0, i64* @errno, align 8
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %354 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %355 = or i32 %353, %354
  %356 = call i32 @cap_fcntls_limit(i32 %352, i32 %355)
  %357 = icmp eq i32 %356, -1
  %358 = zext i1 %357 to i32
  %359 = call i32 @CHECK(i32 %358)
  %360 = load i64, i64* @errno, align 8
  %361 = load i64, i64* @ENOTCAPABLE, align 8
  %362 = icmp eq i64 %360, %361
  %363 = zext i1 %362 to i32
  %364 = call i32 @CHECK(i32 %363)
  store i32 0, i32* %3, align 4
  %365 = load i32, i32* %4, align 4
  %366 = call i64 @cap_fcntls_get(i32 %365, i32* %3)
  %367 = icmp eq i64 %366, 0
  %368 = zext i1 %367 to i32
  %369 = call i32 @CHECK(i32 %368)
  %370 = load i32, i32* %3, align 4
  %371 = icmp eq i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = call i32 @CHECK(i32 %372)
  store i64 0, i64* @errno, align 8
  %374 = load i32, i32* %4, align 4
  %375 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %376 = call i32 @cap_fcntls_limit(i32 %374, i32 %375)
  %377 = icmp eq i32 %376, -1
  %378 = zext i1 %377 to i32
  %379 = call i32 @CHECK(i32 %378)
  %380 = load i64, i64* @errno, align 8
  %381 = load i64, i64* @ENOTCAPABLE, align 8
  %382 = icmp eq i64 %380, %381
  %383 = zext i1 %382 to i32
  %384 = call i32 @CHECK(i32 %383)
  store i32 0, i32* %3, align 4
  %385 = load i32, i32* %4, align 4
  %386 = call i64 @cap_fcntls_get(i32 %385, i32* %3)
  %387 = icmp eq i64 %386, 0
  %388 = zext i1 %387 to i32
  %389 = call i32 @CHECK(i32 %388)
  %390 = load i32, i32* %3, align 4
  %391 = icmp eq i32 %390, 0
  %392 = zext i1 %391 to i32
  %393 = call i32 @CHECK(i32 %392)
  store i64 0, i64* @errno, align 8
  %394 = load i32, i32* %4, align 4
  %395 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %396 = call i32 @cap_fcntls_limit(i32 %394, i32 %395)
  %397 = icmp eq i32 %396, -1
  %398 = zext i1 %397 to i32
  %399 = call i32 @CHECK(i32 %398)
  %400 = load i64, i64* @errno, align 8
  %401 = load i64, i64* @ENOTCAPABLE, align 8
  %402 = icmp eq i64 %400, %401
  %403 = zext i1 %402 to i32
  %404 = call i32 @CHECK(i32 %403)
  store i32 0, i32* %3, align 4
  %405 = load i32, i32* %4, align 4
  %406 = call i64 @cap_fcntls_get(i32 %405, i32* %3)
  %407 = icmp eq i64 %406, 0
  %408 = zext i1 %407 to i32
  %409 = call i32 @CHECK(i32 %408)
  %410 = load i32, i32* %3, align 4
  %411 = icmp eq i32 %410, 0
  %412 = zext i1 %411 to i32
  %413 = call i32 @CHECK(i32 %412)
  %414 = load i32, i32* %4, align 4
  %415 = load i32, i32* @F_GETFD, align 4
  %416 = call i32 (i32, i32, ...) @fcntl(i32 %414, i32 %415)
  %417 = icmp eq i32 %416, 0
  %418 = zext i1 %417 to i32
  %419 = call i32 @CHECK(i32 %418)
  %420 = load i32, i32* %4, align 4
  %421 = load i32, i32* @F_SETFD, align 4
  %422 = load i32, i32* @FD_CLOEXEC, align 4
  %423 = call i32 (i32, i32, ...) @fcntl(i32 %420, i32 %421, i32 %422)
  %424 = icmp eq i32 %423, 0
  %425 = zext i1 %424 to i32
  %426 = call i32 @CHECK(i32 %425)
  %427 = load i32, i32* %4, align 4
  %428 = load i32, i32* @F_GETFD, align 4
  %429 = call i32 (i32, i32, ...) @fcntl(i32 %427, i32 %428)
  %430 = load i32, i32* @FD_CLOEXEC, align 4
  %431 = icmp eq i32 %429, %430
  %432 = zext i1 %431 to i32
  %433 = call i32 @CHECK(i32 %432)
  %434 = load i32, i32* %4, align 4
  %435 = load i32, i32* @F_SETFD, align 4
  %436 = call i32 (i32, i32, ...) @fcntl(i32 %434, i32 %435, i32 0)
  %437 = icmp eq i32 %436, 0
  %438 = zext i1 %437 to i32
  %439 = call i32 @CHECK(i32 %438)
  %440 = load i32, i32* %4, align 4
  %441 = load i32, i32* @F_GETFD, align 4
  %442 = call i32 (i32, i32, ...) @fcntl(i32 %440, i32 %441)
  %443 = icmp eq i32 %442, 0
  %444 = zext i1 %443 to i32
  %445 = call i32 @CHECK(i32 %444)
  store i64 0, i64* @errno, align 8
  %446 = load i32, i32* %4, align 4
  %447 = load i32, i32* @F_GETFL, align 4
  %448 = call i32 (i32, i32, ...) @fcntl(i32 %446, i32 %447)
  %449 = icmp eq i32 %448, -1
  %450 = zext i1 %449 to i32
  %451 = call i32 @CHECK(i32 %450)
  %452 = load i64, i64* @errno, align 8
  %453 = load i64, i64* @ENOTCAPABLE, align 8
  %454 = icmp eq i64 %452, %453
  %455 = zext i1 %454 to i32
  %456 = call i32 @CHECK(i32 %455)
  store i64 0, i64* @errno, align 8
  %457 = load i32, i32* %4, align 4
  %458 = load i32, i32* @F_SETFL, align 4
  %459 = load i32, i32* @O_NONBLOCK, align 4
  %460 = call i32 (i32, i32, ...) @fcntl(i32 %457, i32 %458, i32 %459)
  %461 = icmp eq i32 %460, -1
  %462 = zext i1 %461 to i32
  %463 = call i32 @CHECK(i32 %462)
  %464 = load i64, i64* @errno, align 8
  %465 = load i64, i64* @ENOTCAPABLE, align 8
  %466 = icmp eq i64 %464, %465
  %467 = zext i1 %466 to i32
  %468 = call i32 @CHECK(i32 %467)
  store i64 0, i64* @errno, align 8
  %469 = load i32, i32* %4, align 4
  %470 = load i32, i32* @F_SETFL, align 4
  %471 = call i32 (i32, i32, ...) @fcntl(i32 %469, i32 %470, i32 0)
  %472 = icmp eq i32 %471, -1
  %473 = zext i1 %472 to i32
  %474 = call i32 @CHECK(i32 %473)
  %475 = load i64, i64* @errno, align 8
  %476 = load i64, i64* @ENOTCAPABLE, align 8
  %477 = icmp eq i64 %475, %476
  %478 = zext i1 %477 to i32
  %479 = call i32 @CHECK(i32 %478)
  store i64 0, i64* @errno, align 8
  %480 = load i32, i32* %4, align 4
  %481 = load i32, i32* @F_GETFL, align 4
  %482 = call i32 (i32, i32, ...) @fcntl(i32 %480, i32 %481)
  %483 = icmp eq i32 %482, -1
  %484 = zext i1 %483 to i32
  %485 = call i32 @CHECK(i32 %484)
  %486 = load i64, i64* @errno, align 8
  %487 = load i64, i64* @ENOTCAPABLE, align 8
  %488 = icmp eq i64 %486, %487
  %489 = zext i1 %488 to i32
  %490 = call i32 @CHECK(i32 %489)
  %491 = load i32, i32* %4, align 4
  %492 = call i64 @close(i32 %491)
  %493 = icmp eq i64 %492, 0
  %494 = zext i1 %493 to i32
  %495 = call i32 @CHECK(i32 %494)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @descriptor_recv(i32, i32*) #1

declare dso_local i64 @cap_fcntls_get(i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @cap_fcntls_limit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
