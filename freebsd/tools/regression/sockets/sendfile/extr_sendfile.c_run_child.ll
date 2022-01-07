; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sendfile/extr_sendfile.c_run_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sendfile/extr_sendfile.c_run_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@listen_socket = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"# socket: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@TEST_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"# bind: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"# listen: %s\0A\00", align 1
@accept_socket = common dso_local global i64 0, align 8
@TEST_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_child() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @PF_INET, align 4
  %4 = load i32, i32* @SOCK_STREAM, align 4
  %5 = call i64 @socket(i32 %3, i32 %4, i32 0)
  store i64 %5, i64* @listen_socket, align 8
  %6 = load i64, i64* @listen_socket, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i8* @strerror(i32 %9)
  %11 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 -1, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %12
  %16 = call i32 @bzero(%struct.sockaddr_in* %1, i32 16)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i32 16, i32* %17, align 4
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @INADDR_LOOPBACK, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @TEST_PORT, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* @listen_socket, align 8
  %28 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %29 = call i64 @bind(i64 %27, %struct.sockaddr* %28, i32 16)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %15
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @listen_socket, align 8
  %41 = call i64 @listen(i64 %40, i32 -1)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @errno, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %39, %36
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @listen_socket, align 8
  %52 = call i64 @accept(i64 %51, i32* null, i32* null)
  store i64 %52, i64* @accept_socket, align 8
  %53 = load i32, i32* @TEST_SECONDS, align 4
  %54 = call i32 @setup_alarm(i32 %53)
  %55 = call i64 (...) @receive_test()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %47
  %60 = call i32 (...) @cancel_alarm()
  %61 = load i64, i64* @accept_socket, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @accept_socket, align 8
  %65 = call i32 @close(i64 %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i64, i64* @listen_socket, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* @listen_socket, align 8
  %71 = call i32 @close(i64 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @_exit(i32 %73) #3
  unreachable
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i64, i32) #1

declare dso_local i64 @accept(i64, i32*, i32*) #1

declare dso_local i32 @setup_alarm(i32) #1

declare dso_local i64 @receive_test(...) #1

declare dso_local i32 @cancel_alarm(...) #1

declare dso_local i32 @close(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
