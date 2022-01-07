; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_recv_pkt_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_recv_pkt_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i32*, i32 }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: %s: recv(%d)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: %s: recv(%d): short recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*, i32, i8*, i8*, i64, %struct.timespec*)* @recv_pkt_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_pkt_recv(%struct.test_ctx* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.timespec* %5) #0 {
  %7 = alloca %struct.test_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec*, align 8
  %13 = alloca i64, align 8
  store %struct.test_ctx* %0, %struct.test_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.timespec* %5, %struct.timespec** %12, align 8
  %14 = load %struct.test_ctx*, %struct.test_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @recv(i32 %20, i8* %21, i64 %22, i32 0)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.test_ctx*, %struct.test_ctx** %7, align 8
  %25 = call i32 @get_clock_type(%struct.test_ctx* %24)
  %26 = load %struct.timespec*, %struct.timespec** %12, align 8
  %27 = call i32 @clock_gettime(i32 %25, %struct.timespec* %26)
  %28 = load i64, i64* %13, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %6
  %31 = load %struct.test_ctx*, %struct.test_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.test_ctx*, %struct.test_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34, i32 %41)
  br label %43

43:                                               ; preds = %30, %6
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.test_ctx*, %struct.test_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.test_ctx*, %struct.test_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %51, i32 %58)
  br label %60

60:                                               ; preds = %47, %43
  ret void
}

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @get_clock_type(%struct.test_ctx*) #1

declare dso_local i32 @err(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
