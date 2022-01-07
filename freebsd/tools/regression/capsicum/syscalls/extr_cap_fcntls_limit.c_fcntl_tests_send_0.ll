; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_send_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_send_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@CAP_FCNTL_GETFL = common dso_local global i32 0, align 4
@CAP_FCNTL_SETFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fcntl_tests_send_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcntl_tests_send_0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @AF_UNIX, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @CHECK(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @descriptor_send(i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @close(i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECK(i32 %19)
  %21 = load i32, i32* @AF_UNIX, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = call i32 @socket(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @CHECK(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %29 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @cap_fcntls_limit(i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @descriptor_send(i32 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @close(i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  %46 = load i32, i32* @AF_UNIX, align 4
  %47 = load i32, i32* @SOCK_STREAM, align 4
  %48 = call i32 @socket(i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %3, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %54 = call i64 @cap_fcntls_limit(i32 %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @CHECK(i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @descriptor_send(i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @CHECK(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @close(i32 %64)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @CHECK(i32 %67)
  %69 = load i32, i32* @AF_UNIX, align 4
  %70 = load i32, i32* @SOCK_STREAM, align 4
  %71 = call i32 @socket(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %3, align 4
  %72 = icmp sge i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @cap_fcntls_limit(i32 %75, i32 0)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @CHECK(i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @descriptor_send(i32 %80, i32 %81)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @CHECK(i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = call i64 @close(i32 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @CHECK(i32 %89)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @descriptor_send(i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @cap_fcntls_limit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
