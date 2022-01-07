; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_start_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_start_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { %struct.pmc* }
%struct.pmc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@powerpc_pcpu = common dso_local global %struct.TYPE_6__** null, align 8
@POWERPC_PMC_ENABLE = common dso_local global i32 0, align 4
@SPR_970MMCR0 = common dso_local global i32 0, align 4
@SPR_MMCR0_FC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ppc970_start_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc970_start_pmc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc*, align 8
  %6 = alloca %struct.pmc_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @powerpc_pcpu, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %10, i64 %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.pmc_hw*, %struct.pmc_hw** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %16, i64 %18
  store %struct.pmc_hw* %19, %struct.pmc_hw** %6, align 8
  %20 = load %struct.pmc_hw*, %struct.pmc_hw** %6, align 8
  %21 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %20, i32 0, i32 0
  %22 = load %struct.pmc*, %struct.pmc** %21, align 8
  store %struct.pmc* %22, %struct.pmc** %5, align 8
  %23 = load %struct.pmc*, %struct.pmc** %5, align 8
  %24 = getelementptr inbounds %struct.pmc, %struct.pmc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @POWERPC_PMC_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ppc970_set_pmc(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pmc*, %struct.pmc** %5, align 8
  %36 = getelementptr inbounds %struct.pmc, %struct.pmc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* @POWERPC_PMC_ENABLE, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @SPR_970MMCR0, align 4
  %44 = call i32 @mfspr(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @SPR_MMCR0_FC, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @SPR_970MMCR0, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mtspr(i32 %52, i32 %53)
  ret i32 0
}

declare dso_local i32 @ppc970_set_pmc(i32, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
