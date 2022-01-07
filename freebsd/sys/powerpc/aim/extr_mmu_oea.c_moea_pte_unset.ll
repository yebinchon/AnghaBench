; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pte_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pte_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pte = type { i32 }

@moea_table_mutex = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@moea_pte_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pte*, %struct.pte*, i32)* @moea_pte_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea_pte_unset(%struct.pte* %0, %struct.pte* %1, i32 %2) #0 {
  %4 = alloca %struct.pte*, align 8
  %5 = alloca %struct.pte*, align 8
  %6 = alloca i32, align 4
  store %struct.pte* %0, %struct.pte** %4, align 8
  store %struct.pte* %1, %struct.pte** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* @moea_table_mutex, i32 %7)
  %9 = load i32, i32* @PTE_VALID, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.pte*, %struct.pte** %5, align 8
  %12 = getelementptr inbounds %struct.pte, %struct.pte* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = call i32 (...) @powerpc_sync()
  %16 = load i32, i32* @PTE_VALID, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.pte*, %struct.pte** %4, align 8
  %19 = getelementptr inbounds %struct.pte, %struct.pte* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tlbie(i32 %22)
  %24 = load %struct.pte*, %struct.pte** %4, align 8
  %25 = load %struct.pte*, %struct.pte** %5, align 8
  %26 = call i32 @moea_pte_synch(%struct.pte* %24, %struct.pte* %25)
  %27 = load i32, i32* @moea_pte_valid, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @moea_pte_valid, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @tlbie(i32) #1

declare dso_local i32 @moea_pte_synch(%struct.pte*, %struct.pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
