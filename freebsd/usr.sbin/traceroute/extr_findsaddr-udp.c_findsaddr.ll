; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/traceroute/extr_findsaddr-udp.c_findsaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/traceroute/extr_findsaddr-udp.c_findsaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to open DGRAM socket for src addr selection.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to connect to peer for src addr selection.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to get socket name for src addr selection.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"unexpected address family in src addr selection.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @findsaddr(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = load i32, i32* @SOCK_DGRAM, align 4
  %13 = call i32 @socket(i64 %11, i32 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %55

17:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  store i32 16, i32* %10, align 4
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @memcpy(%struct.sockaddr_in* %7, %struct.sockaddr_in* %18, i32 %19)
  %21 = call i32 @htons(i32 65535)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @connect(i32 %23, %struct.sockaddr* %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %51

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %32 = call i32 @getsockname(i32 %30, %struct.sockaddr* %31, i32* %10)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %51

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 16
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_INET, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %51

45:                                               ; preds = %39
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @setsin(%struct.sockaddr_in* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %44, %34, %28
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %51, %16
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_in*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @setsin(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
