; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_udp_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_udp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@UDP_PORT1 = common dso_local global i32 0, align 4
@UDP_PORT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @udp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_create(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @PF_INET, align 4
  %11 = load i32, i32* @SOCK_DGRAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load i32, i32* @PF_INET, align 4
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = call i32 @socket(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @close(i32 %23)
  store i32 -1, i32* %3, align 4
  br label %92

25:                                               ; preds = %16
  %26 = call i32 @bzero(%struct.sockaddr_in* %6, i32 32)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 32, i32* %27, align 8
  %28 = load i8*, i8** @AF_INET, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @INADDR_LOOPBACK, align 4
  %31 = call i8* @htonl(i32 %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @UDP_PORT1, align 4
  %35 = call i8* @htons(i32 %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = call i32 @bzero(%struct.sockaddr_in* %7, i32 32)
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 32, i32* %38, align 8
  %39 = load i8*, i8** @AF_INET, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @INADDR_LOOPBACK, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @UDP_PORT2, align 4
  %46 = call i8* @htons(i32 %45)
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %50 = call i64 @bind(i32 %48, %struct.sockaddr* %49, i32 32)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %25
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @close(i32 %55)
  store i32 -1, i32* %3, align 4
  br label %92

57:                                               ; preds = %25
  %58 = load i32, i32* %9, align 4
  %59 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %60 = call i64 @bind(i32 %58, %struct.sockaddr* %59, i32 32)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @close(i32 %65)
  store i32 -1, i32* %3, align 4
  br label %92

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %70 = call i64 @connect(i32 %68, %struct.sockaddr* %69, i32 32)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* %3, align 4
  br label %92

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  %79 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %80 = call i64 @connect(i32 %78, %struct.sockaddr* %79, i32 32)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @close(i32 %85)
  store i32 -1, i32* %3, align 4
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %82, %72, %62, %52, %22, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
