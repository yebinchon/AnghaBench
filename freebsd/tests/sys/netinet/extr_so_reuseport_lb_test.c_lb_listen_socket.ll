; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_so_reuseport_lb_test.c_lb_listen_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_so_reuseport_lb_test.c_lb_listen_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"socket() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT_LB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"setsockopt(SO_REUSEPORT_LB) failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lb_listen_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_listen_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @socket(i32 %8, i32 %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @ATF_REQUIRE_MSG(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i64 1, i64* %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEPORT_LB, align 4
  %22 = call i32 @setsockopt(i32 %19, i32 %20, i32 %21, i64* %5, i32 8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @ATF_REQUIRE_MSG(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
