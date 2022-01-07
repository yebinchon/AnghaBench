; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@TWE_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no attention interrupt\0A\00", align 1
@TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't drain AEN queue\0A\00", align 1
@TWE_AEN_SOFT_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"reset not reported\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"controller errors detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"can't drain response queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*)* @twe_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_soft_reset(%struct.twe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %3, align 8
  %5 = call i32 @debug_called(i32 2)
  %6 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %7 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %6)
  %8 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %9 = call i32 @TWE_SOFT_RESET(%struct.twe_softc* %8)
  %10 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %11 = load i32, i32* @TWE_STATUS_ATTENTION_INTERRUPT, align 4
  %12 = call i64 @twe_wait_status(%struct.twe_softc* %10, i32 %11, i32 30)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %16 = call i32 @twe_printf(%struct.twe_softc* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %19 = load i32, i32* @TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT, align 4
  %20 = call i32 @TWE_CONTROL(%struct.twe_softc* %18, i32 %19)
  %21 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %22 = call i64 @twe_drain_aen_queue(%struct.twe_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %26 = call i32 @twe_printf(%struct.twe_softc* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %29 = load i32, i32* @TWE_AEN_SOFT_RESET, align 4
  %30 = call i64 @twe_find_aen(%struct.twe_softc* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %34 = call i32 @twe_printf(%struct.twe_softc* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %37 = call i32 @TWE_STATUS(%struct.twe_softc* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @TWE_STATUS_ERRORS(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @twe_check_bits(%struct.twe_softc* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %35
  %47 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %48 = call i32 @twe_printf(%struct.twe_softc* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %51 = call i64 @twe_drain_response_queue(%struct.twe_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %55 = call i32 @twe_printf(%struct.twe_softc* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %46, %32, %24, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i32 @TWE_SOFT_RESET(%struct.twe_softc*) #1

declare dso_local i64 @twe_wait_status(%struct.twe_softc*, i32, i32) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*) #1

declare dso_local i32 @TWE_CONTROL(%struct.twe_softc*, i32) #1

declare dso_local i64 @twe_drain_aen_queue(%struct.twe_softc*) #1

declare dso_local i64 @twe_find_aen(%struct.twe_softc*, i32) #1

declare dso_local i32 @TWE_STATUS(%struct.twe_softc*) #1

declare dso_local i64 @TWE_STATUS_ERRORS(i32) #1

declare dso_local i64 @twe_check_bits(%struct.twe_softc*, i32) #1

declare dso_local i64 @twe_drain_response_queue(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
