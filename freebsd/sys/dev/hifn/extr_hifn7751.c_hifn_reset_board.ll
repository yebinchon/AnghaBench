; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_reset_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_reset_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32* }

@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MSTRESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_DMARESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hifn_reset_board: null DMA tag!\00", align 1
@HIFN_IS_7811 = common dso_local global i32 0, align 4
@HIFN_1_7811_MIPSRST = common dso_local global i32 0, align 4
@HIFN_MIPSRST_CRAMINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c": cram init timeout\0A\00", align 1
@HIFN_1_DMA_CNFG2 = common dso_local global i32 0, align 4
@HIFN_DMACNFG2_INIT_WRITE_BURST_SHIFT = common dso_local global i32 0, align 4
@HIFN_DMACNFG2_INIT_READ_BURST_SHIFT = common dso_local global i32 0, align 4
@HIFN_DMACNFG2_TGT_WRITE_BURST_SHIFT = common dso_local global i32 0, align 4
@HIFN_DMACNFG2_TGT_READ_BURST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_softc*, i32)* @hifn_reset_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_reset_board(%struct.hifn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %7 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %8 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %9 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @WRITE_REG_1(%struct.hifn_softc* %6, i32 %7, i32 %12)
  %14 = call i32 @DELAY(i32 1000)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %19 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %20 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %21 = call i32 @WRITE_REG_1(%struct.hifn_softc* %18, i32 %19, i32 %20)
  %22 = call i32 @DELAY(i32 1000)
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %25 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %26 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %27 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @WRITE_REG_1(%struct.hifn_softc* %24, i32 %25, i32 %28)
  %30 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %31 = call i32 @hifn_reset_puc(%struct.hifn_softc* %30)
  br label %32

32:                                               ; preds = %23, %17
  %33 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bzero(i32* %41, i32 4)
  %43 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %44 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %45 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %46 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @WRITE_REG_1(%struct.hifn_softc* %43, i32 %44, i32 %49)
  %51 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %52 = call i32 @hifn_puc_wait(%struct.hifn_softc* %51)
  %53 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %54 = call i32 @hifn_set_retry(%struct.hifn_softc* %53)
  %55 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %56 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HIFN_IS_7811, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %75, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 1000
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %67 = load i32, i32* @HIFN_1_7811_MIPSRST, align 4
  %68 = call i32 @READ_REG_1(%struct.hifn_softc* %66, i32 %67)
  %69 = load i32, i32* @HIFN_MIPSRST_CRAMINIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %78

73:                                               ; preds = %65
  %74 = call i32 @DELAY(i32 1000)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %62

78:                                               ; preds = %72, %62
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 1000
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  br label %99

84:                                               ; preds = %32
  %85 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %86 = load i32, i32* @HIFN_1_DMA_CNFG2, align 4
  %87 = load i32, i32* @HIFN_DMACNFG2_INIT_WRITE_BURST_SHIFT, align 4
  %88 = shl i32 3, %87
  %89 = load i32, i32* @HIFN_DMACNFG2_INIT_READ_BURST_SHIFT, align 4
  %90 = shl i32 3, %89
  %91 = or i32 %88, %90
  %92 = load i32, i32* @HIFN_DMACNFG2_TGT_WRITE_BURST_SHIFT, align 4
  %93 = shl i32 2, %92
  %94 = or i32 %91, %93
  %95 = load i32, i32* @HIFN_DMACNFG2_TGT_READ_BURST_SHIFT, align 4
  %96 = shl i32 2, %95
  %97 = or i32 %94, %96
  %98 = call i32 @WRITE_REG_1(%struct.hifn_softc* %85, i32 %86, i32 %97)
  br label %99

99:                                               ; preds = %84, %83
  ret void
}

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @hifn_reset_puc(%struct.hifn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @hifn_puc_wait(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_set_retry(%struct.hifn_softc*) #1

declare dso_local i32 @READ_REG_1(%struct.hifn_softc*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
