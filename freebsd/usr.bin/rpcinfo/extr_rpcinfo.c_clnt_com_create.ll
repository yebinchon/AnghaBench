; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_clnt_com_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_clnt_com_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rpcinfo\00", align 1
@MIN_VERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"program %lu is not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"program %lu version %lu is not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sockaddr_in*, i64, i64, i32*, i8*)* @clnt_com_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clnt_com_create(%struct.sockaddr_in* %0, i64 %1, i64 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.timeval, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @clnttcp_create(%struct.sockaddr_in* %17, i64 %18, i64 %19, i32* %20, i32 0, i32 0)
  store i32* %21, i32** %11, align 8
  br label %35

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = bitcast %struct.timeval* %12 to { i32, i64 }*
  %30 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @clntudp_create(%struct.sockaddr_in* %25, i64 %26, i64 %27, i32 %31, i64 %33, i32* %28)
  store i32* %34, i32** %11, align 8
  br label %35

35:                                               ; preds = %22, %16
  %36 = load i32*, i32** %11, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @MIN_VERS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %50

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %35
  %53 = load i32*, i32** %11, align 8
  ret i32* %53
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i64, i64, i32*, i32, i32) #1

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i64, i64, i32, i64, i32*) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
