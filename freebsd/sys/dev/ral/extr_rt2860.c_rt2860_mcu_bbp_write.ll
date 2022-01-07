; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_mcu_bbp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_mcu_bbp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT2860_H2M_BBPAGENT = common dso_local global i32 0, align 4
@RT2860_BBP_CSR_KICK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not write to BBP through MCU\0A\00", align 1
@RT2860_BBP_RW_PARALLEL = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_BBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2860_mcu_bbp_write(%struct.rt2860_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt2860_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %13 = load i32, i32* @RT2860_H2M_BBPAGENT, align 4
  %14 = call i32 @RAL_READ(%struct.rt2860_softc* %12, i32 %13)
  %15 = load i32, i32* @RT2860_BBP_CSR_KICK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %24

19:                                               ; preds = %11
  %20 = call i32 @DELAY(i32 1)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %18, %8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 100
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %34 = load i32, i32* @RT2860_H2M_BBPAGENT, align 4
  %35 = load i32, i32* @RT2860_BBP_RW_PARALLEL, align 4
  %36 = load i32, i32* @RT2860_BBP_CSR_KICK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @RAL_WRITE(%struct.rt2860_softc* %33, i32 %34, i32 %42)
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %45 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %44)
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %47 = load i32, i32* @RT2860_MCU_CMD_BBP, align 4
  %48 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %46, i32 %47, i32 0, i32 0)
  %49 = call i32 @DELAY(i32 1000)
  br label %50

50:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_mcu_cmd(%struct.rt2860_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
