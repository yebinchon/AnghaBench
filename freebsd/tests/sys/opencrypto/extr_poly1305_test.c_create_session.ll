; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/opencrypto/extr_poly1305_test.c_create_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/opencrypto/extr_poly1305_test.c_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session2_op = type { i32, i64, i32, i32, i8* }

@CIOCGSESSION2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"alg %d keylen %zu, errno=%d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i64)* @create_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_session(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.session2_op, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = call i32 @memset(%struct.session2_op* %11, i32 0, i32 32)
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.session2_op, %struct.session2_op* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds %struct.session2_op, %struct.session2_op* %11, i32 0, i32 4
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.session2_op, %struct.session2_op* %11, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.session2_op, %struct.session2_op* %11, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CIOCGSESSION2, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, %struct.session2_op* %11)
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @ATF_REQUIRE_MSG(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %28, i32 %30)
  %32 = getelementptr inbounds %struct.session2_op, %struct.session2_op* %11, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.session2_op*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.session2_op*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
