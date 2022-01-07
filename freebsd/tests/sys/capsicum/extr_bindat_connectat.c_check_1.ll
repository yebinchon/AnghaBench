; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/capsicum/extr_bindat_connectat.c_check_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/capsicum/extr_bindat_connectat.c_check_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i32, %struct.sockaddr*, i32)*, i32, %struct.sockaddr_in*)* @check_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_1(i64 (i32, %struct.sockaddr*, i32)* %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i64 (i32, %struct.sockaddr*, i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  store i64 (i32, %struct.sockaddr*, i32)* %0, i64 (i32, %struct.sockaddr*, i32)** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %6, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  %14 = load i64 (i32, %struct.sockaddr*, i32)*, i64 (i32, %struct.sockaddr*, i32)** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %17 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %18 = call i64 %14(i32 %15, %struct.sockaddr* %17, i32 4)
  %19 = icmp slt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_REQUIRE_ERRNO(i32 %13, i32 %20)
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
