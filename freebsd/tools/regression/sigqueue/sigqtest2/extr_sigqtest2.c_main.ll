; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sigqueue/sigqtest2/extr_sigqtest2.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sigqueue/sigqtest2/extr_sigqtest2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }
%union.sigval = type { i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@rtsig_handler = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.sigval, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @job_control_test()
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  %7 = call i32 @sigemptyset(i32* %6)
  %8 = load i32, i32* @SA_SIGINFO, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @rtsig_handler, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SIGRTMIN, align 4
  %13 = call i32 @sigaction(i32 %12, %struct.sigaction* %2, i32* null)
  %14 = call i32 @sigemptyset(i32* %3)
  %15 = load i32, i32* @SIGRTMIN, align 4
  %16 = call i32 @sigaddset(i32* %3, i32 %15)
  %17 = load i32, i32* @SIG_BLOCK, align 4
  %18 = call i32 @sigprocmask(i32 %17, i32* %3, i32* null)
  %19 = bitcast %union.sigval* %4 to i32*
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %27, %0
  %21 = call i32 (...) @getpid()
  %22 = load i32, i32* @SIGRTMIN, align 4
  %23 = getelementptr inbounds %union.sigval, %union.sigval* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @sigqueue(i32 %21, i32 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %20

28:                                               ; preds = %20
  %29 = call i32 (...) @job_control_test()
  ret i32 0
}

declare dso_local i32 @job_control_test(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @sigqueue(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
