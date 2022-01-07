; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_set_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_set_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { %struct.pmc* }
%struct.pmc = type { i32 }

@powerpc_pcpu = common dso_local global %struct.TYPE_2__** null, align 8
@SPR_970MMCR0 = common dso_local global i32 0, align 4
@SPR_970MMCR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ppc970_set_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc970_set_pmc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmc*, align 8
  %8 = alloca %struct.pmc_hw*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @powerpc_pcpu, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pmc_hw*, %struct.pmc_hw** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %16, i64 %18
  store %struct.pmc_hw* %19, %struct.pmc_hw** %8, align 8
  %20 = load %struct.pmc_hw*, %struct.pmc_hw** %8, align 8
  %21 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %20, i32 0, i32 0
  %22 = load %struct.pmc*, %struct.pmc** %21, align 8
  store %struct.pmc* %22, %struct.pmc** %7, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %44 [
    i32 0, label %24
    i32 1, label %24
    i32 2, label %34
    i32 3, label %34
    i32 4, label %34
    i32 5, label %34
    i32 6, label %34
    i32 7, label %34
  ]

24:                                               ; preds = %3, %3
  %25 = load i32, i32* @SPR_970MMCR0, align 4
  %26 = call i32 @mfspr(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @PPC970_SET_MMCR0_PMCSEL(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @SPR_970MMCR0, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @mtspr(i32 %31, i32 %32)
  br label %44

34:                                               ; preds = %3, %3, %3, %3, %3, %3
  %35 = load i32, i32* @SPR_970MMCR1, align 4
  %36 = call i32 @mfspr(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @PPC970_SET_MMCR1_PMCSEL(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @SPR_970MMCR1, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mtspr(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %3, %34, %24
  ret i32 0
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @PPC970_SET_MMCR0_PMCSEL(i32, i32, i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @PPC970_SET_MMCR1_PMCSEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
