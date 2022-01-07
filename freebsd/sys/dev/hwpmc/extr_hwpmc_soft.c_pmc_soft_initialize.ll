; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_soft.c_pmc_soft_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_soft.c_pmc_soft_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_mdep = type { i32, %struct.pmc_classdep* }
%struct.pmc_classdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i64, i32, i32 }

@M_PMC = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@soft_pcpu = common dso_local global i32 0, align 4
@PMC_CLASS_INDEX_SOFT = common dso_local global i64 0, align 8
@SOFT_CAPS = common dso_local global i32 0, align 4
@PMC_CLASS_SOFT = common dso_local global i32 0, align 4
@SOFT_NPMCS = common dso_local global i64 0, align 8
@soft_allocate_pmc = common dso_local global i32 0, align 4
@soft_config_pmc = common dso_local global i32 0, align 4
@soft_describe = common dso_local global i32 0, align 4
@soft_get_config = common dso_local global i32 0, align 4
@soft_pcpu_init = common dso_local global i32 0, align 4
@soft_pcpu_fini = common dso_local global i32 0, align 4
@soft_read_pmc = common dso_local global i32 0, align 4
@soft_write_pmc = common dso_local global i32 0, align 4
@soft_release_pmc = common dso_local global i32 0, align 4
@soft_start_pmc = common dso_local global i32 0, align 4
@soft_stop_pmc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmc_soft_initialize(%struct.pmc_mdep* %0) #0 {
  %2 = alloca %struct.pmc_mdep*, align 8
  %3 = alloca %struct.pmc_classdep*, align 8
  store %struct.pmc_mdep* %0, %struct.pmc_mdep** %2, align 8
  %4 = call i32 (...) @pmc_cpu_max()
  %5 = sext i32 %4 to i64
  %6 = mul i64 8, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @M_PMC, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @malloc(i32 %7, i32 %8, i32 %11)
  store i32 %12, i32* @soft_pcpu, align 4
  %13 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %14 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %13, i32 0, i32 1
  %15 = load %struct.pmc_classdep*, %struct.pmc_classdep** %14, align 8
  %16 = load i64, i64* @PMC_CLASS_INDEX_SOFT, align 8
  %17 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %15, i64 %16
  store %struct.pmc_classdep* %17, %struct.pmc_classdep** %3, align 8
  %18 = load i32, i32* @SOFT_CAPS, align 4
  %19 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %20 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %19, i32 0, i32 16
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @PMC_CLASS_SOFT, align 4
  %22 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %23 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* @SOFT_NPMCS, align 8
  %25 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %26 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %25, i32 0, i32 14
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %28 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %31 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %33 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %32, i32 0, i32 0
  store i32 64, i32* %33, align 8
  %34 = load i32, i32* @soft_allocate_pmc, align 4
  %35 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %36 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @soft_config_pmc, align 4
  %38 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %39 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @soft_describe, align 4
  %41 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %42 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @soft_get_config, align 4
  %44 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %45 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %47 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %46, i32 0, i32 8
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @soft_pcpu_init, align 4
  %49 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %50 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @soft_pcpu_fini, align 4
  %52 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %53 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @soft_read_pmc, align 4
  %55 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %56 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @soft_write_pmc, align 4
  %58 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %59 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @soft_release_pmc, align 4
  %61 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %62 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @soft_start_pmc, align 4
  %64 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %65 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @soft_stop_pmc, align 4
  %67 = load %struct.pmc_classdep*, %struct.pmc_classdep** %3, align 8
  %68 = getelementptr inbounds %struct.pmc_classdep, %struct.pmc_classdep* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* @SOFT_NPMCS, align 8
  %70 = load %struct.pmc_mdep*, %struct.pmc_mdep** %2, align 8
  %71 = getelementptr inbounds %struct.pmc_mdep, %struct.pmc_mdep* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  ret void
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @pmc_cpu_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
