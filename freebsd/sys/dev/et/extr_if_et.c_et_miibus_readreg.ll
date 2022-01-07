; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32 }

@ET_MII_CMD = common dso_local global i32 0, align 4
@ET_MII_ADDR_PHY_SHIFT = common dso_local global i32 0, align 4
@ET_MII_ADDR_PHY_MASK = common dso_local global i32 0, align 4
@ET_MII_ADDR_REG_SHIFT = common dso_local global i32 0, align 4
@ET_MII_ADDR_REG_MASK = common dso_local global i32 0, align 4
@ET_MII_ADDR = common dso_local global i32 0, align 4
@ET_MII_CMD_READ = common dso_local global i32 0, align 4
@ET_MII_IND = common dso_local global i32 0, align 4
@ET_MII_IND_BUSY = common dso_local global i32 0, align 4
@ET_MII_IND_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"read phy %d, reg %d timed out\0A\00", align 1
@ET_MII_STAT = common dso_local global i32 0, align 4
@ET_MII_STAT_VALUE_MASK = common dso_local global i32 0, align 4
@NRETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @et_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.et_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.et_softc* @device_get_softc(i32 %11)
  store %struct.et_softc* %12, %struct.et_softc** %7, align 8
  %13 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %14 = load i32, i32* @ET_MII_CMD, align 4
  %15 = call i32 @CSR_WRITE_4(%struct.et_softc* %13, i32 %14, i32 0)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ET_MII_ADDR_PHY_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @ET_MII_ADDR_PHY_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ET_MII_ADDR_REG_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @ET_MII_ADDR_REG_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %29 = load i32, i32* @ET_MII_ADDR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.et_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %33 = load i32, i32* @ET_MII_CMD, align 4
  %34 = load i32, i32* @ET_MII_CMD_READ, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.et_softc* %32, i32 %33, i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %52, %3
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 50
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %41 = load i32, i32* @ET_MII_IND, align 4
  %42 = call i32 @CSR_READ_4(%struct.et_softc* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ET_MII_IND_BUSY, align 4
  %45 = load i32, i32* @ET_MII_IND_INVALID, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %55

50:                                               ; preds = %39
  %51 = call i32 @DELAY(i32 50)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %36

55:                                               ; preds = %49, %36
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 50
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %60 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @if_printf(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  store i32 0, i32* %10, align 4
  br label %72

65:                                               ; preds = %55
  %66 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %67 = load i32, i32* @ET_MII_STAT, align 4
  %68 = call i32 @CSR_READ_4(%struct.et_softc* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ET_MII_STAT_VALUE_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %74 = load i32, i32* @ET_MII_CMD, align 4
  %75 = call i32 @CSR_WRITE_4(%struct.et_softc* %73, i32 %74, i32 0)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local %struct.et_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
