; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsockclosebeforeaccept/extr_tcpsockclosebeforeaccept.c_tcp_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsockclosebeforeaccept/extr_tcpsockclosebeforeaccept.c_tcp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tcp_server: socket\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@TCP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tcp_server: bind\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tcp_server: listen\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"tcp_server: accept\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tcp_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_server(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @PF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SIGKILL, align 4
  %16 = call i32 @kill(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @errno, align 4
  %18 = call i32 @err(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %12, %1
  %20 = call i32 @bzero(%struct.sockaddr_in* %6, i32 16)
  %21 = load i32, i32* @AF_INET, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 16, i32* %23, align 4
  %24 = load i32, i32* @INADDR_LOOPBACK, align 4
  %25 = call i32 @htonl(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TCP_PORT, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %33 = call i64 @bind(i32 %31, %struct.sockaddr* %32, i32 16)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %19
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SIGKILL, align 4
  %39 = call i32 @kill(i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* @errno, align 4
  %41 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %19
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @listen(i32 %43, i32 -1)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SIGKILL, align 4
  %50 = call i32 @kill(i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* @errno, align 4
  %52 = call i32 @err(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %46, %42
  %54 = call i32 @sleep(i32 10)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @accept(i32 %55, i32* null, i32* null)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @SIGKILL, align 4
  %63 = call i32 @kill(i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* @errno, align 4
  %65 = call i32 @err(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @close(i32 %69)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
