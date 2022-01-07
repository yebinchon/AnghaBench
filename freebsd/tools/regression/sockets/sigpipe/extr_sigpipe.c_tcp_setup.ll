; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sigpipe/extr_sigpipe.c_tcp_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sigpipe/extr_sigpipe.c_tcp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@listen_sock = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"tcp_setup: listen\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tcp_setup: bind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tcp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PF_INET, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i64 @socket(i32 %4, i32 %5, i32 0)
  store i64 %6, i64* @listen_sock, align 8
  %7 = load i64, i64* @listen_sock, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @err(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 @bzero(%struct.sockaddr_in* %3, i32 16)
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 16, i32* %13, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @INADDR_LOOPBACK, align 4
  %17 = call i32 @htonl(i32 %16)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* @listen_sock, align 8
  %24 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %25 = call i64 @bind(i64 %23, %struct.sockaddr* %24, i32 16)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %11
  %28 = call i32 @err(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %11
  %30 = load i64, i64* @listen_sock, align 8
  %31 = call i64 @listen(i64 %30, i32 -1)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @err(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  ret void
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
