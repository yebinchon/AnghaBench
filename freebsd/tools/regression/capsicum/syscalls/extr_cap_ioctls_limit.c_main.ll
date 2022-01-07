; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"1..607\0A\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"waitpid() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pdfork() failed\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"pdwait() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
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
  %14 = call i32 @ioctl_tests_0(i32 %13)
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
  %27 = call i32 @ioctl_tests_1(i32 %26)
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
  %40 = call i32 @ioctl_tests_2(i32 %39)
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
  %52 = call i32 (...) @fork()
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %65 [
    i32 -1, label %54
    i32 0, label %56
  ]

54:                                               ; preds = %0
  %55 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %0, %54
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ioctl_tests_0(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i64 @close(i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @CHECK(i32 %62)
  %64 = call i32 @exit(i32 0) #3
  unreachable

65:                                               ; preds = %0
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @waitpid(i32 %66, i32* null, i32 0)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @ioctl_tests_0(i32 %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = call i64 @close(i32 %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @CHECK(i32 %78)
  %80 = load i32, i32* @AF_UNIX, align 4
  %81 = load i32, i32* @SOCK_STREAM, align 4
  %82 = call i32 @socket(i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %2, align 4
  %83 = icmp sge i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @CHECK(i32 %84)
  %86 = call i32 (...) @fork()
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  switch i32 %87, label %100 [
    i32 -1, label %88
    i32 0, label %90
  ]

88:                                               ; preds = %74
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %74, %88
  %91 = call i32 @sleep(i32 1)
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @ioctl_tests_0(i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = call i64 @close(i32 %94)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @CHECK(i32 %97)
  %99 = call i32 @exit(i32 0) #3
  unreachable

100:                                              ; preds = %74
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @ioctl_tests_0(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @waitpid(i32 %103, i32* null, i32 0)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %2, align 4
  %111 = call i64 @close(i32 %110)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  %115 = load i32, i32* @AF_UNIX, align 4
  %116 = load i32, i32* @SOCK_STREAM, align 4
  %117 = call i32 @socket(i32 %115, i32 %116, i32 0)
  store i32 %117, i32* %2, align 4
  %118 = icmp sge i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @CHECK(i32 %119)
  %121 = call i32 @pdfork(i32* %3, i32 0)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  switch i32 %122, label %129 [
    i32 -1, label %123
    i32 0, label %125
  ]

123:                                              ; preds = %109
  %124 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %109, %123
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @ioctl_tests_1(i32 %126)
  %128 = call i32 @exit(i32 0) #3
  unreachable

129:                                              ; preds = %109
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @pdwait(i32 %130)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @close(i32 %136)
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @ioctl_tests_1(i32 %138)
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %2, align 4
  %142 = call i64 @close(i32 %141)
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @CHECK(i32 %144)
  %146 = load i32, i32* @AF_UNIX, align 4
  %147 = load i32, i32* @SOCK_STREAM, align 4
  %148 = call i32 @socket(i32 %146, i32 %147, i32 0)
  store i32 %148, i32* %2, align 4
  %149 = icmp sge i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @CHECK(i32 %150)
  %152 = call i32 @pdfork(i32* %3, i32 0)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  switch i32 %153, label %161 [
    i32 -1, label %154
    i32 0, label %156
  ]

154:                                              ; preds = %140
  %155 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %156

156:                                              ; preds = %140, %154
  %157 = call i32 @sleep(i32 1)
  %158 = load i32, i32* %2, align 4
  %159 = call i32 @ioctl_tests_1(i32 %158)
  %160 = call i32 @exit(i32 0) #3
  unreachable

161:                                              ; preds = %140
  %162 = load i32, i32* %2, align 4
  %163 = call i32 @ioctl_tests_1(i32 %162)
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @pdwait(i32 %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %161
  %170 = load i32, i32* %3, align 4
  %171 = call i64 @close(i32 %170)
  br label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %2, align 4
  %174 = call i64 @close(i32 %173)
  %175 = icmp eq i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @CHECK(i32 %176)
  %178 = load i32, i32* @AF_UNIX, align 4
  %179 = load i32, i32* @SOCK_STREAM, align 4
  %180 = call i32 @socket(i32 %178, i32 %179, i32 0)
  store i32 %180, i32* %2, align 4
  %181 = icmp sge i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @CHECK(i32 %182)
  %184 = call i32 (...) @fork()
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  switch i32 %185, label %192 [
    i32 -1, label %186
    i32 0, label %188
  ]

186:                                              ; preds = %172
  %187 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %188

188:                                              ; preds = %172, %186
  %189 = load i32, i32* %2, align 4
  %190 = call i32 @ioctl_tests_2(i32 %189)
  %191 = call i32 @exit(i32 0) #3
  unreachable

192:                                              ; preds = %172
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @waitpid(i32 %193, i32* null, i32 0)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %192
  %199 = load i32, i32* %2, align 4
  %200 = call i32 @ioctl_tests_2(i32 %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %2, align 4
  %203 = call i64 @close(i32 %202)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @CHECK(i32 %205)
  %207 = load i32, i32* @AF_UNIX, align 4
  %208 = load i32, i32* @SOCK_STREAM, align 4
  %209 = call i32 @socket(i32 %207, i32 %208, i32 0)
  store i32 %209, i32* %2, align 4
  %210 = icmp sge i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @CHECK(i32 %211)
  %213 = call i32 (...) @fork()
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  switch i32 %214, label %222 [
    i32 -1, label %215
    i32 0, label %217
  ]

215:                                              ; preds = %201
  %216 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %217

217:                                              ; preds = %201, %215
  %218 = call i32 @sleep(i32 1)
  %219 = load i32, i32* %2, align 4
  %220 = call i32 @ioctl_tests_2(i32 %219)
  %221 = call i32 @exit(i32 0) #3
  unreachable

222:                                              ; preds = %201
  %223 = load i32, i32* %2, align 4
  %224 = call i32 @ioctl_tests_2(i32 %223)
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @waitpid(i32 %225, i32* null, i32 0)
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %222
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %2, align 4
  %233 = call i64 @close(i32 %232)
  %234 = icmp eq i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @CHECK(i32 %235)
  %237 = load i32, i32* @AF_UNIX, align 4
  %238 = load i32, i32* @SOCK_STREAM, align 4
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %240 = call i64 @socketpair(i32 %237, i32 %238, i32 0, i32* %239)
  %241 = icmp eq i64 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i32 @CHECK(i32 %242)
  %244 = call i32 (...) @fork()
  store i32 %244, i32* %5, align 4
  %245 = icmp sge i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @CHECK(i32 %246)
  %248 = load i32, i32* %5, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %231
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @close(i32 %252)
  %254 = icmp eq i64 %253, 0
  %255 = zext i1 %254 to i32
  %256 = call i32 @CHECK(i32 %255)
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ioctl_tests_recv_0(i32 %258)
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @close(i32 %261)
  %263 = icmp eq i64 %262, 0
  %264 = zext i1 %263 to i32
  %265 = call i32 @CHECK(i32 %264)
  %266 = call i32 @exit(i32 0) #3
  unreachable

267:                                              ; preds = %231
  %268 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @close(i32 %269)
  %271 = icmp eq i64 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @CHECK(i32 %272)
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @ioctl_tests_send_0(i32 %275)
  %277 = load i32, i32* %5, align 4
  %278 = call i32 @waitpid(i32 %277, i32* null, i32 0)
  %279 = load i32, i32* %5, align 4
  %280 = icmp eq i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @CHECK(i32 %281)
  %283 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @close(i32 %284)
  %286 = icmp eq i64 %285, 0
  %287 = zext i1 %286 to i32
  %288 = call i32 @CHECK(i32 %287)
  br label %289

289:                                              ; preds = %267
  %290 = load i32, i32* @AF_UNIX, align 4
  %291 = load i32, i32* @SOCK_STREAM, align 4
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %293 = call i64 @socketpair(i32 %290, i32 %291, i32 0, i32* %292)
  %294 = icmp eq i64 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i32 @CHECK(i32 %295)
  %297 = call i32 (...) @fork()
  store i32 %297, i32* %5, align 4
  %298 = icmp sge i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @CHECK(i32 %299)
  %301 = load i32, i32* %5, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %320

303:                                              ; preds = %289
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @close(i32 %305)
  %307 = icmp eq i64 %306, 0
  %308 = zext i1 %307 to i32
  %309 = call i32 @CHECK(i32 %308)
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ioctl_tests_send_0(i32 %311)
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = call i64 @close(i32 %314)
  %316 = icmp eq i64 %315, 0
  %317 = zext i1 %316 to i32
  %318 = call i32 @CHECK(i32 %317)
  %319 = call i32 @exit(i32 0) #3
  unreachable

320:                                              ; preds = %289
  %321 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = call i64 @close(i32 %322)
  %324 = icmp eq i64 %323, 0
  %325 = zext i1 %324 to i32
  %326 = call i32 @CHECK(i32 %325)
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @ioctl_tests_recv_0(i32 %328)
  %330 = load i32, i32* %5, align 4
  %331 = call i32 @waitpid(i32 %330, i32* null, i32 0)
  %332 = load i32, i32* %5, align 4
  %333 = icmp eq i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = call i32 @CHECK(i32 %334)
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = call i64 @close(i32 %337)
  %339 = icmp eq i64 %338, 0
  %340 = zext i1 %339 to i32
  %341 = call i32 @CHECK(i32 %340)
  br label %342

342:                                              ; preds = %320
  %343 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ioctl_tests_0(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @ioctl_tests_1(i32) #1

declare dso_local i32 @ioctl_tests_2(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @pdwait(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @ioctl_tests_recv_0(i32) #1

declare dso_local i32 @ioctl_tests_send_0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
