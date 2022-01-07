; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32 }

@ALE_MDIO = common dso_local global i32 0, align 4
@MDIO_OP_EXECUTE = common dso_local global i32 0, align 4
@MDIO_OP_READ = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@ALE_PHY_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_OP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"phy read timeout : %d\0A\00", align 1
@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ale_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ale_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ale_softc* @device_get_softc(i32 %11)
  store %struct.ale_softc* %12, %struct.ale_softc** %8, align 8
  %13 = load %struct.ale_softc*, %struct.ale_softc** %8, align 8
  %14 = load i32, i32* @ALE_MDIO, align 4
  %15 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %16 = load i32, i32* @MDIO_OP_READ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MDIO_CLK_25_4, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @MDIO_REG_ADDR(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @CSR_WRITE_4(%struct.ale_softc* %13, i32 %14, i32 %24)
  %26 = load i32, i32* @ALE_PHY_TIMEOUT, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %43, %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = call i32 @DELAY(i32 5)
  %32 = load %struct.ale_softc*, %struct.ale_softc** %8, align 8
  %33 = load i32, i32* @ALE_MDIO, align 4
  %34 = call i32 @CSR_READ_4(%struct.ale_softc* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %37 = load i32, i32* @MDIO_OP_BUSY, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  br label %27

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ale_softc*, %struct.ale_softc** %8, align 8
  %51 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %4, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MDIO_DATA_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.ale_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @MDIO_REG_ADDR(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
