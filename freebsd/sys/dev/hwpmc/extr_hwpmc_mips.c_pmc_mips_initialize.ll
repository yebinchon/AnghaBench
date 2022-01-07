; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mips.c_pmc_mips_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mips.c_pmc_mips_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.pmc_mdep = type { i32, i32, i32, i32, %struct.pmc_classdep*, i32 }
%struct.pmc_classdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mips_npmcs = common dso_local global i32 0, align 4
@MDP = common dso_local global i32 0, align 4
@INI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mips-init npmcs=%d\00", align 1
@M_PMC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@mips_pcpu = common dso_local global i32 0, align 4
@mips_pmc_spec = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PMC_MDEP_CLASS_INDEX_MIPS = common dso_local global i64 0, align 8
@mips_allocate_pmc = common dso_local global i32 0, align 4
@mips_config_pmc = common dso_local global i32 0, align 4
@mips_pcpu_fini = common dso_local global i32 0, align 4
@mips_pcpu_init = common dso_local global i32 0, align 4
@mips_describe = common dso_local global i32 0, align 4
@mips_get_config = common dso_local global i32 0, align 4
@mips_read_pmc = common dso_local global i32 0, align 4
@mips_release_pmc = common dso_local global i32 0, align 4
@mips_start_pmc = common dso_local global i32 0, align 4
@mips_stop_pmc = common dso_local global i32 0, align 4
@mips_write_pmc = common dso_local global i32 0, align 4
@mips_pmc_intr = common dso_local global i32 0, align 4
@mips_pmc_switch_in = common dso_local global i32 0, align 4
@mips_pmc_switch_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmc_mdep* @pmc_mips_initialize() #0 {
  %1 = alloca %struct.pmc_mdep*, align 8
  %2 = alloca %struct.pmc_classdep*, align 8
  store i32 2, i32* @mips_npmcs, align 4
  %3 = load i32, i32* @MDP, align 4
  %4 = load i32, i32* @INI, align 4
  %5 = load i32, i32* @mips_npmcs, align 4
  %6 = call i32 @PMCDBG1(i32 %3, i32 %4, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (...) @pmc_cpu_max()
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @M_PMC, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @malloc(i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* @mips_pcpu, align 4
  %16 = call %struct.pmc_mdep* @pmc_mdep_alloc(i32 1)
  store %struct.pmc_mdep* %16, %struct.pmc_mdep** %1, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_pmc_spec, i32 0, i32 3), align 4
  %18 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %19 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %21 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %20, i32 0, i32 4
  %22 = load %struct.pmc_classdep*, %struct.pmc_classdep** %21, align 8
  %23 = load i64, i64* @PMC_MDEP_CLASS_INDEX_MIPS, align 8
  %24 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %22, i64 %23
  store %struct.pmc_classdep* %24, %struct.pmc_classdep** %2, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_pmc_spec, i32 0, i32 2), align 4
  %26 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %27 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_pmc_spec, i32 0, i32 1), align 4
  %29 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %30 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @mips_npmcs, align 4
  %32 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %33 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %35 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %38 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_pmc_spec, i32 0, i32 0), align 4
  %40 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %41 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @mips_allocate_pmc, align 4
  %43 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %44 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @mips_config_pmc, align 4
  %46 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %47 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @mips_pcpu_fini, align 4
  %49 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %50 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @mips_pcpu_init, align 4
  %52 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %53 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @mips_describe, align 4
  %55 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %56 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @mips_get_config, align 4
  %58 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %59 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @mips_read_pmc, align 4
  %61 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %62 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @mips_release_pmc, align 4
  %64 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %65 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @mips_start_pmc, align 4
  %67 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %68 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @mips_stop_pmc, align 4
  %70 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %71 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @mips_write_pmc, align 4
  %73 = load %struct.pmc_classdep*, %struct.pmc_classdep** %2, align 8
  %74 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @mips_pmc_intr, align 4
  %76 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %77 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @mips_pmc_switch_in, align 4
  %79 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %80 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @mips_pmc_switch_out, align 4
  %82 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %83 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @mips_npmcs, align 4
  %85 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  %86 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.pmc_mdep*, %struct.pmc_mdep** %1, align 8
  ret %struct.pmc_mdep* %89
}

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
