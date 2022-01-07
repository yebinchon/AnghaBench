; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsockclosebeforeaccept/extr_tcpsockclosebeforeaccept.c_tcp_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsockclosebeforeaccept/extr_tcpsockclosebeforeaccept.c_tcp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@TCP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tcp_drop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @tcp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_client(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = call i32 @sleep(i32 1)
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SIGKILL, align 4
  %20 = call i32 @kill(i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* @errno, align 4
  %22 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %16, %2
  %24 = call i32 @bzero(%struct.sockaddr_in* %5, i32 16)
  %25 = load i32, i32* @AF_INET, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 16, i32* %27, align 4
  %28 = load i32, i32* @INADDR_LOOPBACK, align 4
  %29 = call i32 @ntohl(i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @TCP_PORT, align 4
  %33 = call i32 @htons(i32 %32)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %37 = call i64 @connect(i32 %35, %struct.sockaddr* %36, i32 16)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SIGKILL, align 4
  %43 = call i32 @kill(i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* @errno, align 4
  %45 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %23
  store i32 16, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %49 = call i64 @getsockname(i32 %47, %struct.sockaddr* %48, i32* %9)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SIGKILL, align 4
  %55 = call i32 @kill(i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* @errno, align 4
  %57 = call i32 @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = call i64 @tcp_drop(%struct.sockaddr_in* %6, %struct.sockaddr_in* %5)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @SIGKILL, align 4
  %68 = call i32 @kill(i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* @errno, align 4
  %70 = call i32 @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %64, %61
  %72 = call i32 @sleep(i32 2)
  br label %73

73:                                               ; preds = %71, %58
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @close(i32 %74)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @tcp_drop(%struct.sockaddr_in*, %struct.sockaddr_in*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
