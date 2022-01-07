; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_arm64.c_pmc_arm64_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_arm64.c_pmc_arm64_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_mdep = type { i32, i32, i32, i32, %struct.pmc_classdep*, i32 }
%struct.pmc_classdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PMCR_N_MASK = common dso_local global i32 0, align 4
@PMCR_N_SHIFT = common dso_local global i32 0, align 4
@arm64_npmcs = common dso_local global i32 0, align 4
@PMCR_IDCODE_MASK = common dso_local global i32 0, align 4
@PMCR_IDCODE_SHIFT = common dso_local global i32 0, align 4
@MDP = common dso_local global i32 0, align 4
@INI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"arm64-init npmcs=%d\00", align 1
@M_PMC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@arm64_pcpu = common dso_local global i32 0, align 4
@PMC_CPU_ARMV8_CORTEX_A57 = common dso_local global i32 0, align 4
@PMC_CPU_ARMV8_CORTEX_A53 = common dso_local global i32 0, align 4
@PMC_MDEP_CLASS_INDEX_ARMV8 = common dso_local global i64 0, align 8
@ARMV8_PMC_CAPS = common dso_local global i32 0, align 4
@PMC_CLASS_ARMV8 = common dso_local global i32 0, align 4
@arm64_allocate_pmc = common dso_local global i32 0, align 4
@arm64_config_pmc = common dso_local global i32 0, align 4
@arm64_pcpu_fini = common dso_local global i32 0, align 4
@arm64_pcpu_init = common dso_local global i32 0, align 4
@arm64_describe = common dso_local global i32 0, align 4
@arm64_get_config = common dso_local global i32 0, align 4
@arm64_read_pmc = common dso_local global i32 0, align 4
@arm64_release_pmc = common dso_local global i32 0, align 4
@arm64_start_pmc = common dso_local global i32 0, align 4
@arm64_stop_pmc = common dso_local global i32 0, align 4
@arm64_write_pmc = common dso_local global i32 0, align 4
@arm64_intr = common dso_local global i32 0, align 4
@arm64_switch_in = common dso_local global i32 0, align 4
@arm64_switch_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmc_mdep* @pmc_arm64_initialize() #0 {
  %1 = alloca %struct.pmc_mdep*, align 8
  %2 = alloca %struct.pmc_classdep*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @arm64_pmcr_read()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PMCR_N_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @PMCR_N_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* @arm64_npmcs, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PMCR_IDCODE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PMCR_IDCODE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @MDP, align 4
  %17 = load i32, i32* @INI, align 4
  %18 = load i32, i32* @arm64_npmcs, align 4
  %19 = call i32 @PMCDBG1(i32 %16, i32 %17, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @pmc_cpu_max()
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_PMC, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @malloc(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* @arm64_pcpu, align 4
  %29 = call %struct.pmc_mdep* @pmc_mdep_alloc(i32 1)
  store %struct.pmc_mdep* %29, %struct.pmc_mdep** %1, align 8
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %31
    i32 130, label %36
  ]

31:                                               ; preds = %0, %0
  %32 = load i32, i32* @PMC_CPU_ARMV8_CORTEX_A57, align 4
  %33 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %34 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  br label %40

35:                                               ; preds = %0
  br label %36

36:                                               ; preds = %0, %35
  %37 = load i32, i32* @PMC_CPU_ARMV8_CORTEX_A53, align 4
  %38 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %39 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %42 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %41, i32 0, i32 4
  %43 = load %struct.pmc_classdep*, %struct.pmc_classdep** %42, align 8
  %44 = load i64, i64* @PMC_MDEP_CLASS_INDEX_ARMV8, align 8
  %45 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %43, i64 %44
  store %struct.pmc_classdep* %45, %struct.pmc_classdep** %2, align 8
  %46 = load i32, i32* @ARMV8_PMC_CAPS, align 4
  %47 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %48 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %47, i32 0, i32 15
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @PMC_CLASS_ARMV8, align 4
  %50 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %51 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @arm64_npmcs, align 4
  %53 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %54 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %56 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %59 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %61 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %60, i32 0, i32 2
  store i32 32, i32* %61, align 4
  %62 = load i32, i32* @arm64_allocate_pmc, align 4
  %63 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %64 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @arm64_config_pmc, align 4
  %66 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %67 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @arm64_pcpu_fini, align 4
  %69 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %70 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @arm64_pcpu_init, align 4
  %72 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %73 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @arm64_describe, align 4
  %75 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %76 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @arm64_get_config, align 4
  %78 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %79 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @arm64_read_pmc, align 4
  %81 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %82 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @arm64_release_pmc, align 4
  %84 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %85 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @arm64_start_pmc, align 4
  %87 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %88 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @arm64_stop_pmc, align 4
  %90 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %91 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @arm64_write_pmc, align 4
  %93 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %94 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @arm64_intr, align 4
  %96 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %97 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @arm64_switch_in, align 4
  %99 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %100 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @arm64_switch_out, align 4
  %102 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %103 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @arm64_npmcs, align 4
  %105 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %106 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  ret %struct.pmc_mdep* %109
}

declare dso_local i32 @arm64_pmcr_read(...) #1

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @pmc_cpu_max(...) #1

declare dso_local %struct.pmc_mdep* @pmc_mdep_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
