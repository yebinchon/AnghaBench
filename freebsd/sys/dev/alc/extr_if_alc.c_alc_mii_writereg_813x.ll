; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mii_writereg_813x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mii_writereg_813x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_MDIO = common dso_local global i32 0, align 4
@MDIO_OP_EXECUTE = common dso_local global i32 0, align 4
@MDIO_OP_WRITE = common dso_local global i32 0, align 4
@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@ALC_PHY_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_OP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*, i32, i32, i32)* @alc_mii_writereg_813x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_mii_writereg_813x(%struct.alc_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.alc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %12 = load i32, i32* @ALC_MDIO, align 4
  %13 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %14 = load i32, i32* @MDIO_OP_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MDIO_DATA_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %15, %20
  %22 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MDIO_CLK_25_4, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @MDIO_REG_ADDR(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @CSR_WRITE_4(%struct.alc_softc* %11, i32 %12, i32 %28)
  %30 = load i32, i32* @ALC_PHY_TIMEOUT, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %47, %4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = call i32 @DELAY(i32 5)
  %36 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %37 = load i32, i32* @ALC_MDIO, align 4
  %38 = call i32 @CSR_READ_4(%struct.alc_softc* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %41 = load i32, i32* @MDIO_OP_BUSY, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %55 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %50
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
