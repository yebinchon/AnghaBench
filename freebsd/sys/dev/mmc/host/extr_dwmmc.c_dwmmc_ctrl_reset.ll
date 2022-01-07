; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_ctrl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_ctrl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32 }

@SDMMC_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*, i32)* @dwmmc_ctrl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwmmc_ctrl_reset(%struct.dwmmc_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwmmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %9 = load i32, i32* @SDMMC_CTRL, align 4
  %10 = call i32 @READ4(%struct.dwmmc_softc* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %15 = load i32, i32* @SDMMC_CTRL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @WRITE4(%struct.dwmmc_softc* %14, i32 %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %23 = load i32, i32* @SDMMC_CTRL, align 4
  %24 = call i32 @READ4(%struct.dwmmc_softc* %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %39

29:                                               ; preds = %21
  %30 = call i32 @DELAY(i32 10)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %36 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @READ4(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
