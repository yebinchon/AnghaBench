; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/capsicum/extr_bindat_connectat.c_check_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/capsicum/extr_bindat_connectat.c_check_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i32, %struct.sockaddr*, i32)*, i32, %struct.sockaddr_in*, i32*, i32*)* @check_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_3(i64 (i32, %struct.sockaddr*, i32)* %0, i32 %1, %struct.sockaddr_in* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64 (i32, %struct.sockaddr*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i64 (i32, %struct.sockaddr*, i32)* %0, i64 (i32, %struct.sockaddr*, i32)** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @cap_rights_limit(i32 %17, i32* %18)
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ATF_REQUIRE(i32 %21)
  %23 = load i32, i32* @EAFNOSUPPORT, align 4
  %24 = load i64 (i32, %struct.sockaddr*, i32)*, i64 (i32, %struct.sockaddr*, i32)** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %27 = bitcast %struct.sockaddr_in* %26 to %struct.sockaddr*
  %28 = call i64 %24(i32 %25, %struct.sockaddr* %27, i32 4)
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ATF_REQUIRE_ERRNO(i32 %23, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @cap_rights_remove(i32* %33, i32* %34)
  %36 = call i64 @cap_rights_limit(i32 %32, i32* %35)
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ATF_REQUIRE(i32 %38)
  %40 = load i32, i32* @ENOTCAPABLE, align 4
  %41 = load i64 (i32, %struct.sockaddr*, i32)*, i64 (i32, %struct.sockaddr*, i32)** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %44 = bitcast %struct.sockaddr_in* %43 to %struct.sockaddr*
  %45 = call i64 %41(i32 %42, %struct.sockaddr* %44, i32 4)
  %46 = icmp slt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ATF_REQUIRE_ERRNO(i32 %40, i32 %47)
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @cap_rights_limit(i32, i32*) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

declare dso_local i32* @cap_rights_remove(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
