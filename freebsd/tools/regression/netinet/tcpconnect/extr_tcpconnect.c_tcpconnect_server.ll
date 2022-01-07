; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpconnect/extr_tcpconnect.c_tcpconnect_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpconnect/extr_tcpconnect.c_tcpconnect_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @tcpconnect_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpconnect_server(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @usage()
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i32 @bzero(%struct.sockaddr_in* %7, i32 16)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 16, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strtoul(i8* %25, i8** %8, i32 10)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 1
  br i1 %28, label %37, label %29

29:                                               ; preds = %14
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %30, 65535
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %29, %14
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @htons(i64 %40)
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @PF_INET, align 4
  %44 = load i32, i32* @SOCK_STREAM, align 4
  %45 = call i32 @socket(i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %39
  %51 = load i32, i32* %5, align 4
  %52 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %53 = call i32 @bind(i32 %51, %struct.sockaddr* %52, i32 16)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @listen(i32 %58, i32 -1)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %64
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @accept(i32 %65, i32* null, i32* null)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @close(i32 %67)
  br label %64
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
