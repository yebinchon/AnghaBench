; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_pmc_ppc970_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_pmc_ppc970_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_mdep = type { i32, i32, %struct.pmc_classdep*, i32 }
%struct.pmc_classdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@PMC_CPU_PPC_970 = common dso_local global i32 0, align 4
@PMC_MDEP_CLASS_INDEX_POWERPC = common dso_local global i64 0, align 8
@POWERPC_PMC_CAPS = common dso_local global i32 0, align 4
@PMC_CLASS_PPC970 = common dso_local global i32 0, align 4
@PPC970_MAX_PMCS = common dso_local global i64 0, align 8
@ppc970_allocate_pmc = common dso_local global i32 0, align 4
@ppc970_config_pmc = common dso_local global i32 0, align 4
@ppc970_pcpu_fini = common dso_local global i32 0, align 4
@ppc970_pcpu_init = common dso_local global i32 0, align 4
@powerpc_describe = common dso_local global i32 0, align 4
@powerpc_get_config = common dso_local global i32 0, align 4
@ppc970_read_pmc = common dso_local global i32 0, align 4
@ppc970_release_pmc = common dso_local global i32 0, align 4
@ppc970_start_pmc = common dso_local global i32 0, align 4
@ppc970_stop_pmc = common dso_local global i32 0, align 4
@ppc970_write_pmc = common dso_local global i32 0, align 4
@ppc970_intr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_ppc970_initialize(%struct.pmc_mdep* %0) #0 {
  %2 = alloca %struct.pmc_mdep*, align 8
  %3 = alloca %struct.pmc_classdep*, align 8
  store %struct.pmc_mdep* %0, %struct.pmc_mdep** %2, align 8
  %4 = load i32, i32* @PMC_CPU_PPC_970, align 4
  %5 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %6 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 8
  %7 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %8 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %7, i32 0, i32 2
  %9 = load %struct.pmc_classdep*, %struct.pmc_classdep** %8, align 8
  %10 = load i64, i64* @PMC_MDEP_CLASS_INDEX_POWERPC, align 8
  %11 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %9, i64 %10
  store %struct.pmc_classdep* %11, %struct.pmc_classdep** %3, align 8
  %12 = load i32, i32* @POWERPC_PMC_CAPS, align 4
  %13 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %14 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %13, i32 0, i32 15
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PMC_CLASS_PPC970, align 4
  %16 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %17 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %16, i32 0, i32 14
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* @PPC970_MAX_PMCS, align 8
  %19 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %20 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %19, i32 0, i32 13
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %22 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %25 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %27 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %26, i32 0, i32 0
  store i32 32, i32* %27, align 8
  %28 = load i32, i32* @ppc970_allocate_pmc, align 4
  %29 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %30 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ppc970_config_pmc, align 4
  %32 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %33 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ppc970_pcpu_fini, align 4
  %35 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %36 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ppc970_pcpu_init, align 4
  %38 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %39 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @powerpc_describe, align 4
  %41 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %42 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @powerpc_get_config, align 4
  %44 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %45 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ppc970_read_pmc, align 4
  %47 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %48 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ppc970_release_pmc, align 4
  %50 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %51 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ppc970_start_pmc, align 4
  %53 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %54 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ppc970_stop_pmc, align 4
  %56 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %57 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ppc970_write_pmc, align 4
  %59 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %60 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* @PPC970_MAX_PMCS, align 8
  %62 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %63 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load i32, i32* @ppc970_intr, align 4
  %69 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %70 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
