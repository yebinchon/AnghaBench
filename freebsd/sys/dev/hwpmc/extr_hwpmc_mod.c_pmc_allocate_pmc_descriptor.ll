; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_allocate_pmc_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_allocate_pmc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc = type { i8*, i32 }

@M_PMC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@PMC = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocate-pmc -> pmc=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmc* ()* @pmc_allocate_pmc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmc* @pmc_allocate_pmc_descriptor() #0 {
  %1 = alloca %struct.pmc*, align 8
  %2 = load i32, i32* @M_PMC, align 4
  %3 = load i32, i32* @M_WAITOK, align 4
  %4 = load i32, i32* @M_ZERO, align 4
  %5 = or i32 %3, %4
  %6 = call i8* @malloc(i32 16, i32 %2, i32 %5)
  %7 = bitcast i8* %6 to %struct.pmc*
  store %struct.pmc* %7, %struct.pmc** %1, align 8
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call i32 @counter_u64_alloc(i32 %8)
  %10 = load %struct.pmc*, %struct.pmc** %1, align 8
  %11 = getelementptr inbounds %struct.pmc, %struct.pmc* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @mp_ncpus, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_PMC, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @malloc(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.pmc*, %struct.pmc** %1, align 8
  %22 = getelementptr inbounds %struct.pmc, %struct.pmc* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @PMC, align 4
  %24 = load i32, i32* @ALL, align 4
  %25 = load %struct.pmc*, %struct.pmc** %1, align 8
  %26 = call i32 @PMCDBG1(i32 %23, i32 %24, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.pmc* %25)
  %27 = load %struct.pmc*, %struct.pmc** %1, align 8
  ret %struct.pmc* %27
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @counter_u64_alloc(i32) #1

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, %struct.pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
