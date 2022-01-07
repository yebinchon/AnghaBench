; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_passfd_test.c_recv_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_passfd_test.c_recv_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }
%struct.msghdr = type { i8*, i64, i32, i32, %struct.iovec* }

@.str = private unnamed_addr constant [19 x i8] c"recvmsg failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"recvmsg: %zd bytes received; expected %zu\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"recvmsg: got flags %#x; expected %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i32)* @recv_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_cmsg(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iovec, align 8
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i8 0, i8* %12, align 1
  %13 = call i32 @bzero(%struct.msghdr* %10, i32 32)
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 4
  store %struct.iovec* %9, %struct.iovec** %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @recvmsg(i32 %22, %struct.msghdr* %10, i32 0)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 1
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 1)
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @bzero(%struct.msghdr*, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
