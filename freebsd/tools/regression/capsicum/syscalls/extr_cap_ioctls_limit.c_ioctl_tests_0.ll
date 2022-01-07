; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_IOCTLS_ALL = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FIOCLEX = common dso_local global i64 0, align 8
@FD_CLOEXEC = common dso_local global i64 0, align 8
@FIONCLEX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@F_SETFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ioctl_tests_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl_tests_0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i64], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @cap_ioctls_get(i32 %4, i64* null, i32 0)
  %6 = load i32, i32* @CAP_IOCTLS_ALL, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @CHECK(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @F_GETFD, align 4
  %12 = call i64 (i32, i32, ...) @fcntl(i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* @FIOCLEX, align 8
  %18 = call i32 @ioctl(i32 %16, i64 %17)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @CHECK(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @F_GETFD, align 4
  %24 = call i64 (i32, i32, ...) @fcntl(i32 %22, i32 %23)
  %25 = load i64, i64* @FD_CLOEXEC, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @CHECK(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i64, i64* @FIONCLEX, align 8
  %31 = call i32 @ioctl(i32 %29, i64 %30)
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @F_GETFD, align 4
  %37 = call i64 (i32, i32, ...) @fcntl(i32 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  %41 = load i64, i64* @FIOCLEX, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %41, i64* %42, align 16
  %43 = load i64, i64* @FIONCLEX, align 8
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %2, align 4
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %48 = call i32 @nitems(i64* %47)
  %49 = call i32 @cap_ioctls_limit(i32 %45, i64* %46, i32 %48)
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @CHECK(i32 %51)
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %54, align 16
  %55 = load i32, i32* %2, align 4
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %58 = call i32 @nitems(i64* %57)
  %59 = call i32 @cap_ioctls_get(i32 %55, i64* %56, i32 %58)
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %61 = call i32 @nitems(i64* %60)
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @CHECK(i32 %63)
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %66 = load i64, i64* %65, align 16
  %67 = load i64, i64* @FIOCLEX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %1
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FIONCLEX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %69, %1
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %76 = load i64, i64* %75, align 16
  %77 = load i64, i64* @FIONCLEX, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FIOCLEX, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br label %86

86:                                               ; preds = %84, %69
  %87 = phi i1 [ true, %69 ], [ %85, %84 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @CHECK(i32 %88)
  %90 = load i64, i64* @FIOCLEX, align 8
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %90, i64* %91, align 16
  %92 = load i64, i64* @FIONCLEX, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %92, i64* %93, align 8
  %94 = load i32, i32* %2, align 4
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %97 = call i32 @nitems(i64* %96)
  %98 = call i32 @cap_ioctls_limit(i32 %94, i64* %95, i32 %97)
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @CHECK(i32 %100)
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %103, align 16
  %104 = load i32, i32* %2, align 4
  %105 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %106 = call i32 @cap_ioctls_get(i32 %104, i64* %105, i32 1)
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %108 = call i32 @nitems(i64* %107)
  %109 = icmp eq i32 %106, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @CHECK(i32 %110)
  %112 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %113 = load i64, i64* %112, align 16
  %114 = load i64, i64* @FIOCLEX, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %86
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %118 = load i64, i64* %117, align 16
  %119 = load i64, i64* @FIONCLEX, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %116, %86
  %122 = phi i1 [ true, %86 ], [ %120, %116 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @CHECK(i32 %123)
  %125 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @CHECK(i32 %128)
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @F_GETFD, align 4
  %132 = call i64 (i32, i32, ...) @fcntl(i32 %130, i32 %131)
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @CHECK(i32 %134)
  %136 = load i32, i32* %2, align 4
  %137 = load i64, i64* @FIOCLEX, align 8
  %138 = call i32 @ioctl(i32 %136, i64 %137)
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @CHECK(i32 %140)
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @F_GETFD, align 4
  %144 = call i64 (i32, i32, ...) @fcntl(i32 %142, i32 %143)
  %145 = load i64, i64* @FD_CLOEXEC, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @CHECK(i32 %147)
  %149 = load i32, i32* %2, align 4
  %150 = load i64, i64* @FIONCLEX, align 8
  %151 = call i32 @ioctl(i32 %149, i64 %150)
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @CHECK(i32 %153)
  %155 = load i32, i32* %2, align 4
  %156 = load i32, i32* @F_GETFD, align 4
  %157 = call i64 (i32, i32, ...) @fcntl(i32 %155, i32 %156)
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @CHECK(i32 %159)
  %161 = load i64, i64* @FIOCLEX, align 8
  %162 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %161, i64* %162, align 16
  %163 = load i32, i32* %2, align 4
  %164 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %165 = call i32 @cap_ioctls_limit(i32 %163, i64* %164, i32 1)
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @CHECK(i32 %167)
  %169 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %169, align 8
  %170 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %170, align 16
  %171 = load i32, i32* %2, align 4
  %172 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %173 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %174 = call i32 @nitems(i64* %173)
  %175 = call i32 @cap_ioctls_get(i32 %171, i64* %172, i32 %174)
  %176 = icmp eq i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = call i32 @CHECK(i32 %177)
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %180 = load i64, i64* %179, align 16
  %181 = load i64, i64* @FIOCLEX, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @CHECK(i32 %183)
  %185 = load i64, i64* @FIOCLEX, align 8
  %186 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %185, i64* %186, align 16
  %187 = load i64, i64* @FIONCLEX, align 8
  %188 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %187, i64* %188, align 8
  store i64 0, i64* @errno, align 8
  %189 = load i32, i32* %2, align 4
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %191 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %192 = call i32 @nitems(i64* %191)
  %193 = call i32 @cap_ioctls_limit(i32 %189, i64* %190, i32 %192)
  %194 = icmp eq i32 %193, -1
  %195 = zext i1 %194 to i32
  %196 = call i32 @CHECK(i32 %195)
  %197 = load i64, i64* @errno, align 8
  %198 = load i64, i64* @ENOTCAPABLE, align 8
  %199 = icmp eq i64 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @CHECK(i32 %200)
  %202 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %202, align 8
  %203 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %203, align 16
  %204 = load i32, i32* %2, align 4
  %205 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %206 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %207 = call i32 @nitems(i64* %206)
  %208 = call i32 @cap_ioctls_get(i32 %204, i64* %205, i32 %207)
  %209 = icmp eq i32 %208, 1
  %210 = zext i1 %209 to i32
  %211 = call i32 @CHECK(i32 %210)
  %212 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %213 = load i64, i64* %212, align 16
  %214 = load i64, i64* @FIOCLEX, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @CHECK(i32 %216)
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* @F_GETFD, align 4
  %220 = call i64 (i32, i32, ...) @fcntl(i32 %218, i32 %219)
  %221 = icmp eq i64 %220, 0
  %222 = zext i1 %221 to i32
  %223 = call i32 @CHECK(i32 %222)
  %224 = load i32, i32* %2, align 4
  %225 = load i64, i64* @FIOCLEX, align 8
  %226 = call i32 @ioctl(i32 %224, i64 %225)
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @CHECK(i32 %228)
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* @F_GETFD, align 4
  %232 = call i64 (i32, i32, ...) @fcntl(i32 %230, i32 %231)
  %233 = load i64, i64* @FD_CLOEXEC, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @CHECK(i32 %235)
  store i64 0, i64* @errno, align 8
  %237 = load i32, i32* %2, align 4
  %238 = load i64, i64* @FIONCLEX, align 8
  %239 = call i32 @ioctl(i32 %237, i64 %238)
  %240 = icmp eq i32 %239, -1
  %241 = zext i1 %240 to i32
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i64, i64* @errno, align 8
  %244 = load i64, i64* @ENOTCAPABLE, align 8
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @CHECK(i32 %246)
  %248 = load i32, i32* %2, align 4
  %249 = load i32, i32* @F_GETFD, align 4
  %250 = call i64 (i32, i32, ...) @fcntl(i32 %248, i32 %249)
  %251 = load i64, i64* @FD_CLOEXEC, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @CHECK(i32 %253)
  %255 = load i32, i32* %2, align 4
  %256 = load i32, i32* @F_SETFD, align 4
  %257 = call i64 (i32, i32, ...) @fcntl(i32 %255, i32 %256, i32 0)
  %258 = icmp eq i64 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @CHECK(i32 %259)
  %261 = load i32, i32* %2, align 4
  %262 = load i32, i32* @F_GETFD, align 4
  %263 = call i64 (i32, i32, ...) @fcntl(i32 %261, i32 %262)
  %264 = icmp eq i64 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @CHECK(i32 %265)
  %267 = load i32, i32* %2, align 4
  %268 = call i32 @cap_ioctls_limit(i32 %267, i64* null, i32 0)
  %269 = icmp eq i32 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 @CHECK(i32 %270)
  %272 = load i32, i32* %2, align 4
  %273 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %274 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %275 = call i32 @nitems(i64* %274)
  %276 = call i32 @cap_ioctls_get(i32 %272, i64* %273, i32 %275)
  %277 = icmp eq i32 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @CHECK(i32 %278)
  %280 = load i64, i64* @FIOCLEX, align 8
  %281 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %280, i64* %281, align 16
  store i64 0, i64* @errno, align 8
  %282 = load i32, i32* %2, align 4
  %283 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %284 = call i32 @cap_ioctls_limit(i32 %282, i64* %283, i32 1)
  %285 = icmp eq i32 %284, -1
  %286 = zext i1 %285 to i32
  %287 = call i32 @CHECK(i32 %286)
  %288 = load i64, i64* @errno, align 8
  %289 = load i64, i64* @ENOTCAPABLE, align 8
  %290 = icmp eq i64 %288, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 @CHECK(i32 %291)
  %293 = load i32, i32* %2, align 4
  %294 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %295 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %296 = call i32 @nitems(i64* %295)
  %297 = call i32 @cap_ioctls_get(i32 %293, i64* %294, i32 %296)
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @CHECK(i32 %299)
  %301 = load i32, i32* %2, align 4
  %302 = load i32, i32* @F_GETFD, align 4
  %303 = call i64 (i32, i32, ...) @fcntl(i32 %301, i32 %302)
  %304 = icmp eq i64 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i32 @CHECK(i32 %305)
  store i64 0, i64* @errno, align 8
  %307 = load i32, i32* %2, align 4
  %308 = load i64, i64* @FIOCLEX, align 8
  %309 = call i32 @ioctl(i32 %307, i64 %308)
  %310 = icmp eq i32 %309, -1
  %311 = zext i1 %310 to i32
  %312 = call i32 @CHECK(i32 %311)
  %313 = load i64, i64* @errno, align 8
  %314 = load i64, i64* @ENOTCAPABLE, align 8
  %315 = icmp eq i64 %313, %314
  %316 = zext i1 %315 to i32
  %317 = call i32 @CHECK(i32 %316)
  %318 = load i32, i32* %2, align 4
  %319 = load i32, i32* @F_GETFD, align 4
  %320 = call i64 (i32, i32, ...) @fcntl(i32 %318, i32 %319)
  %321 = icmp eq i64 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @CHECK(i32 %322)
  %324 = load i32, i32* %2, align 4
  %325 = load i32, i32* @F_SETFD, align 4
  %326 = load i64, i64* @FD_CLOEXEC, align 8
  %327 = call i64 (i32, i32, ...) @fcntl(i32 %324, i32 %325, i64 %326)
  %328 = icmp eq i64 %327, 0
  %329 = zext i1 %328 to i32
  %330 = call i32 @CHECK(i32 %329)
  %331 = load i32, i32* %2, align 4
  %332 = load i32, i32* @F_GETFD, align 4
  %333 = call i64 (i32, i32, ...) @fcntl(i32 %331, i32 %332)
  %334 = load i64, i64* @FD_CLOEXEC, align 8
  %335 = icmp eq i64 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 @CHECK(i32 %336)
  store i64 0, i64* @errno, align 8
  %338 = load i32, i32* %2, align 4
  %339 = load i64, i64* @FIONCLEX, align 8
  %340 = call i32 @ioctl(i32 %338, i64 %339)
  %341 = icmp eq i32 %340, -1
  %342 = zext i1 %341 to i32
  %343 = call i32 @CHECK(i32 %342)
  %344 = load i64, i64* @errno, align 8
  %345 = load i64, i64* @ENOTCAPABLE, align 8
  %346 = icmp eq i64 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 @CHECK(i32 %347)
  %349 = load i32, i32* %2, align 4
  %350 = load i32, i32* @F_GETFD, align 4
  %351 = call i64 (i32, i32, ...) @fcntl(i32 %349, i32 %350)
  %352 = load i64, i64* @FD_CLOEXEC, align 8
  %353 = icmp eq i64 %351, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 @CHECK(i32 %354)
  %356 = load i32, i32* %2, align 4
  %357 = load i32, i32* @F_SETFD, align 4
  %358 = call i64 (i32, i32, ...) @fcntl(i32 %356, i32 %357, i32 0)
  %359 = icmp eq i64 %358, 0
  %360 = zext i1 %359 to i32
  %361 = call i32 @CHECK(i32 %360)
  %362 = load i32, i32* %2, align 4
  %363 = load i32, i32* @F_GETFD, align 4
  %364 = call i64 (i32, i32, ...) @fcntl(i32 %362, i32 %363)
  %365 = icmp eq i64 %364, 0
  %366 = zext i1 %365 to i32
  %367 = call i32 @CHECK(i32 %366)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @cap_ioctls_get(i32, i64*, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @ioctl(i32, i64) #1

declare dso_local i32 @cap_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
