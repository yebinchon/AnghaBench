; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_send_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_send_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@FIOCLEX = common dso_local global i64 0, align 8
@FIONCLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ioctl_tests_send_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl_tests_send_0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i64], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @AF_UNIX, align 4
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = call i32 @socket(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @CHECK(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @descriptor_send(i32 %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @CHECK(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @close(i32 %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @CHECK(i32 %20)
  %22 = load i32, i32* @AF_UNIX, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @CHECK(i32 %26)
  %28 = load i64, i64* @FIOCLEX, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %28, i64* %29, align 16
  %30 = load i64, i64* @FIONCLEX, align 8
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %35 = call i32 @nitems(i64* %34)
  %36 = call i64 @cap_ioctls_limit(i32 %32, i64* %33, i32 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHECK(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @descriptor_send(i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @close(i32 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @CHECK(i32 %49)
  %51 = load i32, i32* @AF_UNIX, align 4
  %52 = load i32, i32* @SOCK_STREAM, align 4
  %53 = call i32 @socket(i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %4, align 4
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = load i64, i64* @FIOCLEX, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %57, i64* %58, align 16
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %61 = call i64 @cap_ioctls_limit(i32 %59, i64* %60, i32 1)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @CHECK(i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @descriptor_send(i32 %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @CHECK(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @close(i32 %71)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @CHECK(i32 %74)
  %76 = load i32, i32* @AF_UNIX, align 4
  %77 = load i32, i32* @SOCK_STREAM, align 4
  %78 = call i32 @socket(i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %4, align 4
  %79 = icmp sge i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @CHECK(i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @cap_ioctls_limit(i32 %82, i64* null, i32 0)
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @CHECK(i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @descriptor_send(i32 %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @close(i32 %93)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @CHECK(i32 %96)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @descriptor_send(i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @cap_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
