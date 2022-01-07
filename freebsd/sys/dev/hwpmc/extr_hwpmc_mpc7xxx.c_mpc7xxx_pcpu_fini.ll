; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mpc7xxx.c_mpc7xxx_pcpu_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mpc7xxx.c_mpc7xxx_pcpu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.pmc_mdep = type { i32 }

@SPR_MMCR0 = common dso_local global i32 0, align 4
@PSL_PMM = common dso_local global i32 0, align 4
@SPR_MMCR0_FC = common dso_local global i32 0, align 4
@powerpc_pcpu = common dso_local global %struct.TYPE_3__** null, align 8
@M_PMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmc_mdep*, i32)* @mpc7xxx_pcpu_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7xxx_pcpu_fini(%struct.pmc_mdep* %0, i32 %1) #0 {
  %3 = alloca %struct.pmc_mdep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmc_mdep* %0, %struct.pmc_mdep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SPR_MMCR0, align 4
  %7 = call i32 @mfspr(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @mfmsr()
  %9 = load i32, i32* @PSL_PMM, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @mtmsr(i32 %11)
  %13 = load i32, i32* @SPR_MMCR0_FC, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SPR_MMCR0, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mtspr(i32 %16, i32 %17)
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @powerpc_pcpu, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* @M_PMC, align 4
  %27 = call i32 @free(%struct.TYPE_3__* %25, i32 %26)
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @powerpc_pcpu, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @M_PMC, align 4
  %34 = call i32 @free(%struct.TYPE_3__* %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
