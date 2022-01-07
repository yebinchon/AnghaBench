; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_setup_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_setup_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32 }

@SDMMC_CLKENA = common dso_local global i32 0, align 4
@SDMMC_CMD = common dso_local global i32 0, align 4
@SDMMC_CMD_WAIT_PRVDATA = common dso_local global i32 0, align 4
@SDMMC_CMD_UPD_CLK_ONLY = common dso_local global i32 0, align 4
@SDMMC_CMD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed update clk\0A\00", align 1
@SDMMC_CLKSRC = common dso_local global i32 0, align 4
@SDMMC_CLKDIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to update clk\00", align 1
@SDMMC_CLKENA_CCLK_EN = common dso_local global i32 0, align 4
@SDMMC_CLKENA_LP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to enable clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*, i32)* @dwmmc_setup_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwmmc_setup_bus(%struct.dwmmc_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwmmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %12 = load i32, i32* @SDMMC_CLKENA, align 4
  %13 = call i32 @WRITE4(%struct.dwmmc_softc* %11, i32 %12, i32 0)
  %14 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %15 = load i32, i32* @SDMMC_CMD, align 4
  %16 = load i32, i32* @SDMMC_CMD_WAIT_PRVDATA, align 4
  %17 = load i32, i32* @SDMMC_CMD_UPD_CLK_ONLY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SDMMC_CMD_START, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @WRITE4(%struct.dwmmc_softc* %14, i32 %15, i32 %20)
  store i32 1000, i32* %6, align 4
  br label %22

22:                                               ; preds = %32, %10
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp slt i32 %23, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %124

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %34 = load i32, i32* @SDMMC_CMD, align 4
  %35 = call i32 @READ4(%struct.dwmmc_softc* %33, i32 %34)
  %36 = load i32, i32* @SDMMC_CMD_START, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %22, label %39

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %124

40:                                               ; preds = %2
  %41 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %42 = load i32, i32* @SDMMC_CLKENA, align 4
  %43 = call i32 @WRITE4(%struct.dwmmc_softc* %41, i32 %42, i32 0)
  %44 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %45 = load i32, i32* @SDMMC_CLKSRC, align 4
  %46 = call i32 @WRITE4(%struct.dwmmc_softc* %44, i32 %45, i32 0)
  %47 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 2, %56
  %58 = call i32 @DIV_ROUND_UP(i32 %55, i32 %57)
  br label %60

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %52
  %61 = phi i32 [ %58, %52 ], [ 0, %59 ]
  store i32 %61, i32* %7, align 4
  %62 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %63 = load i32, i32* @SDMMC_CLKDIV, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @WRITE4(%struct.dwmmc_softc* %62, i32 %63, i32 %64)
  %66 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %67 = load i32, i32* @SDMMC_CMD, align 4
  %68 = load i32, i32* @SDMMC_CMD_WAIT_PRVDATA, align 4
  %69 = load i32, i32* @SDMMC_CMD_UPD_CLK_ONLY, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SDMMC_CMD_START, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @WRITE4(%struct.dwmmc_softc* %66, i32 %67, i32 %72)
  store i32 1000, i32* %6, align 4
  br label %74

74:                                               ; preds = %84, %60
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %80 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %124

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %86 = load i32, i32* @SDMMC_CMD, align 4
  %87 = call i32 @READ4(%struct.dwmmc_softc* %85, i32 %86)
  %88 = load i32, i32* @SDMMC_CMD_START, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %74, label %91

91:                                               ; preds = %84
  %92 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %93 = load i32, i32* @SDMMC_CLKENA, align 4
  %94 = load i32, i32* @SDMMC_CLKENA_CCLK_EN, align 4
  %95 = load i32, i32* @SDMMC_CLKENA_LP, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @WRITE4(%struct.dwmmc_softc* %92, i32 %93, i32 %96)
  %98 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %99 = load i32, i32* @SDMMC_CMD, align 4
  %100 = load i32, i32* @SDMMC_CMD_WAIT_PRVDATA, align 4
  %101 = load i32, i32* @SDMMC_CMD_UPD_CLK_ONLY, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @SDMMC_CMD_START, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @WRITE4(%struct.dwmmc_softc* %98, i32 %99, i32 %104)
  store i32 1000, i32* %6, align 4
  br label %106

106:                                              ; preds = %116, %91
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %6, align 4
  %109 = icmp slt i32 %107, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %112 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %124

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %118 = load i32, i32* @SDMMC_CMD, align 4
  %119 = call i32 @READ4(%struct.dwmmc_softc* %117, i32 %118)
  %120 = load i32, i32* @SDMMC_CMD_START, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %106, label %123

123:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %110, %78, %39, %26
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @READ4(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
