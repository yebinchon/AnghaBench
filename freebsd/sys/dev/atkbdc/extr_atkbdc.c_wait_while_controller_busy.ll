; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_wait_while_controller_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_wait_while_controller_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32, i32, i32 }

@KBDS_INPUT_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDD_DELAYTIME = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDC_DELAYTIME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbdc_softc*)* @wait_while_controller_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_while_controller_busy(%struct.atkbdc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  %6 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %11 = call i32 @read_status(%struct.atkbdc_softc* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @KBDS_INPUT_BUFFER_FULL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @KBDD_DELAYTIME, align 4
  %23 = call i32 @DELAY(i32 %22)
  %24 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %24, i32 0, i32 2
  %26 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %27 = call i32 @read_data(%struct.atkbdc_softc* %26)
  %28 = call i32 @addq(i32* %25, i32 %27)
  br label %44

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @KBDD_DELAYTIME, align 4
  %37 = call i32 @DELAY(i32 %36)
  %38 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %38, i32 0, i32 1
  %40 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %41 = call i32 @read_data(%struct.atkbdc_softc* %40)
  %42 = call i32 @addq(i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %35, %29
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* @KBDC_DELAYTIME, align 4
  %46 = call i32 @DELAY(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %44
  br label %9

53:                                               ; preds = %9
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @read_status(%struct.atkbdc_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @addq(i32*, i32) #1

declare dso_local i32 @read_data(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
