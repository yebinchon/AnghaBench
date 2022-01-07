; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mreq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@TEST_MADDR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"raw_sock\00", align 1
@WARN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @test_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_addr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_mreq, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** @TEST_MADDR, align 8
  %9 = call i8* @inet_addr(i8* %8)
  %10 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = call i8* @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %7, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = bitcast %struct.ip_mreq* %7 to { i8*, i8* }*
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %16, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @test_add_multi(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %20, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = bitcast %struct.ip_mreq* %7 to { i8*, i8* }*
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %23, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @test_drop_multi(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %27, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WARN_SUCCESS, align 4
  %31 = bitcast %struct.ip_mreq* %7 to { i8*, i8* }*
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %31, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @test_add_multi(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %35, i32 %30)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @WARN_SUCCESS, align 4
  %39 = bitcast %struct.ip_mreq* %7 to { i8*, i8* }*
  %40 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @test_drop_multi(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %43, i32 %38)
  %45 = load i32, i32* %6, align 4
  %46 = bitcast %struct.ip_mreq* %7 to { i8*, i8* }*
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %46, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @test_add_multi(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %50, i32 0)
  %52 = load i32, i32* %6, align 4
  %53 = bitcast %struct.ip_mreq* %7 to { i8*, i8* }*
  %54 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %53, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @test_drop_multi(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %57, i32 0)
  ret void
}

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i32 @test_add_multi(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @test_drop_multi(i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
