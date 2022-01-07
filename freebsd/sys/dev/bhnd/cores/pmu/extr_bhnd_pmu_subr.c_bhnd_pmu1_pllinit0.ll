; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_pllinit0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_pllinit0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Unspecified xtal frequency, skipping PLL configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Unsupported XTAL frequency %d.%dMHz, skipping PLL configuration\0A\00", align 1
@BHND_PMU_CTRL = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_XTALFREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"PLL already programmed for %d.%dMHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"XTAL %d.%dMHz (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Programming PLL for %d.%dMHz\0A\00", align 1
@BHND_PMU_MIN_RES_MASK = common dso_local global i32 0, align 4
@RES4325_BBPLL_PWRSW_PU = common dso_local global i32 0, align 4
@RES4325_HT_AVAIL = common dso_local global i32 0, align 4
@BHND_PMU_MAX_RES_MASK = common dso_local global i32 0, align 4
@BHND_CCS_HTAVAIL = common dso_local global i32 0, align 4
@RES4329_BBPLL_PWRSW_PU = common dso_local global i32 0, align 4
@RES4329_HT_AVAIL = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL4 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL5 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC5_CLK_DRV_MASK = common dso_local global i32 0, align 4
@RES4319_HT_AVAIL = common dso_local global i32 0, align 4
@RES4319_BBPLL_PWRSW_PU = common dso_local global i32 0, align 4
@RES4336_HT_AVAIL = common dso_local global i32 0, align 4
@RES4336_MACPHY_CLKAVAIL = common dso_local global i32 0, align 4
@RES4330_HT_AVAIL = common dso_local global i32 0, align 4
@RES4330_MACPHY_CLKAVAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"unsupported chipid %#hx\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Done masking\0A\00", align 1
@BHND_PMU1_PLL0_PC0_P1DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_P2DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_P1DIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_P2DIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_BYPASS_SDMOD_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_BYPASS_SDMOD = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL0 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL1 = common dso_local global i32 0, align 4
@BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_VAL = common dso_local global i32 0, align 4
@BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_MODE_MFB = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_MODE_INT = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_MODE_MASH = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL2 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_INT = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_MODE = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_INT_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_MODE_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL3 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC3_NDIV_FRAC = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC3_NDIV_FRAC_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC4_KVCO_XS_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC4_KVCO_XS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Adjusting PLL buffer drive strength: %x\0A\00", align 1
@BHND_PMU1_PLL0_PC5_CLK_DRV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC5_VCO_RNG_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC5_VCO_RNG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Done pll\0A\00", align 1
@XTAL_FREQ_30000MHZ = common dso_local global i32 0, align 4
@BHND_PMU_CCTRL4319USB_24MHZ_PLL_SEL = common dso_local global i32 0, align 4
@BHND_PMU_CCTRL4319USB_48MHZ_PLL_SEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"unsupported 4319USB XTAL frequency: %hu\0A\00", align 1
@BHND_PMU1_PLL0_CHIPCTL2 = common dso_local global i32 0, align 4
@BHND_PMU_CCTRL4319USB_XTAL_SEL = common dso_local global i32 0, align 4
@BHND_PMU_CCTRL4319USB_XTAL_SEL_MASK = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_PLL_PLLCTL_UPD = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_ILP_DIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_XTALFREQ_MASK = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_ILP_DIV = common dso_local global i32 0, align 4
@BHND_PMU_CLKSTRETCH = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_HT_REQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bhnd_pmu_softc*, i32)* @bhnd_pmu1_pllinit0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bhnd_pmu1_pllinit0(%struct.bhnd_pmu_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bhnd_pmu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %15, i32 0, i32 1
  %17 = call i32 @bhnd_pmu1_pllfvco0(i32* %16)
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %12, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %23 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %619

24:                                               ; preds = %2
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %25, i32 0, i32 1
  %27 = call %struct.TYPE_5__* @bhnd_pmu1_xtaltab0(i32* %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %5, align 8
  br label %28

28:                                               ; preds = %46, %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %5, align 8
  br label %28

49:                                               ; preds = %44, %36
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52, %49
  %58 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sdiv i32 %59, 1000
  %61 = load i32, i32* %4, align 4
  %62 = srem i32 %61, 1000
  %63 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %58, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %62)
  br label %619

64:                                               ; preds = %52
  %65 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %66 = load i32, i32* @BHND_PMU_CTRL, align 4
  %67 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ, align 4
  %70 = call i32 @BHND_PMU_GET_BITS(i32 %68, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %64
  %76 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %77 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 134
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 131
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 1000
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %95, 1000
  %97 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %96)
  br label %619

98:                                               ; preds = %81, %75, %64
  %99 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sdiv i32 %100, 1000
  %102 = load i32, i32* %4, align 4
  %103 = srem i32 %102, 1000
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %103, i32 %106)
  %108 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 1000
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = srem i32 %115, 1000
  %117 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %116)
  %118 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %119 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %304 [
    i32 133, label %122
    i32 132, label %144
    i32 134, label %224
    i32 130, label %258
    i32 131, label %281
  ]

122:                                              ; preds = %98
  store i32 2236962, i32* %6, align 4
  %123 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %124 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %125 = load i32, i32* @RES4325_BBPLL_PWRSW_PU, align 4
  %126 = call i32 @PMURES_BIT(i32 %125)
  %127 = load i32, i32* @RES4325_HT_AVAIL, align 4
  %128 = call i32 @PMURES_BIT(i32 %127)
  %129 = or i32 %126, %128
  %130 = xor i32 %129, -1
  %131 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %123, i32 %124, i32 %130)
  %132 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %133 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %134 = load i32, i32* @RES4325_BBPLL_PWRSW_PU, align 4
  %135 = call i32 @PMURES_BIT(i32 %134)
  %136 = load i32, i32* @RES4325_HT_AVAIL, align 4
  %137 = call i32 @PMURES_BIT(i32 %136)
  %138 = or i32 %135, %137
  %139 = xor i32 %138, -1
  %140 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %132, i32 %133, i32 %139)
  %141 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %142 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %143 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %141, i32 0, i32 %142)
  br label %310

144:                                              ; preds = %98
  store i32 8947848, i32* %6, align 4
  %145 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %146 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %147 = load i32, i32* @RES4329_BBPLL_PWRSW_PU, align 4
  %148 = call i32 @PMURES_BIT(i32 %147)
  %149 = load i32, i32* @RES4329_HT_AVAIL, align 4
  %150 = call i32 @PMURES_BIT(i32 %149)
  %151 = or i32 %148, %150
  %152 = xor i32 %151, -1
  %153 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %145, i32 %146, i32 %152)
  %154 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %155 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %156 = load i32, i32* @RES4329_BBPLL_PWRSW_PU, align 4
  %157 = call i32 @PMURES_BIT(i32 %156)
  %158 = load i32, i32* @RES4329_HT_AVAIL, align 4
  %159 = call i32 @PMURES_BIT(i32 %158)
  %160 = or i32 %157, %159
  %161 = xor i32 %160, -1
  %162 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %154, i32 %155, i32 %161)
  %163 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %164 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %165 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %163, i32 0, i32 %164)
  %166 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL4, align 4
  store i32 %166, i32* %7, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 38400
  br i1 %170, label %171, label %172

171:                                              ; preds = %144
  store i32 536880320, i32* %8, align 4
  br label %187

172:                                              ; preds = %144
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 37400
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 536888576, i32* %8, align 4
  br label %186

178:                                              ; preds = %172
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 26000
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 536880320, i32* %8, align 4
  br label %185

184:                                              ; preds = %178
  store i32 536872384, i32* %8, align 4
  br label %185

185:                                              ; preds = %184, %183
  br label %186

186:                                              ; preds = %185, %177
  br label %187

187:                                              ; preds = %186, %171
  %188 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %188, i32 %189, i32 %190, i32 -1)
  %192 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL5, align 4
  store i32 %192, i32* %7, align 4
  %193 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @BHND_PMU_PLL_READ(%struct.bhnd_pmu_softc* %193, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* @BHND_PMU1_PLL0_PC5_CLK_DRV_MASK, align 4
  %197 = load i32, i32* %8, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %8, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 38400
  br i1 %202, label %213, label %203

203:                                              ; preds = %187
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 37400
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 26000
  br i1 %212, label %213, label %216

213:                                              ; preds = %208, %203, %187
  %214 = load i32, i32* %8, align 4
  %215 = or i32 %214, 21
  store i32 %215, i32* %8, align 4
  br label %219

216:                                              ; preds = %208
  %217 = load i32, i32* %8, align 4
  %218 = or i32 %217, 37
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %220, i32 %221, i32 %222, i32 -1)
  br label %310

224:                                              ; preds = %98
  store i32 2236962, i32* %6, align 4
  %225 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %226 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %227 = load i32, i32* @RES4319_HT_AVAIL, align 4
  %228 = call i32 @PMURES_BIT(i32 %227)
  %229 = xor i32 %228, -1
  %230 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %225, i32 %226, i32 %229)
  %231 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %232 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %233 = load i32, i32* @RES4319_HT_AVAIL, align 4
  %234 = call i32 @PMURES_BIT(i32 %233)
  %235 = xor i32 %234, -1
  %236 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %231, i32 %232, i32 %235)
  %237 = call i32 @DELAY(i32 100)
  %238 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %239 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %240 = load i32, i32* @RES4319_BBPLL_PWRSW_PU, align 4
  %241 = call i32 @PMURES_BIT(i32 %240)
  %242 = xor i32 %241, -1
  %243 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %238, i32 %239, i32 %242)
  %244 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %245 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %246 = load i32, i32* @RES4319_BBPLL_PWRSW_PU, align 4
  %247 = call i32 @PMURES_BIT(i32 %246)
  %248 = xor i32 %247, -1
  %249 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %244, i32 %245, i32 %248)
  %250 = call i32 @DELAY(i32 100)
  %251 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %252 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %253 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %251, i32 0, i32 %252)
  store i32 536872384, i32* %8, align 4
  %254 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %255 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL4, align 4
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %254, i32 %255, i32 %256, i32 -1)
  br label %310

258:                                              ; preds = %98
  %259 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %260 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %261 = load i32, i32* @RES4336_HT_AVAIL, align 4
  %262 = call i32 @PMURES_BIT(i32 %261)
  %263 = load i32, i32* @RES4336_MACPHY_CLKAVAIL, align 4
  %264 = call i32 @PMURES_BIT(i32 %263)
  %265 = or i32 %262, %264
  %266 = xor i32 %265, -1
  %267 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %259, i32 %260, i32 %266)
  %268 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %269 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %270 = load i32, i32* @RES4336_HT_AVAIL, align 4
  %271 = call i32 @PMURES_BIT(i32 %270)
  %272 = load i32, i32* @RES4336_MACPHY_CLKAVAIL, align 4
  %273 = call i32 @PMURES_BIT(i32 %272)
  %274 = or i32 %271, %273
  %275 = xor i32 %274, -1
  %276 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %268, i32 %269, i32 %275)
  %277 = call i32 @DELAY(i32 100)
  %278 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %279 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %280 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %278, i32 0, i32 %279)
  br label %310

281:                                              ; preds = %98
  %282 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %283 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %284 = load i32, i32* @RES4330_HT_AVAIL, align 4
  %285 = call i32 @PMURES_BIT(i32 %284)
  %286 = load i32, i32* @RES4330_MACPHY_CLKAVAIL, align 4
  %287 = call i32 @PMURES_BIT(i32 %286)
  %288 = or i32 %285, %287
  %289 = xor i32 %288, -1
  %290 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %282, i32 %283, i32 %289)
  %291 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %292 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %293 = load i32, i32* @RES4330_HT_AVAIL, align 4
  %294 = call i32 @PMURES_BIT(i32 %293)
  %295 = load i32, i32* @RES4330_MACPHY_CLKAVAIL, align 4
  %296 = call i32 @PMURES_BIT(i32 %295)
  %297 = or i32 %294, %296
  %298 = xor i32 %297, -1
  %299 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %291, i32 %292, i32 %298)
  %300 = call i32 @DELAY(i32 100)
  %301 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %302 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %303 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %301, i32 0, i32 %302)
  br label %310

304:                                              ; preds = %98
  %305 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %306 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %304, %281, %258, %224, %219, %122
  %311 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %312 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %311, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @BHND_PMU1_PLL0_PC0_P1DIV, align 4
  %317 = call i32 @BHND_PMU_SET_BITS(i32 %315, i32 %316)
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @BHND_PMU1_PLL0_PC0_P2DIV, align 4
  %322 = call i32 @BHND_PMU_SET_BITS(i32 %320, i32 %321)
  %323 = or i32 %317, %322
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* @BHND_PMU1_PLL0_PC0_P1DIV_MASK, align 4
  %325 = load i32, i32* @BHND_PMU1_PLL0_PC0_P2DIV_MASK, align 4
  %326 = or i32 %324, %325
  store i32 %326, i32* %9, align 4
  %327 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %328 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, 134
  br i1 %331, label %332, label %350

332:                                              ; preds = %310
  %333 = load i32, i32* @BHND_PMU1_PLL0_PC0_BYPASS_SDMOD_MASK, align 4
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %8, align 4
  %336 = and i32 %335, %334
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* @BHND_PMU1_PLL0_PC0_BYPASS_SDMOD_MASK, align 4
  %338 = load i32, i32* %9, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %9, align 4
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %332
  %345 = load i32, i32* @BHND_PMU1_PLL0_PC0_BYPASS_SDMOD, align 4
  %346 = call i32 @BHND_PMU_SET_BITS(i32 1, i32 %345)
  %347 = load i32, i32* %8, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %8, align 4
  br label %349

349:                                              ; preds = %344, %332
  br label %350

350:                                              ; preds = %349, %310
  %351 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %352 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL0, align 4
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %351, i32 %352, i32 %353, i32 %354)
  %356 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %357 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 131
  br i1 %360, label %361, label %364

361:                                              ; preds = %350
  %362 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %363 = call i32 @bhnd_pmu_set_4330_plldivs(%struct.bhnd_pmu_softc* %362)
  br label %364

364:                                              ; preds = %361, %350
  %365 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %366 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp eq i32 %368, 132
  br i1 %369, label %370, label %382

370:                                              ; preds = %364
  %371 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %372 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %370
  %377 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %378 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL1, align 4
  %379 = load i32, i32* @BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_VAL, align 4
  %380 = load i32, i32* @BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_MASK, align 4
  %381 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %377, i32 %378, i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %376, %370, %364
  %383 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %384 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp eq i32 %386, 130
  br i1 %387, label %394, label %388

388:                                              ; preds = %382
  %389 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %390 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp eq i32 %392, 131
  br i1 %393, label %394, label %396

394:                                              ; preds = %388, %382
  %395 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_MODE_MFB, align 4
  store i32 %395, i32* %12, align 4
  br label %415

396:                                              ; preds = %388
  %397 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %398 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp eq i32 %400, 134
  br i1 %401, label %402, label %412

402:                                              ; preds = %396
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %402
  %408 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_MODE_INT, align 4
  store i32 %408, i32* %12, align 4
  br label %411

409:                                              ; preds = %402
  %410 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_MODE_MFB, align 4
  store i32 %410, i32* %12, align 4
  br label %411

411:                                              ; preds = %409, %407
  br label %414

412:                                              ; preds = %396
  %413 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_MODE_MASH, align 4
  store i32 %413, i32* %12, align 4
  br label %414

414:                                              ; preds = %412, %411
  br label %415

415:                                              ; preds = %414, %394
  %416 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %417 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL2, align 4
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_INT, align 4
  %422 = call i32 @BHND_PMU_SET_BITS(i32 %420, i32 %421)
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_MODE, align 4
  %425 = call i32 @BHND_PMU_SET_BITS(i32 %423, i32 %424)
  %426 = or i32 %422, %425
  %427 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_INT_MASK, align 4
  %428 = load i32, i32* @BHND_PMU1_PLL0_PC2_NDIV_MODE_MASK, align 4
  %429 = or i32 %427, %428
  %430 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %416, i32 %417, i32 %426, i32 %429)
  %431 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %432 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL3, align 4
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 4
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @BHND_PMU1_PLL0_PC3_NDIV_FRAC, align 4
  %437 = call i32 @BHND_PMU_SET_BITS(i32 %435, i32 %436)
  %438 = load i32, i32* @BHND_PMU1_PLL0_PC3_NDIV_FRAC_MASK, align 4
  %439 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %431, i32 %432, i32 %437, i32 %438)
  %440 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %441 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp eq i32 %443, 134
  br i1 %444, label %445, label %471

445:                                              ; preds = %415
  %446 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %445
  store i32 536872384, i32* %8, align 4
  br label %452

451:                                              ; preds = %445
  store i32 539764768, i32* %8, align 4
  br label %452

452:                                              ; preds = %451, %450
  %453 = load i32, i32* %11, align 4
  %454 = icmp slt i32 %453, 1600
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  store i32 4, i32* %13, align 4
  br label %457

456:                                              ; preds = %452
  store i32 7, i32* %13, align 4
  br label %457

457:                                              ; preds = %456, %455
  %458 = load i32, i32* @BHND_PMU1_PLL0_PC4_KVCO_XS_MASK, align 4
  %459 = xor i32 %458, -1
  %460 = load i32, i32* %8, align 4
  %461 = and i32 %460, %459
  store i32 %461, i32* %8, align 4
  %462 = load i32, i32* %13, align 4
  %463 = load i32, i32* @BHND_PMU1_PLL0_PC4_KVCO_XS, align 4
  %464 = call i32 @BHND_PMU_SET_BITS(i32 %462, i32 %463)
  %465 = load i32, i32* %8, align 4
  %466 = or i32 %465, %464
  store i32 %466, i32* %8, align 4
  %467 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %468 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL4, align 4
  %469 = load i32, i32* %8, align 4
  %470 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %467, i32 %468, i32 %469)
  br label %471

471:                                              ; preds = %457, %415
  %472 = load i32, i32* %6, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %522

474:                                              ; preds = %471
  %475 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %476 = load i32, i32* %6, align 4
  %477 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %475, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %476)
  %478 = load i32, i32* %6, align 4
  %479 = load i32, i32* @BHND_PMU1_PLL0_PC5_CLK_DRV, align 4
  %480 = call i32 @BHND_PMU_SET_BITS(i32 %478, i32 %479)
  store i32 %480, i32* %8, align 4
  %481 = load i32, i32* @BHND_PMU1_PLL0_PC5_CLK_DRV_MASK, align 4
  store i32 %481, i32* %9, align 4
  %482 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %483 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, 134
  br i1 %486, label %487, label %516

487:                                              ; preds = %474
  %488 = load i32, i32* @BHND_PMU1_PLL0_PC5_VCO_RNG_MASK, align 4
  %489 = load i32, i32* @BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32_MASK, align 4
  %490 = or i32 %488, %489
  %491 = load i32, i32* %9, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %9, align 4
  %493 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i32 0, i32 4
  %495 = load i32, i32* %494, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %502, label %497

497:                                              ; preds = %487
  %498 = load i32, i32* @BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32, align 4
  %499 = call i32 @BHND_PMU_SET_BITS(i32 37, i32 %498)
  %500 = load i32, i32* %8, align 4
  %501 = or i32 %500, %499
  store i32 %501, i32* %8, align 4
  br label %507

502:                                              ; preds = %487
  %503 = load i32, i32* @BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32, align 4
  %504 = call i32 @BHND_PMU_SET_BITS(i32 21, i32 %503)
  %505 = load i32, i32* %8, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %8, align 4
  br label %507

507:                                              ; preds = %502, %497
  %508 = load i32, i32* %11, align 4
  %509 = icmp sge i32 %508, 1600
  br i1 %509, label %510, label %515

510:                                              ; preds = %507
  %511 = load i32, i32* @BHND_PMU1_PLL0_PC5_VCO_RNG, align 4
  %512 = call i32 @BHND_PMU_SET_BITS(i32 1, i32 %511)
  %513 = load i32, i32* %8, align 4
  %514 = or i32 %513, %512
  store i32 %514, i32* %8, align 4
  br label %515

515:                                              ; preds = %510, %507
  br label %516

516:                                              ; preds = %515, %474
  %517 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %518 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL5, align 4
  %519 = load i32, i32* %8, align 4
  %520 = load i32, i32* %9, align 4
  %521 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %517, i32 %518, i32 %519, i32 %520)
  br label %522

522:                                              ; preds = %516, %471
  %523 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %524 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %523, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %525 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %526 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = icmp eq i32 %528, 134
  br i1 %529, label %530, label %557

530:                                              ; preds = %522
  %531 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @XTAL_FREQ_30000MHZ, align 4
  %535 = icmp ne i32 %533, %534
  br i1 %535, label %536, label %557

536:                                              ; preds = %530
  %537 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  switch i32 %539, label %544 [
    i32 129, label %540
    i32 128, label %542
  ]

540:                                              ; preds = %536
  %541 = load i32, i32* @BHND_PMU_CCTRL4319USB_24MHZ_PLL_SEL, align 4
  store i32 %541, i32* %14, align 4
  br label %549

542:                                              ; preds = %536
  %543 = load i32, i32* @BHND_PMU_CCTRL4319USB_48MHZ_PLL_SEL, align 4
  store i32 %543, i32* %14, align 4
  br label %549

544:                                              ; preds = %536
  %545 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %547)
  br label %549

549:                                              ; preds = %544, %542, %540
  %550 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %551 = load i32, i32* @BHND_PMU1_PLL0_CHIPCTL2, align 4
  %552 = load i32, i32* %14, align 4
  %553 = load i32, i32* @BHND_PMU_CCTRL4319USB_XTAL_SEL, align 4
  %554 = call i32 @BHND_PMU_SET_BITS(i32 %552, i32 %553)
  %555 = load i32, i32* @BHND_PMU_CCTRL4319USB_XTAL_SEL_MASK, align 4
  %556 = call i32 @BHND_PMU_CCTRL_WRITE(%struct.bhnd_pmu_softc* %550, i32 %551, i32 %554, i32 %555)
  br label %557

557:                                              ; preds = %549, %530, %522
  %558 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %559 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc* %558)
  %560 = icmp sge i32 %559, 2
  br i1 %560, label %561, label %566

561:                                              ; preds = %557
  %562 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %563 = load i32, i32* @BHND_PMU_CTRL, align 4
  %564 = load i32, i32* @BHND_PMU_CTRL_PLL_PLLCTL_UPD, align 4
  %565 = call i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc* %562, i32 %563, i32 %564)
  br label %566

566:                                              ; preds = %561, %557
  %567 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %568 = load i32, i32* @BHND_PMU_CTRL, align 4
  %569 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %567, i32 %568)
  store i32 %569, i32* %10, align 4
  %570 = load i32, i32* @BHND_PMU_CTRL_ILP_DIV_MASK, align 4
  %571 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ_MASK, align 4
  %572 = or i32 %570, %571
  %573 = xor i32 %572, -1
  %574 = load i32, i32* %10, align 4
  %575 = and i32 %574, %573
  store i32 %575, i32* %10, align 4
  %576 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %577 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = add nsw i32 %578, 127
  %580 = sdiv i32 %579, 128
  %581 = sub nsw i32 %580, 1
  %582 = load i32, i32* @BHND_PMU_CTRL_ILP_DIV, align 4
  %583 = call i32 @BHND_PMU_SET_BITS(i32 %581, i32 %582)
  %584 = load i32, i32* %10, align 4
  %585 = or i32 %584, %583
  store i32 %585, i32* %10, align 4
  %586 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %587 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ, align 4
  %590 = call i32 @BHND_PMU_SET_BITS(i32 %588, i32 %589)
  %591 = load i32, i32* %10, align 4
  %592 = or i32 %591, %590
  store i32 %592, i32* %10, align 4
  %593 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %594 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = icmp eq i32 %596, 132
  br i1 %597, label %598, label %614

598:                                              ; preds = %566
  %599 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %600 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %600, i32 0, i32 1
  %602 = load i64, i64* %601, align 8
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %614

604:                                              ; preds = %598
  %605 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %606 = load i32, i32* @BHND_PMU_CLKSTRETCH, align 4
  %607 = load i32, i32* @BHND_PMU_CLKSTRETCH, align 4
  %608 = xor i32 %607, -1
  %609 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %605, i32 %606, i32 %608)
  %610 = load i32, i32* @BHND_PMU_CTRL_HT_REQ_EN, align 4
  %611 = xor i32 %610, -1
  %612 = load i32, i32* %10, align 4
  %613 = and i32 %612, %611
  store i32 %613, i32* %10, align 4
  br label %614

614:                                              ; preds = %604, %598, %566
  %615 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %616 = load i32, i32* @BHND_PMU_CTRL, align 4
  %617 = load i32, i32* %10, align 4
  %618 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %615, i32 %616, i32 %617)
  br label %619

619:                                              ; preds = %614, %87, %57, %21
  ret void
}

declare dso_local i32 @bhnd_pmu1_pllfvco0(i32*) #1

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_softc*, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @bhnd_pmu1_xtaltab0(i32*) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_softc*, i8*, i32, i32) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @PMURES_BIT(i32) #1

declare dso_local i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

declare dso_local i32 @BHND_PMU_PLL_READ(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @BHND_PMU_SET_BITS(i32, i32) #1

declare dso_local i32 @bhnd_pmu_set_4330_plldivs(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_CCTRL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

declare dso_local i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
