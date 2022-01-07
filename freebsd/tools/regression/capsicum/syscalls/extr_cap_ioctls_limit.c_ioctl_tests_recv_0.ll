; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_recv_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_recv_0.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ioctl_tests_recv_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl_tests_recv_0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i64], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @descriptor_recv(i32 %5, i32* %4)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @CHECK(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @cap_ioctls_get(i32 %10, i64* null, i32 0)
  %12 = load i32, i32* @CAP_IOCTLS_ALL, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @F_GETFD, align 4
  %18 = call i64 (i32, i32, ...) @fcntl(i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @CHECK(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* @FIOCLEX, align 8
  %24 = call i32 @ioctl(i32 %22, i64 %23)
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @CHECK(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @F_GETFD, align 4
  %30 = call i64 (i32, i32, ...) @fcntl(i32 %28, i32 %29)
  %31 = load i64, i64* @FD_CLOEXEC, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i64, i64* @FIONCLEX, align 8
  %37 = call i32 @ioctl(i32 %35, i64 %36)
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @F_GETFD, align 4
  %43 = call i64 (i32, i32, ...) @fcntl(i32 %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHECK(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @close(i32 %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i64 @descriptor_recv(i32 %52, i32* %4)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %58, align 16
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %62 = call i32 @nitems(i64* %61)
  %63 = call i32 @cap_ioctls_get(i32 %59, i64* %60, i32 %62)
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %65 = call i32 @nitems(i64* %64)
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @CHECK(i32 %67)
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %70 = load i64, i64* %69, align 16
  %71 = load i64, i64* @FIOCLEX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %1
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FIONCLEX, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %73, %1
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = load i64, i64* @FIONCLEX, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FIOCLEX, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  br label %90

90:                                               ; preds = %88, %73
  %91 = phi i1 [ true, %73 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @CHECK(i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @F_GETFD, align 4
  %96 = call i64 (i32, i32, ...) @fcntl(i32 %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @CHECK(i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i64, i64* @FIOCLEX, align 8
  %102 = call i32 @ioctl(i32 %100, i64 %101)
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @CHECK(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @F_GETFD, align 4
  %108 = call i64 (i32, i32, ...) @fcntl(i32 %106, i32 %107)
  %109 = load i64, i64* @FD_CLOEXEC, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @CHECK(i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load i64, i64* @FIONCLEX, align 8
  %115 = call i32 @ioctl(i32 %113, i64 %114)
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @F_GETFD, align 4
  %121 = call i64 (i32, i32, ...) @fcntl(i32 %119, i32 %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @CHECK(i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @close(i32 %125)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @CHECK(i32 %128)
  %130 = load i32, i32* %2, align 4
  %131 = call i64 @descriptor_recv(i32 %130, i32* %4)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @CHECK(i32 %133)
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %135, align 8
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %136, align 16
  %137 = load i32, i32* %4, align 4
  %138 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %139 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %140 = call i32 @nitems(i64* %139)
  %141 = call i32 @cap_ioctls_get(i32 %137, i64* %138, i32 %140)
  %142 = icmp eq i32 %141, 1
  %143 = zext i1 %142 to i32
  %144 = call i32 @CHECK(i32 %143)
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %146 = load i64, i64* %145, align 16
  %147 = load i64, i64* @FIOCLEX, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @CHECK(i32 %149)
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @F_GETFD, align 4
  %153 = call i64 (i32, i32, ...) @fcntl(i32 %151, i32 %152)
  %154 = icmp eq i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @CHECK(i32 %155)
  %157 = load i32, i32* %4, align 4
  %158 = load i64, i64* @FIOCLEX, align 8
  %159 = call i32 @ioctl(i32 %157, i64 %158)
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @CHECK(i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @F_GETFD, align 4
  %165 = call i64 (i32, i32, ...) @fcntl(i32 %163, i32 %164)
  %166 = load i64, i64* @FD_CLOEXEC, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @CHECK(i32 %168)
  store i64 0, i64* @errno, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load i64, i64* @FIONCLEX, align 8
  %172 = call i32 @ioctl(i32 %170, i64 %171)
  %173 = icmp eq i32 %172, -1
  %174 = zext i1 %173 to i32
  %175 = call i32 @CHECK(i32 %174)
  %176 = load i64, i64* @errno, align 8
  %177 = load i64, i64* @ENOTCAPABLE, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @CHECK(i32 %179)
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @F_GETFD, align 4
  %183 = call i64 (i32, i32, ...) @fcntl(i32 %181, i32 %182)
  %184 = load i64, i64* @FD_CLOEXEC, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @CHECK(i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @F_SETFD, align 4
  %190 = call i64 (i32, i32, ...) @fcntl(i32 %188, i32 %189, i32 0)
  %191 = icmp eq i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @CHECK(i32 %192)
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @F_GETFD, align 4
  %196 = call i64 (i32, i32, ...) @fcntl(i32 %194, i32 %195)
  %197 = icmp eq i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @CHECK(i32 %198)
  %200 = load i32, i32* %4, align 4
  %201 = call i64 @close(i32 %200)
  %202 = icmp eq i64 %201, 0
  %203 = zext i1 %202 to i32
  %204 = call i32 @CHECK(i32 %203)
  %205 = load i32, i32* %2, align 4
  %206 = call i64 @descriptor_recv(i32 %205, i32* %4)
  %207 = icmp eq i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i32 @CHECK(i32 %208)
  %210 = load i32, i32* %4, align 4
  %211 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %212 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %213 = call i32 @nitems(i64* %212)
  %214 = call i32 @cap_ioctls_get(i32 %210, i64* %211, i32 %213)
  %215 = icmp eq i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @CHECK(i32 %216)
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @F_GETFD, align 4
  %220 = call i64 (i32, i32, ...) @fcntl(i32 %218, i32 %219)
  %221 = icmp eq i64 %220, 0
  %222 = zext i1 %221 to i32
  %223 = call i32 @CHECK(i32 %222)
  store i64 0, i64* @errno, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load i64, i64* @FIOCLEX, align 8
  %226 = call i32 @ioctl(i32 %224, i64 %225)
  %227 = icmp eq i32 %226, -1
  %228 = zext i1 %227 to i32
  %229 = call i32 @CHECK(i32 %228)
  %230 = load i64, i64* @errno, align 8
  %231 = load i64, i64* @ENOTCAPABLE, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @CHECK(i32 %233)
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @F_GETFD, align 4
  %237 = call i64 (i32, i32, ...) @fcntl(i32 %235, i32 %236)
  %238 = icmp eq i64 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @CHECK(i32 %239)
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @F_SETFD, align 4
  %243 = load i64, i64* @FD_CLOEXEC, align 8
  %244 = call i64 (i32, i32, ...) @fcntl(i32 %241, i32 %242, i64 %243)
  %245 = icmp eq i64 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @CHECK(i32 %246)
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @F_GETFD, align 4
  %250 = call i64 (i32, i32, ...) @fcntl(i32 %248, i32 %249)
  %251 = load i64, i64* @FD_CLOEXEC, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @CHECK(i32 %253)
  store i64 0, i64* @errno, align 8
  %255 = load i32, i32* %4, align 4
  %256 = load i64, i64* @FIONCLEX, align 8
  %257 = call i32 @ioctl(i32 %255, i64 %256)
  %258 = icmp eq i32 %257, -1
  %259 = zext i1 %258 to i32
  %260 = call i32 @CHECK(i32 %259)
  %261 = load i64, i64* @errno, align 8
  %262 = load i64, i64* @ENOTCAPABLE, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @CHECK(i32 %264)
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @F_GETFD, align 4
  %268 = call i64 (i32, i32, ...) @fcntl(i32 %266, i32 %267)
  %269 = load i64, i64* @FD_CLOEXEC, align 8
  %270 = icmp eq i64 %268, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 @CHECK(i32 %271)
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @F_SETFD, align 4
  %275 = call i64 (i32, i32, ...) @fcntl(i32 %273, i32 %274, i32 0)
  %276 = icmp eq i64 %275, 0
  %277 = zext i1 %276 to i32
  %278 = call i32 @CHECK(i32 %277)
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @F_GETFD, align 4
  %281 = call i64 (i32, i32, ...) @fcntl(i32 %279, i32 %280)
  %282 = icmp eq i64 %281, 0
  %283 = zext i1 %282 to i32
  %284 = call i32 @CHECK(i32 %283)
  %285 = load i32, i32* %4, align 4
  %286 = call i64 @close(i32 %285)
  %287 = icmp eq i64 %286, 0
  %288 = zext i1 %287 to i32
  %289 = call i32 @CHECK(i32 %288)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @descriptor_recv(i32, i32*) #1

declare dso_local i32 @cap_ioctls_get(i32, i64*, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @ioctl(i32, i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
