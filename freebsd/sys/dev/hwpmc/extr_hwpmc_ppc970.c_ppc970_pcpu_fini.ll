; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_pcpu_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_pcpu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.pmc_mdep = type { i32 }

@SPR_MMCR0 = common dso_local global i32 0, align 4
@SPR_MMCR0_FC = common dso_local global i32 0, align 4
@SPR_MMCR0_PMXE = common dso_local global i32 0, align 4
@powerpc_pcpu = common dso_local global %struct.TYPE_3__** null, align 8
@M_PMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmc_mdep*, i32)* @ppc970_pcpu_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc970_pcpu_fini(%struct.pmc_mdep* %0, i32 %1) #0 {
  %3 = alloca %struct.pmc_mdep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmc_mdep* %0, %struct.pmc_mdep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SPR_MMCR0, align 4
  %7 = call i32 @mfspr(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @SPR_MMCR0_FC, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @SPR_MMCR0_PMXE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SPR_MMCR0, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mtspr(i32 %15, i32 %16)
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @powerpc_pcpu, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* @M_PMC, align 4
  %26 = call i32 @free(%struct.TYPE_3__* %24, i32 %25)
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @powerpc_pcpu, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @M_PMC, align 4
  %33 = call i32 @free(%struct.TYPE_3__* %31, i32 %32)
  ret i32 0
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
