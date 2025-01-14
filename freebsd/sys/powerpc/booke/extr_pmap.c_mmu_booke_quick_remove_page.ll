; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_quick_remove_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_quick_remove_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i32 0, align 4
@qmap_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mmu_booke_quick_remove_page: invalid address\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"mmu_booke_quick_remove_page: PTE not in use\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @mmu_booke_quick_remove_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_quick_remove_page(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @kernel_pmap, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i64* @pte_find(i32 %6, i32 %7, i64 %8)
  store i64* %9, i64** %5, align 8
  %10 = load i32, i32* @qmap_addr, align 4
  %11 = call i64 @PCPU_GET(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64*, i64** %5, align 8
  store i64 0, i64* %21, align 8
  %22 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i64* @pte_find(i32, i32, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
