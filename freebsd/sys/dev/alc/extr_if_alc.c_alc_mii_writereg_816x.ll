; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mii_writereg_816x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mii_writereg_816x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32 }

@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@MDIO_CLK_25_128 = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@ALC_MDIO = common dso_local global i32 0, align 4
@MDIO_OP_EXECUTE = common dso_local global i32 0, align 4
@MDIO_OP_WRITE = common dso_local global i32 0, align 4
@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@ALC_PHY_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_OP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*, i32, i32, i32)* @alc_mii_writereg_816x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_mii_writereg_816x(%struct.alc_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.alc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %13 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ALC_FLAG_LINK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @MDIO_CLK_25_128, align 4
  store i32 %19, i32* %9, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MDIO_CLK_25_4, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %24 = load i32, i32* @ALC_MDIO, align 4
  %25 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %26 = load i32, i32* @MDIO_OP_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MDIO_DATA_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %27, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @MDIO_REG_ADDR(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @CSR_WRITE_4(%struct.alc_softc* %23, i32 %24, i32 %40)
  %42 = load i32, i32* @ALC_PHY_TIMEOUT, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %57, %22
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = call i32 @DELAY(i32 5)
  %48 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %49 = load i32, i32* @ALC_MDIO, align 4
  %50 = call i32 @CSR_READ_4(%struct.alc_softc* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MDIO_OP_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %43

60:                                               ; preds = %55, %43
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %65 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  ret i32 0
}

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @MDIO_REG_ADDR(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
