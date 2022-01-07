; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_init_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_init_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@tws_queue_depth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"initConnect failed\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@TWS_I2O0_IOPOBQPH = common dso_local global i32 0, align 4
@TWS_I2O0_IOPOBQPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"host outbound cleanup\00", align 1
@TWS_FIFO_EMPTY32 = common dso_local global i32 0, align 4
@TWS_I2O0_HOBDBC = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_init_ctlr(%struct.tws_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %8 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %9 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %10 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tws_softc* %8, i32 %11)
  %13 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %14 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %16 = load i32, i32* @tws_queue_depth, align 4
  %17 = call i64 @tws_init_connect(%struct.tws_softc* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %21 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %22 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %23)
  %25 = load i32, i32* @FAILURE, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %46
  %28 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %29 = load i32, i32* @TWS_I2O0_IOPOBQPH, align 4
  %30 = call i32 @tws_read_reg(%struct.tws_softc* %28, i32 %29, i32 4)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %32 = load i32, i32* @TWS_I2O0_IOPOBQPL, align 4
  %33 = call i32 @tws_read_reg(%struct.tws_softc* %31, i32 %32, i32 4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 32
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TWS_FIFO_EMPTY32, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %47

46:                                               ; preds = %27
  br label %27

47:                                               ; preds = %45
  %48 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %49 = call i32 @tws_init_obfl_q(%struct.tws_softc* %48)
  %50 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %51 = call i32 @tws_display_ctlr_info(%struct.tws_softc* %50)
  %52 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %53 = load i32, i32* @TWS_I2O0_HOBDBC, align 4
  %54 = call i32 @tws_write_reg(%struct.tws_softc* %52, i32 %53, i32 -1, i32 4)
  %55 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %56 = call i32 @tws_turn_on_interrupts(%struct.tws_softc* %55)
  %57 = load i32, i32* @SUCCESS, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, ...) #1

declare dso_local i64 @tws_init_connect(%struct.tws_softc*, i32) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @tws_init_obfl_q(%struct.tws_softc*) #1

declare dso_local i32 @tws_display_ctlr_info(%struct.tws_softc*) #1

declare dso_local i32 @tws_write_reg(%struct.tws_softc*, i32, i32, i32) #1

declare dso_local i32 @tws_turn_on_interrupts(%struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
