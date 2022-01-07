; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_nic_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_nic_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32 }

@WPI_GP_CNTRL = common dso_local global i32 0, align 4
@WPI_GP_CNTRL_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@WPI_GP_CNTRL_MAC_ACCESS_ENA = common dso_local global i32 0, align 4
@WPI_GP_CNTRL_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not lock memory\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_softc*)* @wpi_nic_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_nic_lock(%struct.wpi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  %5 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %6 = load i32, i32* @WPI_GP_CNTRL, align 4
  %7 = load i32, i32* @WPI_GP_CNTRL_MAC_ACCESS_REQ, align 4
  %8 = call i32 @WPI_SETBITS(%struct.wpi_softc* %5, i32 %6, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1000
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %14 = load i32, i32* @WPI_GP_CNTRL, align 4
  %15 = call i32 @WPI_READ(%struct.wpi_softc* %13, i32 %14)
  %16 = load i32, i32* @WPI_GP_CNTRL_MAC_ACCESS_ENA, align 4
  %17 = load i32, i32* @WPI_GP_CNTRL_SLEEP, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @WPI_GP_CNTRL_MAC_ACCESS_ENA, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %34

23:                                               ; preds = %12
  %24 = call i32 @DELAY(i32 10)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @WPI_SETBITS(%struct.wpi_softc*, i32, i32) #1

declare dso_local i32 @WPI_READ(%struct.wpi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
