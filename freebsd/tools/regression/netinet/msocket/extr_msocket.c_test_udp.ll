; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.ip_mreq = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.in_addr = type { i8* }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"FAIL: test_udp: socket(PF_INET, SOCK_DGRAM)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"FAIL: test_udp: fcntl(F_SETFL, O_NONBLOCK)\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@UDP_PORT = common dso_local global i32 0, align 4
@TEST_MADDR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"FAIL: test_udp: bind(udp_sock, 127.0.0.1:%d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_IF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"test_udp: setsockopt(IPPROTO_IP, IP_MULTICAST_IF)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"udp_sock\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"test_udp: sendto\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"test_udp: sendto: expected to send %d, instead %d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"test_udp: recvfrom\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"test_udp: recvfrom: len %d != message len %d\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"test_udp: recvfrom: expected 'A', got '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_udp() #0 {
  %1 = alloca %struct.sockaddr_in, align 8
  %2 = alloca %struct.ip_mreq, align 8
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @F_SETFL, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = call i64 @fcntl(i32 %15, i32 %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = call i32 @bzero(%struct.sockaddr_in* %1, i32 32)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i32 32, i32* %24, align 8
  %25 = load i8*, i8** @AF_INET, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @UDP_PORT, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @TEST_MADDR, align 8
  %31 = call i8* @inet_addr(i8* %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %36 = call i64 @bind(i32 %34, %struct.sockaddr* %35, i32 32)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @UDP_PORT, align 4
  %40 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %22
  %42 = load i8*, i8** @TEST_MADDR, align 8
  %43 = call i8* @inet_addr(i8* %42)
  %44 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = call i8* @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %2, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = call i8* @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IPPROTO_IP, align 4
  %53 = load i32, i32* @IP_MULTICAST_IF, align 4
  %54 = call i64 @setsockopt(i32 %51, i32 %52, i32 %53, %struct.in_addr* %3, i32 8)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %41
  %59 = load i32, i32* %6, align 4
  %60 = bitcast %struct.ip_mreq* %2 to { i8*, i8* }*
  %61 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %60, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @test_add_multi(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %64, i32 0)
  %66 = call i32 @bzero(%struct.sockaddr_in* %1, i32 32)
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i32 32, i32* %67, align 8
  %68 = load i8*, i8** @AF_INET, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @UDP_PORT, align 4
  %71 = call i8* @htons(i32 %70)
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** @TEST_MADDR, align 8
  %74 = call i8* @inet_addr(i8* %73)
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  store i8 65, i8* %4, align 1
  store i32 1, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %80 = call i32 @sendto(i32 %77, i8* %4, i32 %78, i32 0, %struct.sockaddr* %79, i32 32)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %58
  %84 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %58
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (i32, i8*, i8, ...) @errx(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8 signext 1, i32 %90)
  br label %92

92:                                               ; preds = %89, %85
  store i8 66, i8* %4, align 1
  store i32 32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %95 = call i32 @recvfrom(i32 %93, i8* %4, i32 1, i32 0, %struct.sockaddr* %94, i32* %5)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %92
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ne i64 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = trunc i32 %105 to i8
  %107 = call i32 (i32, i8*, i8, ...) @errx(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8 signext %106, i64 1)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i8, i8* %4, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 65
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8, i8* %4, align 1
  %114 = call i32 (i32, i8*, i8, ...) @errx(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8 signext %113)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* %6, align 4
  %117 = bitcast %struct.ip_mreq* %2 to { i8*, i8* }*
  %118 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %117, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @test_drop_multi(i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %119, i8* %121, i32 0)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @close(i32 %123)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.in_addr*, i32) #1

declare dso_local i32 @test_add_multi(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @test_drop_multi(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
