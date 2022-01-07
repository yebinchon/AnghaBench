; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_attach_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_attach_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PT_ATTACH = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @attach_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_child(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @PT_ATTACH, align 4
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @ptrace(i32 %5, i64 %6, i32* null, i32 0)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ATF_REQUIRE(i32 %9)
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @waitpid(i64 %11, i32* %4, i32 0)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @WIFSTOPPED(i32 %18)
  %20 = call i32 @ATF_REQUIRE(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @WSTOPSIG(i32 %21)
  %23 = load i64, i64* @SIGSTOP, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @ptrace(i32, i64, i32*, i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
