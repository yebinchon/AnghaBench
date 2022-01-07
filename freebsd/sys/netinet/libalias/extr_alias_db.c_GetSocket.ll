; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_GetSocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_GetSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@LINK_TCP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@LINK_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, i32*, i32)* @GetSocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSocket(%struct.libalias* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.libalias*, %struct.libalias** %6, align 8
  %14 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %13)
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @LINK_TCP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %11, align 4
  br label %32

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @LINK_UDP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @AF_INET, align 4
  %28 = load i32, i32* @SOCK_DGRAM, align 4
  %29 = call i32 @socket(i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %11, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %60

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %60

36:                                               ; preds = %32
  %37 = load i32, i32* @AF_INET, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @INADDR_ANY, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %47 = call i32 @bind(i32 %45, %struct.sockaddr* %46, i32 12)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.libalias*, %struct.libalias** %6, align 8
  %52 = getelementptr inbounds %struct.libalias, %struct.libalias* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %5, align 4
  br label %60

57:                                               ; preds = %36
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @close(i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %50, %35, %30
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
