; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pte_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pte_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pte = type { i32, i32 }

@moea_table_mutex = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@moea_pte_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pte*, %struct.pte*)* @moea_pte_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea_pte_set(%struct.pte* %0, %struct.pte* %1) #0 {
  %3 = alloca %struct.pte*, align 8
  %4 = alloca %struct.pte*, align 8
  store %struct.pte* %0, %struct.pte** %3, align 8
  store %struct.pte* %1, %struct.pte** %4, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @moea_table_mutex, i32 %5)
  %7 = load i32, i32* @PTE_VALID, align 4
  %8 = load %struct.pte*, %struct.pte** %4, align 8
  %9 = getelementptr inbounds %struct.pte, %struct.pte* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pte*, %struct.pte** %4, align 8
  %13 = getelementptr inbounds %struct.pte, %struct.pte* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pte*, %struct.pte** %3, align 8
  %16 = getelementptr inbounds %struct.pte, %struct.pte* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @powerpc_sync()
  %18 = load %struct.pte*, %struct.pte** %4, align 8
  %19 = getelementptr inbounds %struct.pte, %struct.pte* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pte*, %struct.pte** %3, align 8
  %22 = getelementptr inbounds %struct.pte, %struct.pte* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = call i32 (...) @powerpc_sync()
  %24 = load i32, i32* @moea_pte_valid, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @moea_pte_valid, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @powerpc_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
