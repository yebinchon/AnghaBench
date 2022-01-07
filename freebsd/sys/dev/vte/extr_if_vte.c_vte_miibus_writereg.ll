; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32 }

@VTE_MMWD = common dso_local global i32 0, align 4
@VTE_MMDIO = common dso_local global i32 0, align 4
@MMDIO_WRITE = common dso_local global i32 0, align 4
@MMDIO_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MMDIO_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@VTE_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vte_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vte_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.vte_softc* @device_get_softc(i32 %11)
  store %struct.vte_softc* %12, %struct.vte_softc** %9, align 8
  %13 = load %struct.vte_softc*, %struct.vte_softc** %9, align 8
  %14 = load i32, i32* @VTE_MMWD, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @CSR_WRITE_2(%struct.vte_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.vte_softc*, %struct.vte_softc** %9, align 8
  %18 = load i32, i32* @VTE_MMDIO, align 4
  %19 = load i32, i32* @MMDIO_WRITE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MMDIO_PHY_ADDR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MMDIO_REG_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = call i32 @CSR_WRITE_2(%struct.vte_softc* %17, i32 %18, i32 %27)
  %29 = load i32, i32* @VTE_PHY_TIMEOUT, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %43, %4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = call i32 @DELAY(i32 5)
  %35 = load %struct.vte_softc*, %struct.vte_softc** %9, align 8
  %36 = load i32, i32* @VTE_MMDIO, align 4
  %37 = call i32 @CSR_READ_2(%struct.vte_softc* %35, i32 %36)
  %38 = load i32, i32* @MMDIO_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.vte_softc*, %struct.vte_softc** %9, align 8
  %51 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %46
  ret i32 0
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
