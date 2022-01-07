; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_onehost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_onehost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"unknown host \22%s\22\00", align 1
@RUSERSPROG = common dso_local global i32 0, align 4
@RUSERSVERS_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RUSERSPROC_NAMES = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_utmpidlearr = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @onehost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onehost(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call %struct.hostent* @gethostbyname(i8* %8)
  store %struct.hostent* %9, %struct.hostent** %6, align 8
  %10 = load %struct.hostent*, %struct.hostent** %6, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @RUSERSPROG, align 4
  %18 = load i32, i32* @RUSERSVERS_IDLE, align 4
  %19 = call i32* @clnt_create(i8* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i8* @clnt_spcreateerror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = call i32 @memset(i32* %3, i32 0, i32 4)
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 15, i32* %27, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @RUSERSPROC_NAMES, align 4
  %31 = load i64, i64* @xdr_void, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @xdr_utmpidlearr, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @clnt_call(i32* %29, i32 %30, i32 %32, i32* null, i32 %34, i32* %3, %struct.timeval* byval(%struct.timeval) align 8 %7)
  %36 = load i64, i64* @RPC_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @clnt_sperror(i32* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %25
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.hostent*, %struct.hostent** %6, align 8
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32* %44, i32 %47, i32 4)
  %49 = call i32 @rusers_reply(i32* %3, %struct.sockaddr_in* %5)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @clnt_destroy(i32* %50)
  ret void
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i8* @clnt_spcreateerror(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i32*, i32, i32*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i8* @clnt_sperror(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rusers_reply(i32*, %struct.sockaddr_in*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
