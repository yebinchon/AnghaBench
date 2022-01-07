; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32, i32 }

@TWS_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tws_reinit\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"FAILED to get Controller Ready!\0A\00", align 1
@tws_queue_depth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"initConnect failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tws_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_reinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.tws_softc*
  store %struct.tws_softc* %8, %struct.tws_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %45

17:                                               ; preds = %15
  %18 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %19 = call i64 @tws_ctlr_ready(%struct.tws_softc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %45

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 5
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TWS_RESET_TIMEOUT, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %33 = call i32 @tws_assert_soft_reset(%struct.tws_softc* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %39 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %40 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %39, i32 0, i32 3
  %41 = load i32, i32* @hz, align 4
  %42 = mul nsw i32 5, %41
  %43 = call i32 @mtx_sleep(%struct.tws_softc* %38, i32* %40, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37
  br label %9

45:                                               ; preds = %21, %15
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %50 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %73

53:                                               ; preds = %45
  %54 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %55 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %57 = load i32, i32* @tws_queue_depth, align 4
  %58 = call i64 @tws_init_connect(%struct.tws_softc* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %62 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %63 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %68 = call i32 @tws_init_obfl_q(%struct.tws_softc* %67)
  %69 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %70 = call i32 @tws_turn_on_interrupts(%struct.tws_softc* %69)
  %71 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %72 = call i32 @wakeup_one(%struct.tws_softc* %71)
  br label %73

73:                                               ; preds = %66, %48
  ret void
}

declare dso_local i64 @tws_ctlr_ready(%struct.tws_softc*) #1

declare dso_local i32 @tws_assert_soft_reset(%struct.tws_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.tws_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @tws_init_connect(%struct.tws_softc*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @tws_init_obfl_q(%struct.tws_softc*) #1

declare dso_local i32 @tws_turn_on_interrupts(%struct.tws_softc*) #1

declare dso_local i32 @wakeup_one(%struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
