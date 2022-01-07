; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_sendtorace/extr_unix_sendtorace.c_datagram_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_sendtorace/extr_unix_sendtorace.c_datagram_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"datagram_test: socket\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@socket_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"datagram_test: bind\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"datagram_test: fork\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @datagram_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datagram_test() #0 {
  %1 = alloca %struct.sockaddr_un, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PF_UNIX, align 4
  %5 = load i32, i32* @SOCK_DGRAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = call i32 @bzero(%struct.sockaddr_un* %1, i32 12)
  %13 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 0
  store i32 12, i32* %13, align 4
  %14 = load i32, i32* @AF_UNIX, align 4
  %15 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @socket_path, align 4
  %19 = call i32 @strcpy(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %22 = call i64 @bind(i32 %20, %struct.sockaddr* %21, i32 12)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = call i32 @err(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %11
  %27 = call i64 (...) @fork()
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @err(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* %2, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = call i32 @sleep(i32 1)
  %37 = call i32 (...) @datagram_client()
  %38 = load i64, i64* %2, align 8
  %39 = load i32, i32* @SIGTERM, align 4
  %40 = call i32 @kill(i64 %38, i32 %39)
  %41 = call i32 @sleep(i32 1)
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @datagram_server(i32 %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @socket_path, align 4
  %47 = call i32 @unlink(i32 %46)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @datagram_client(...) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @datagram_server(i32) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
