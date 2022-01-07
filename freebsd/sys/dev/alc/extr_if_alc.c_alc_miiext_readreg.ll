; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_miiext_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_miiext_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32 }

@ALC_EXT_MDIO = common dso_local global i32 0, align 4
@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@MDIO_CLK_25_128 = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@ALC_MDIO = common dso_local global i32 0, align 4
@MDIO_OP_EXECUTE = common dso_local global i32 0, align 4
@MDIO_OP_READ = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_MODE_EXT = common dso_local global i32 0, align 4
@ALC_PHY_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_OP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"phy ext read timeout : %d, %d\0A\00", align 1
@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*, i32, i32)* @alc_miiext_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_miiext_readreg(%struct.alc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %12 = load i32, i32* @ALC_EXT_MDIO, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @EXT_MDIO_REG(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @EXT_MDIO_DEVADDR(i32 %15)
  %17 = or i32 %14, %16
  %18 = call i32 @CSR_WRITE_4(%struct.alc_softc* %11, i32 %12, i32 %17)
  %19 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %20 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ALC_FLAG_LINK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @MDIO_CLK_25_128, align 4
  store i32 %26, i32* %8, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @MDIO_CLK_25_4, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %31 = load i32, i32* @ALC_MDIO, align 4
  %32 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %33 = load i32, i32* @MDIO_OP_READ, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MDIO_MODE_EXT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @CSR_WRITE_4(%struct.alc_softc* %30, i32 %31, i32 %40)
  %42 = load i32, i32* @ALC_PHY_TIMEOUT, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %57, %29
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = call i32 @DELAY(i32 5)
  %48 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %49 = load i32, i32* @ALC_MDIO, align 4
  %50 = call i32 @CSR_READ_4(%struct.alc_softc* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MDIO_OP_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %10, align 4
  br label %43

60:                                               ; preds = %55, %43
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %65 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %76

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MDIO_DATA_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @EXT_MDIO_REG(i32) #1

declare dso_local i32 @EXT_MDIO_DEVADDR(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
