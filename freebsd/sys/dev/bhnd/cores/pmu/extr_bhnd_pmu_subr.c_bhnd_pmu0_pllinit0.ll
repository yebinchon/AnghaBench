; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu0_pllinit0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu0_pllinit0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.bhnd_pmu_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Unspecified xtal frequency, skipping PLL configuration\0A\00", align 1
@pmu0_xtaltab0 = common dso_local global %struct.TYPE_5__* null, align 8
@PMU0_XTAL0_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"XTAL %d.%d MHz (%d)\0A\00", align 1
@BHND_PMU_CTRL = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_XTALFREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"PLL already programmed for %d.%d MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Reprogramming PLL for %d.%d MHz (was %d.%dMHz)\0A\00", align 1
@tmp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Programming PLL for %d.%d MHz\0A\00", align 1
@RES4328_BB_PLL_PU = common dso_local global i32 0, align 4
@RES5354_BB_PLL_PU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"unsupported chipid %#hx\0A\00", align 1
@BHND_PMU_MIN_RES_MASK = common dso_local global i32 0, align 4
@BHND_PMU_MAX_RES_MASK = common dso_local global i32 0, align 4
@BHND_CCS_HTAVAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Done masking\0A\00", align 1
@BHND_PMU0_PLL0_PC0_PDIV_FREQ = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PLLCTL0 = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC0_PDIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC1_WILD_INT = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC1_WILD_FRAC = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC1_STOP_MOD = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC1_WILD_INT_MASK = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC1_WILD_FRAC_MASK = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PLLCTL1 = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC2_WILD_INT = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC2_WILD_INT_MASK = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PLLCTL2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Done pll\0A\00", align 1
@BHND_PMU_CTRL_ILP_DIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_XTALFREQ_MASK = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_ILP_DIV = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC0_DIV_ARM_88MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bhnd_pmu_softc*, i32)* @bhnd_pmu0_pllinit0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bhnd_pmu0_pllinit0(%struct.bhnd_pmu_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bhnd_pmu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %15 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %242

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu0_xtaltab0, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  br label %18

18:                                               ; preds = %31, %16
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 1
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %5, align 8
  br label %18

34:                                               ; preds = %29, %18
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu0_xtaltab0, align 8
  %41 = load i64, i64* @PMU0_XTAL0_DEFAULT, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %5, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sdiv i32 %45, 1000
  %47 = load i32, i32* %4, align 4
  %48 = srem i32 %47, 1000
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48, i32 %51)
  %53 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %54 = load i32, i32* @BHND_PMU_CTRL, align 4
  %55 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ, align 4
  %58 = call i32 @BHND_PMU_GET_BITS(i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %43
  %65 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 1000
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = srem i32 %72, 1000
  %74 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %73)
  br label %242

75:                                               ; preds = %43
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 1000
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = srem i32 %86, 1000
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu0_xtaltab0, align 8
  %89 = load i32, i32* @tmp, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 1000
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu0_xtaltab0, align 8
  %97 = load i32, i32* @tmp, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, 1000
  %104 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %87, i32 %95, i32 %103)
  br label %116

105:                                              ; preds = %75
  %106 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 1000
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = srem i32 %113, 1000
  %115 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %114)
  br label %116

116:                                              ; preds = %105, %78
  %117 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %118 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %127 [
    i32 129, label %121
    i32 128, label %124
  ]

121:                                              ; preds = %116
  %122 = load i32, i32* @RES4328_BB_PLL_PU, align 4
  %123 = call i32 @PMURES_BIT(i32 %122)
  store i32 %123, i32* %8, align 4
  br label %133

124:                                              ; preds = %116
  %125 = load i32, i32* @RES5354_BB_PLL_PU, align 4
  %126 = call i32 @PMURES_BIT(i32 %125)
  store i32 %126, i32* %8, align 4
  br label %133

127:                                              ; preds = %116
  %128 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %129 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %124, %121
  %134 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %135 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %136 = load i32, i32* %8, align 4
  %137 = xor i32 %136, -1
  %138 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %134, i32 %135, i32 %137)
  %139 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %140 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %141 = load i32, i32* %8, align 4
  %142 = xor i32 %141, -1
  %143 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %139, i32 %140, i32 %142)
  %144 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %145 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %146 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %144, i32 0, i32 %145)
  %147 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %148 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BHND_PMU0_PLL0_PC0_PDIV_FREQ, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %133
  %155 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %156 = load i32, i32* @BHND_PMU0_PLL0_PLLCTL0, align 4
  %157 = load i32, i32* @BHND_PMU0_PLL0_PC0_PDIV_MASK, align 4
  %158 = load i32, i32* @BHND_PMU0_PLL0_PC0_PDIV_MASK, align 4
  %159 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %155, i32 %156, i32 %157, i32 %158)
  br label %165

160:                                              ; preds = %133
  %161 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %162 = load i32, i32* @BHND_PMU0_PLL0_PLLCTL0, align 4
  %163 = load i32, i32* @BHND_PMU0_PLL0_PC0_PDIV_MASK, align 4
  %164 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %161, i32 %162, i32 0, i32 %163)
  br label %165

165:                                              ; preds = %160, %154
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @BHND_PMU0_PLL0_PC1_WILD_INT, align 4
  %170 = call i32 @BHND_PMU_SET_BITS(i32 %168, i32 %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @BHND_PMU0_PLL0_PC1_WILD_FRAC, align 4
  %175 = call i32 @BHND_PMU_SET_BITS(i32 %173, i32 %174)
  %176 = or i32 %170, %175
  store i32 %176, i32* %6, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %165
  %182 = load i32, i32* @BHND_PMU0_PLL0_PC1_STOP_MOD, align 4
  %183 = load i32, i32* %6, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %6, align 4
  br label %190

185:                                              ; preds = %165
  %186 = load i32, i32* @BHND_PMU0_PLL0_PC1_STOP_MOD, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %185, %181
  %191 = load i32, i32* @BHND_PMU0_PLL0_PC1_WILD_INT_MASK, align 4
  %192 = load i32, i32* @BHND_PMU0_PLL0_PC1_WILD_FRAC_MASK, align 4
  %193 = or i32 %191, %192
  store i32 %193, i32* %7, align 4
  %194 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %195 = load i32, i32* @BHND_PMU0_PLL0_PLLCTL1, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %194, i32 %195, i32 %196, i32 %197)
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @BHND_PMU0_PLL0_PC2_WILD_INT, align 4
  %203 = call i32 @BHND_PMU_SET_BITS(i32 %201, i32 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @BHND_PMU0_PLL0_PC2_WILD_INT_MASK, align 4
  store i32 %204, i32* %7, align 4
  %205 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %206 = load i32, i32* @BHND_PMU0_PLL0_PLLCTL2, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %205, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %211 = call i32 (%struct.bhnd_pmu_softc*, i8*, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %212 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %213 = load i32, i32* @BHND_PMU_CTRL, align 4
  %214 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %212, i32 %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* @BHND_PMU_CTRL_ILP_DIV_MASK, align 4
  %216 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ_MASK, align 4
  %217 = or i32 %215, %216
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %9, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %9, align 4
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 127
  %225 = sdiv i32 %224, 128
  %226 = sub nsw i32 %225, 1
  %227 = load i32, i32* @BHND_PMU_CTRL_ILP_DIV, align 4
  %228 = call i32 @BHND_PMU_SET_BITS(i32 %226, i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ, align 4
  %235 = call i32 @BHND_PMU_SET_BITS(i32 %233, i32 %234)
  %236 = load i32, i32* %9, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %9, align 4
  %238 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %239 = load i32, i32* @BHND_PMU_CTRL, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %190, %64, %13
  ret void
}

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_softc*, i8*, ...) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @PMURES_BIT(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

declare dso_local i32 @BHND_PMU_SET_BITS(i32, i32) #1

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
