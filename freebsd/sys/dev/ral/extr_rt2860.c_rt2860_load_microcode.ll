; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_load_microcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rt2860fw\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to receive rt2860fw firmware image\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT2860_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_HST_PM_SEL = common dso_local global i32 0, align 4
@RT2860_FW_BASE = common dso_local global i32 0, align 4
@RT2860_MCU_RESET = common dso_local global i32 0, align 4
@RT2860_H2M_BBPAGENT = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX = common dso_local global i32 0, align 4
@RT2860_MCU_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"timeout waiting for MCU to initialize\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2860_load_microcode(%struct.rt2860_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  %7 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %8 = call i32 @RAL_LOCK_ASSERT(%struct.rt2860_softc* %7)
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %10 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %9)
  %11 = call %struct.firmware* @firmware_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.firmware* %11, %struct.firmware** %4, align 8
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %13 = call i32 @RAL_LOCK(%struct.rt2860_softc* %12)
  %14 = load %struct.firmware*, %struct.firmware** %4, align 8
  %15 = icmp eq %struct.firmware* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %18 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %24 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %25 = load i32, i32* @RT2860_HST_PM_SEL, align 4
  %26 = call i32 @RAL_WRITE(%struct.rt2860_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %28 = load i32, i32* @RT2860_FW_BASE, align 4
  %29 = load %struct.firmware*, %struct.firmware** %4, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.firmware*, %struct.firmware** %4, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @RAL_WRITE_REGION_1(%struct.rt2860_softc* %27, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %37 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %38 = call i32 @RAL_WRITE(%struct.rt2860_softc* %36, i32 %37, i32 0)
  %39 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %40 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %39)
  %41 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %42 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %43 = load i32, i32* @RT2860_MCU_RESET, align 4
  %44 = call i32 @RAL_WRITE(%struct.rt2860_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %46 = load i32, i32* @RT2860_H2M_BBPAGENT, align 4
  %47 = call i32 @RAL_WRITE(%struct.rt2860_softc* %45, i32 %46, i32 0)
  %48 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %49 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %50 = call i32 @RAL_WRITE(%struct.rt2860_softc* %48, i32 %49, i32 0)
  %51 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %52 = call i32 @RAL_BARRIER_READ_WRITE(%struct.rt2860_softc* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %66, %22
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 1000
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %58 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %59 = call i32 @RAL_READ(%struct.rt2860_softc* %57, i32 %58)
  %60 = load i32, i32* @RT2860_MCU_READY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %69

64:                                               ; preds = %56
  %65 = call i32 @DELAY(i32 1000)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %53

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 1000
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %74 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %77, i32* %6, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load %struct.firmware*, %struct.firmware** %4, align 8
  %81 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %82 = call i32 @firmware_put(%struct.firmware* %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %16
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2860_softc*) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @RAL_LOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_WRITE_REGION_1(%struct.rt2860_softc*, i32, i32, i32) #1

declare dso_local i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_BARRIER_READ_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
