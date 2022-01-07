; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/vm/extr_page_fault_signal.c_setup_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/vm/extr_page_fault_signal.c_setup_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@sighandler = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_signals() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @sighandler, align 4
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @SA_RESTART, align 4
  %6 = load i32, i32* @SA_RESETHAND, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SA_SIGINFO, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %12 = call i32 @sigfillset(i32* %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load i32, i32* @SIGILL, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %1, i32* null)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ATF_REQUIRE(i32 %21)
  %23 = load i32, i32* @SIGBUS, align 4
  %24 = call i32 @sigaction(i32 %23, %struct.sigaction* %1, i32* null)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @ATF_REQUIRE(i32 %27)
  %29 = load i32, i32* @SIGSEGV, align 4
  %30 = call i32 @sigaction(i32 %29, %struct.sigaction* %1, i32* null)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, -1
  %33 = zext i1 %32 to i32
  %34 = call i32 @ATF_REQUIRE(i32 %33)
  ret void
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
