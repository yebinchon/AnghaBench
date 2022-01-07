; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/ip6_sockets/extr_ip6_sockets.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/ip6_sockets/extr_ip6_sockets.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"socket(PF_INET6, SOCK_DGRAM, 0)\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"connect(SOCK_DGRAM, ::1)\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"socket(PF_INET6, SOCK_STREAM, 0)\00", align 1
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"socket(PF_INET6, SOCK_RAW, 0)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @PF_INET6, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @err(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @close(i32 %16)
  %18 = load i32, i32* @PF_INET6, align 4
  %19 = load i32, i32* @SOCK_DGRAM, align 4
  %20 = call i32 @socket(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @err(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = call i32 @bzero(%struct.sockaddr_in6* %6, i32 16)
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  store i32 16, i32* %27, align 4
  %28 = load i32, i32* @AF_INET6, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @in6addr_loopback, align 4
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = call i32 @htons(i32 1024)
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  %36 = call i64 @connect(i32 %34, %struct.sockaddr* %35, i32 16)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = call i32 @err(i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* @PF_INET6, align 4
  %44 = load i32, i32* @SOCK_STREAM, align 4
  %45 = call i32 @socket(i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @err(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* @PF_INET6, align 4
  %54 = load i32, i32* @SOCK_RAW, align 4
  %55 = call i32 @socket(i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %50
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @close(i32 %61)
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
