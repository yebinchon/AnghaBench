; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32*, i32 }

@ALE_SPI_CTRL = common dso_local global i32 0, align 4
@SPI_VPD_ENB = common dso_local global i32 0, align 4
@PCIY_VPD = common dso_local global i32 0, align 4
@ALE_TWSI_CTRL = common dso_local global i32 0, align 4
@TWSI_CTRL_SW_LD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reloading EEPROM timeout!\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"PCI VPD capability not found!\0A\00", align 1
@ALE_PAR0 = common dso_local global i32 0, align 4
@ALE_PAR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_get_macaddr(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %7 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %8 = load i32, i32* @ALE_SPI_CTRL, align 4
  %9 = call i32 @CSR_READ_4(%struct.ale_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SPI_VPD_ENB, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @SPI_VPD_ENB, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %20 = load i32, i32* @ALE_SPI_CTRL, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.ale_softc* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCIY_VPD, align 4
  %28 = call i64 @pci_find_cap(i32 %26, i32 %27, i32* %6)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %23
  %31 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %32 = load i32, i32* @ALE_TWSI_CTRL, align 4
  %33 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %34 = load i32, i32* @ALE_TWSI_CTRL, align 4
  %35 = call i32 @CSR_READ_4(%struct.ale_softc* %33, i32 %34)
  %36 = load i32, i32* @TWSI_CTRL_SW_LD_START, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @CSR_WRITE_4(%struct.ale_softc* %31, i32 %32, i32 %37)
  store i32 100, i32* %5, align 4
  br label %39

39:                                               ; preds = %53, %30
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = call i32 @DELAY(i32 1000)
  %44 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %45 = load i32, i32* @ALE_TWSI_CTRL, align 4
  %46 = call i32 @CSR_READ_4(%struct.ale_softc* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @TWSI_CTRL_SW_LD_START, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  br label %39

56:                                               ; preds = %51, %39
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %56
  br label %74

65:                                               ; preds = %23
  %66 = load i64, i64* @bootverbose, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73, %64
  %75 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %76 = load i32, i32* @ALE_PAR0, align 4
  %77 = call i32 @CSR_READ_4(%struct.ale_softc* %75, i32 %76)
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %80 = load i32, i32* @ALE_PAR1, align 4
  %81 = call i32 @CSR_READ_4(%struct.ale_softc* %79, i32 %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 0
  %94 = and i32 %93, 255
  %95 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 24
  %102 = and i32 %101, 255
  %103 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %102, i32* %106, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  store i32 %110, i32* %114, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %120 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32 %118, i32* %122, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 0
  %126 = and i32 %125, 255
  %127 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %128 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32 %126, i32* %130, align 4
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
