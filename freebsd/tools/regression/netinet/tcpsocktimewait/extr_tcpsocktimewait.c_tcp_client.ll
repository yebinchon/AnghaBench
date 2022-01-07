; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsocktimewait/extr_tcpsocktimewait.c_tcp_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsocktimewait/extr_tcpsocktimewait.c_tcp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @tcp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_client(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @sleep(i32 1)
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SIGTERM, align 4
  %20 = call i32 @kill(i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* @errno, align 4
  %22 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %16, %3
  %24 = call i32 @bzero(%struct.sockaddr_in* %7, i32 16)
  %25 = load i32, i32* @AF_INET, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 16, i32* %27, align 4
  %28 = load i32, i32* @INADDR_LOOPBACK, align 4
  %29 = call i32 @ntohl(i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %36 = call i64 @connect(i32 %34, %struct.sockaddr* %35, i32 16)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %23
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SIGTERM, align 4
  %42 = call i32 @kill(i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* @errno, align 4
  %44 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %38, %23
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SHUT_RDWR, align 4
  %48 = call i64 @shutdown(i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SIGTERM, align 4
  %54 = call i32 @kill(i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* @errno, align 4
  %56 = call i32 @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @sleep(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @close(i32 %60)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
