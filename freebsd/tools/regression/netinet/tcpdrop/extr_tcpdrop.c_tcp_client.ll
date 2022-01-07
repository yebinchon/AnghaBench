; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpdrop/extr_tcpdrop.c_tcp_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpdrop/extr_tcpdrop.c_tcp_client.c"
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
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"tcp_client: send (1)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"tcp_client: send (1) len\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"tcp_client: tcp_drop\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"tcp_client: send (2): success\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"tcp_client: send (2)\00", align 1
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
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = call i32 @sleep(i32 1)
  %13 = load i32, i32* @PF_INET, align 4
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SIGTERM, align 4
  %22 = call i32 @kill(i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* @errno, align 4
  %24 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %2
  %26 = call i32 @bzero(%struct.sockaddr_in* %5, i32 16)
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 16, i32* %29, align 4
  %30 = load i32, i32* @INADDR_LOOPBACK, align 4
  %31 = call i32 @ntohl(i32 %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %38 = call i64 @connect(i32 %36, %struct.sockaddr* %37, i32 16)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SIGTERM, align 4
  %44 = call i32 @kill(i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* @errno, align 4
  %46 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %40, %25
  store i32 16, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %50 = call i64 @getsockname(i32 %48, %struct.sockaddr* %49, i32* %9)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SIGTERM, align 4
  %56 = call i32 @kill(i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* @errno, align 4
  %58 = call i32 @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %52, %47
  store i8 65, i8* %11, align 1
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MSG_NOSIGNAL, align 4
  %62 = call i32 @send(i32 %60, i8* %11, i32 1, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @errno, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SIGTERM, align 4
  %69 = call i32 @kill(i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* @errno, align 4
  %71 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %65, %59
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 1
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @SIGTERM, align 4
  %79 = call i32 @kill(i32 %77, i32 %78)
  %80 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %72
  %82 = call i32 @sleep(i32 5)
  %83 = call i64 @tcp_drop(%struct.sockaddr_in* %6, %struct.sockaddr_in* %5)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* @errno, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @SIGTERM, align 4
  %89 = call i32 @kill(i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* @errno, align 4
  %91 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %85, %81
  %93 = call i32 @sleep(i32 5)
  store i8 65, i8* %11, align 1
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @MSG_NOSIGNAL, align 4
  %96 = call i32 @send(i32 %94, i8* %11, i32 1, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @SIGTERM, align 4
  %102 = call i32 @kill(i32 %100, i32 %101)
  %103 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %116

104:                                              ; preds = %92
  %105 = load i32, i32* @errno, align 4
  %106 = load i32, i32* @EPIPE, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* @errno, align 4
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @SIGTERM, align 4
  %112 = call i32 @kill(i32 %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* @errno, align 4
  %114 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %115

115:                                              ; preds = %108, %104
  br label %116

116:                                              ; preds = %115, %99
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @close(i32 %117)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @tcp_drop(%struct.sockaddr_in*, %struct.sockaddr_in*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
