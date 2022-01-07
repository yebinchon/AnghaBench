; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_allocate_owner_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_allocate_owner_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_ownerhash = type { i32 }
%struct.pmc_owner = type { i32, i32, %struct.proc* }
%struct.proc = type { i32, i32 }

@pmc_ownerhashmask = common dso_local global i32 0, align 4
@pmc_ownerhash = common dso_local global %struct.pmc_ownerhash* null, align 8
@M_PMC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@po_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pmc-owner-mtx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pmc-per-proc\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@OWN = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"allocate-owner proc=%p (%d, %s) pmc-owner=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmc_owner* (%struct.proc*)* @pmc_allocate_owner_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmc_owner* @pmc_allocate_owner_descriptor(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pmc_owner*, align 8
  %5 = alloca %struct.pmc_ownerhash*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = load i32, i32* @pmc_ownerhashmask, align 4
  %8 = call i64 @PMC_HASH_PTR(%struct.proc* %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.pmc_ownerhash*, %struct.pmc_ownerhash** @pmc_ownerhash, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.pmc_ownerhash, %struct.pmc_ownerhash* %9, i64 %10
  store %struct.pmc_ownerhash* %11, %struct.pmc_ownerhash** %5, align 8
  %12 = load i32, i32* @M_PMC, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.pmc_owner* @malloc(i32 16, i32 %12, i32 %15)
  store %struct.pmc_owner* %16, %struct.pmc_owner** %4, align 8
  %17 = load %struct.proc*, %struct.proc** %2, align 8
  %18 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %19 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %18, i32 0, i32 2
  store %struct.proc* %17, %struct.proc** %19, align 8
  %20 = load %struct.pmc_ownerhash*, %struct.pmc_ownerhash** %5, align 8
  %21 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %22 = load i32, i32* @po_next, align 4
  %23 = call i32 @LIST_INSERT_HEAD(%struct.pmc_ownerhash* %20, %struct.pmc_owner* %21, i32 %22)
  %24 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %25 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %24, i32 0, i32 1
  %26 = call i32 @TAILQ_INIT(i32* %25)
  %27 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %28 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %27, i32 0, i32 0
  %29 = load i32, i32* @MTX_SPIN, align 4
  %30 = call i32 @mtx_init(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @OWN, align 4
  %32 = load i32, i32* @ALL, align 4
  %33 = load %struct.proc*, %struct.proc** %2, align 8
  %34 = load %struct.proc*, %struct.proc** %2, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.proc*, %struct.proc** %2, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %41 = call i32 @PMCDBG4(i32 %31, i32 %32, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.proc* %33, i32 %36, i32 %39, %struct.pmc_owner* %40)
  %42 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  ret %struct.pmc_owner* %42
}

declare dso_local i64 @PMC_HASH_PTR(%struct.proc*, i32) #1

declare dso_local %struct.pmc_owner* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.pmc_ownerhash*, %struct.pmc_owner*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @PMCDBG4(i32, i32, i32, i8*, %struct.proc*, i32, i32, %struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
