; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mii_readreg_813x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mii_readreg_813x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32 }

@ALC_FLAG_FASTETHER = common dso_local global i32 0, align 4
@MII_EXTSR = common dso_local global i32 0, align 4
@ALC_MDIO = common dso_local global i32 0, align 4
@MDIO_OP_EXECUTE = common dso_local global i32 0, align 4
@MDIO_OP_READ = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@ALC_PHY_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_OP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"phy read timeout : %d\0A\00", align 1
@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*, i32, i32)* @alc_mii_readreg_813x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_mii_readreg_813x(%struct.alc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %11 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ALC_FLAG_FASTETHER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MII_EXTSR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %70

21:                                               ; preds = %16, %3
  %22 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %23 = load i32, i32* @ALC_MDIO, align 4
  %24 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %25 = load i32, i32* @MDIO_OP_READ, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MDIO_CLK_25_4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @MDIO_REG_ADDR(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @CSR_WRITE_4(%struct.alc_softc* %22, i32 %23, i32 %33)
  %35 = load i32, i32* @ALC_PHY_TIMEOUT, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %52, %21
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = call i32 @DELAY(i32 5)
  %41 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %42 = load i32, i32* @ALC_MDIO, align 4
  %43 = call i32 @CSR_READ_4(%struct.alc_softc* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %46 = load i32, i32* @MDIO_OP_BUSY, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  br label %36

55:                                               ; preds = %50, %36
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %60 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %4, align 4
  br label %70

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MDIO_DATA_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %58, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
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
