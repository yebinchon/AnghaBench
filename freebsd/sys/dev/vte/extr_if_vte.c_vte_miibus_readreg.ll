; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32 }

@VTE_MMDIO = common dso_local global i32 0, align 4
@MMDIO_READ = common dso_local global i32 0, align 4
@MMDIO_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MMDIO_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@VTE_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"phy read timeout : %d\0A\00", align 1
@VTE_MMRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vte_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vte_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.vte_softc* @device_get_softc(i32 %10)
  store %struct.vte_softc* %11, %struct.vte_softc** %8, align 8
  %12 = load %struct.vte_softc*, %struct.vte_softc** %8, align 8
  %13 = load i32, i32* @VTE_MMDIO, align 4
  %14 = load i32, i32* @MMDIO_READ, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MMDIO_PHY_ADDR_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MMDIO_REG_ADDR_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = call i32 @CSR_WRITE_2(%struct.vte_softc* %12, i32 %13, i32 %22)
  %24 = load i32, i32* @VTE_PHY_TIMEOUT, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %38, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = call i32 @DELAY(i32 5)
  %30 = load %struct.vte_softc*, %struct.vte_softc** %8, align 8
  %31 = load i32, i32* @VTE_MMDIO, align 4
  %32 = call i32 @CSR_READ_2(%struct.vte_softc* %30, i32 %31)
  %33 = load i32, i32* @MMDIO_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %9, align 4
  br label %25

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.vte_softc*, %struct.vte_softc** %8, align 8
  %46 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 0, i32* %4, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.vte_softc*, %struct.vte_softc** %8, align 8
  %52 = load i32, i32* @VTE_MMRD, align 4
  %53 = call i32 @CSR_READ_2(%struct.vte_softc* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.vte_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
