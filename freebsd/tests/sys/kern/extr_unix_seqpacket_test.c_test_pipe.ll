; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@test_pipe_writer = common dso_local global i32 0, align 4
@test_pipe_reader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pipe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MIN(i32 %12, i32 %13)
  %15 = sdiv i32 %14, 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = call i32 @do_socketpair(i32* %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SOL_SOCKET, align 4
  %22 = load i32, i32* @SO_SNDBUF, align 4
  %23 = call i32 @setsockopt(i32 %20, i32 %21, i32 %22, i32* %3, i32 4)
  %24 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SOL_SOCKET, align 4
  %28 = load i32, i32* @SO_RCVBUF, align 4
  %29 = call i32 @setsockopt(i32 %26, i32 %27, i32 %28, i32* %4, i32 4)
  %30 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @MAX(i32 %31, i32 %32)
  %34 = mul nsw i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %10, align 8
  %37 = udiv i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @test_pipe_writer, align 4
  %54 = bitcast %struct.TYPE_2__* %5 to i8*
  %55 = call i32 @pthread_create(i32* %7, i32* null, i32 %53, i8* %54)
  %56 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %55)
  %57 = call i32 @usleep(i32 1000)
  %58 = load i32, i32* @test_pipe_reader, align 4
  %59 = bitcast %struct.TYPE_2__* %6 to i8*
  %60 = call i32 @pthread_create(i32* %8, i32* null, i32 %58, i8* %59)
  %61 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pthread_join(i32 %62, i32* null)
  %64 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @pthread_join(i32 %65, i32* null)
  %67 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %66)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @close(i32 %72)
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @do_socketpair(i32*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
