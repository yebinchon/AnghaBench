; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@IP_MULTICAST_IF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"IP_MULTICAST_IF\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"raw_sock\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tcp_sock\00", align 1
@WARN_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"udp_sock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @test_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_if(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca %struct.in_addr, align 8
  %9 = alloca %struct.in_addr, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = call i8* @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = call i8* @inet_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @IP_MULTICAST_IF, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @test_in_addr(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %21, i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 0)
  %25 = load i32, i32* @IP_MULTICAST_IF, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WARN_SUCCESS, align 4
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @test_in_addr(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %29, i8* %31, i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 %27)
  %35 = load i32, i32* @IP_MULTICAST_IF, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @test_in_addr(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %40, i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %36, i32 0)
  ret void
}

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i32 @test_in_addr(i32, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
