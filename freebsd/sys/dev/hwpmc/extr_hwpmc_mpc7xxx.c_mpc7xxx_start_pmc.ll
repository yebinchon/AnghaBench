; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mpc7xxx.c_mpc7xxx_start_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mpc7xxx.c_mpc7xxx_start_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { %struct.pmc* }
%struct.pmc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@powerpc_pcpu = common dso_local global %struct.TYPE_6__** null, align 8
@POWERPC_PMC_ENABLE = common dso_local global i32 0, align 4
@SPR_MMCR0 = common dso_local global i32 0, align 4
@SPR_MMCR1 = common dso_local global i32 0, align 4
@SPR_MMCR0_FC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mpc7xxx_start_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7xxx_start_pmc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmc*, align 8
  %7 = alloca %struct.pmc_hw*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @powerpc_pcpu, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.pmc_hw*, %struct.pmc_hw** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %15, i64 %17
  store %struct.pmc_hw* %18, %struct.pmc_hw** %7, align 8
  %19 = load %struct.pmc_hw*, %struct.pmc_hw** %7, align 8
  %20 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %19, i32 0, i32 0
  %21 = load %struct.pmc*, %struct.pmc** %20, align 8
  store %struct.pmc* %21, %struct.pmc** %6, align 8
  %22 = load %struct.pmc*, %struct.pmc** %6, align 8
  %23 = getelementptr inbounds %struct.pmc, %struct.pmc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @POWERPC_PMC_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %85 [
    i32 0, label %31
    i32 1, label %40
    i32 2, label %49
    i32 3, label %58
    i32 4, label %67
    i32 5, label %76
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @SPR_MMCR0, align 4
  %33 = call i32 @mfspr(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @PPC_SET_PMC1SEL(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @SPR_MMCR0, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mtspr(i32 %37, i32 %38)
  br label %86

40:                                               ; preds = %2
  %41 = load i32, i32* @SPR_MMCR0, align 4
  %42 = call i32 @mfspr(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @PPC_SET_PMC2SEL(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @SPR_MMCR0, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mtspr(i32 %46, i32 %47)
  br label %86

49:                                               ; preds = %2
  %50 = load i32, i32* @SPR_MMCR1, align 4
  %51 = call i32 @mfspr(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @PPC_SET_PMC3SEL(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @SPR_MMCR1, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mtspr(i32 %55, i32 %56)
  br label %86

58:                                               ; preds = %2
  %59 = load i32, i32* @SPR_MMCR0, align 4
  %60 = call i32 @mfspr(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @PPC_SET_PMC4SEL(i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @SPR_MMCR0, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @mtspr(i32 %64, i32 %65)
  br label %86

67:                                               ; preds = %2
  %68 = load i32, i32* @SPR_MMCR1, align 4
  %69 = call i32 @mfspr(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @PPC_SET_PMC5SEL(i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @SPR_MMCR1, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @mtspr(i32 %73, i32 %74)
  br label %86

76:                                               ; preds = %2
  %77 = load i32, i32* @SPR_MMCR1, align 4
  %78 = call i32 @mfspr(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @PPC_SET_PMC6SEL(i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @SPR_MMCR1, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @mtspr(i32 %82, i32 %83)
  br label %86

85:                                               ; preds = %2
  br label %86

86:                                               ; preds = %85, %76, %67, %58, %49, %40, %31
  %87 = load %struct.pmc*, %struct.pmc** %6, align 8
  %88 = getelementptr inbounds %struct.pmc, %struct.pmc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* @POWERPC_PMC_ENABLE, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @SPR_MMCR0, align 4
  %96 = call i32 @mfspr(i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @SPR_MMCR0_FC, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @SPR_MMCR0, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @mtspr(i32 %104, i32 %105)
  ret i32 0
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @PPC_SET_PMC1SEL(i32, i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @PPC_SET_PMC2SEL(i32, i32) #1

declare dso_local i32 @PPC_SET_PMC3SEL(i32, i32) #1

declare dso_local i32 @PPC_SET_PMC4SEL(i32, i32) #1

declare dso_local i32 @PPC_SET_PMC5SEL(i32, i32) #1

declare dso_local i32 @PPC_SET_PMC6SEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
