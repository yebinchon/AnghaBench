; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpdrop/extr_tcpdrop.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpdrop/extr_tcpdrop.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Using port %d\0A\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fork\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @PF_INET, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = call i32 @bzero(%struct.sockaddr_in* %8, i32 24)
  %21 = load i8*, i8** @AF_INET, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 24, i32* %23, align 8
  %24 = load i32, i32* @INADDR_LOOPBACK, align 4
  %25 = call i32 @htonl(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %30 = call i64 @bind(i32 %28, %struct.sockaddr* %29, i32 24)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %19
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @listen(i32 %35, i32 -1)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = call i32 @bzero(%struct.sockaddr_in* %8, i32 24)
  %42 = load i8*, i8** @AF_INET, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 24, i32* %44, align 8
  store i32 24, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %47 = call i64 @getsockname(i32 %45, %struct.sockaddr* %46, i32* %11)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @SIGCHLD, align 4
  %58 = load i32, i32* @SIG_IGN, align 4
  %59 = call i64 @signal(i32 %57, i32 %58)
  %60 = load i64, i64* @SIG_ERR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %51
  %65 = call i64 (...) @getpid()
  store i64 %65, i64* %7, align 8
  %66 = call i64 (...) @fork()
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i64 (...) @getpid()
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @tcp_server(i64 %76, i32 %77)
  br label %83

79:                                               ; preds = %71
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @tcp_client(i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @tcp_server(i64, i32) #1

declare dso_local i32 @tcp_client(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
