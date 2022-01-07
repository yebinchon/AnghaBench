; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigact_flag_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigact_flag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32* null, align 8
@SIG_DFL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigaction*, i32)* @sigact_flag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigact_flag_test(%struct.sigaction* %0, i32 %1) #0 {
  %3 = alloca %struct.sigaction*, align 8
  %4 = alloca i32, align 4
  store %struct.sigaction* %0, %struct.sigaction** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SA_SIGINFO, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32*, i32** @SIG_IGN, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32*, i32** @SIG_DFL, align 8
  %28 = icmp ne i32* %26, %27
  br label %29

29:                                               ; preds = %22, %15
  %30 = phi i1 [ false, %15 ], [ %28, %22 ]
  br label %31

31:                                               ; preds = %29, %11
  %32 = phi i1 [ true, %11 ], [ %30, %29 ]
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i1 [ false, %2 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
