; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_passfd_test.c_send_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_passfd_test.c_send_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }
%struct.msghdr = type { i64, i32, %struct.iovec*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"sendmsg failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"sendmsg: %zd bytes sent; expected %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @send_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_cmsg(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 0, i8* %10, align 1
  %11 = call i32 @bzero(%struct.msghdr* %8, i32 32)
  %12 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  store %struct.iovec* %7, %struct.iovec** %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sendmsg(i32 %20, %struct.msghdr* %8, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %29, 1
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ATF_REQUIRE_MSG(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %32, i64 1)
  ret void
}

declare dso_local i32 @bzero(%struct.msghdr*, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
