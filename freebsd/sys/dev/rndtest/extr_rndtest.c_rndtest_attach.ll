; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndtest_state = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"rndtest_init: no memory for state block\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rndtest_state* @rndtest_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rndtest_state*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @M_DEVBUF, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = call %struct.rndtest_state* @malloc(i32 48, i32 %4, i32 %5)
  store %struct.rndtest_state* %6, %struct.rndtest_state** %3, align 8
  %7 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %8 = icmp ne %struct.rndtest_state* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %11 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %14 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %16 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 8
  %19 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %20 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  %21 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %22 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %25 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %24, i32 0, i32 5
  store i64 %23, i64* %25, align 8
  %26 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %27 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %29 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %32 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %34 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %33, i32 0, i32 2
  %35 = call i32 (i32*, ...) @callout_init(i32* %34)
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %9
  %40 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  ret %struct.rndtest_state* %40
}

declare dso_local %struct.rndtest_state* @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init(i32*, ...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
