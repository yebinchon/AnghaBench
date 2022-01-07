; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.rndtest_state*)* }
%struct.rndtest_state = type { i32 }

@rndstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RNDTEST_NTESTS = common dso_local global i32 0, align 4
@rndtest_funcs = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rndtest_state*)* @rndtest_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndtest_test(%struct.rndtest_state* %0) #0 {
  %2 = alloca %struct.rndtest_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rndtest_state* %0, %struct.rndtest_state** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rndstats, i32 0, i32 0), align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rndstats, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @RNDTEST_NTESTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rndtest_funcs, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.rndtest_state*)*, i32 (%struct.rndtest_state*)** %16, align 8
  %18 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %19 = call i32 %17(%struct.rndtest_state* %18)
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %30 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
