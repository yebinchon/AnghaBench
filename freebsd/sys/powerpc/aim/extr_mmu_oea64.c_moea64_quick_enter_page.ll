; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_quick_enter_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_quick_enter_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pvo_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@hw_direct_map = common dso_local global i64 0, align 8
@aim = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@MOEA64_PTE_INVALIDATE = common dso_local global i32 0, align 4
@qmap_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvo_entry* @moea64_quick_enter_page(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.pvo_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @VM_PAGE_TO_PHYS(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @hw_direct_map, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.pvo_entry* @PHYS_TO_DMAP(i64 %13)
  store %struct.pvo_entry* %14, %struct.pvo_entry** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = call i32 (...) @sched_pin()
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aim, i32 0, i32 0), align 4
  %18 = call i32 @PCPU_PTR(i32 %17)
  %19 = load i32, i32* @MA_NOTOWNED, align 4
  %20 = call i32 @mtx_assert(i32 %18, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aim, i32 0, i32 1), align 4
  %22 = call %struct.pvo_entry* @PCPU_GET(i32 %21)
  store %struct.pvo_entry* %22, %struct.pvo_entry** %6, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aim, i32 0, i32 0), align 4
  %24 = call i32 @PCPU_PTR(i32 %23)
  %25 = call i32 @mtx_lock(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pmap_page_get_memattr(i32 %27)
  %29 = call i32 @moea64_calc_wimg(i64 %26, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = or i32 %29, %31
  %33 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %34 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %38 = load i32, i32* @MOEA64_PTE_INVALIDATE, align 4
  %39 = call i32 @MOEA64_PTE_REPLACE(i32 %36, %struct.pvo_entry* %37, i32 %38)
  %40 = call i32 (...) @isync()
  %41 = load i32, i32* @qmap_addr, align 4
  %42 = call %struct.pvo_entry* @PCPU_GET(i32 %41)
  store %struct.pvo_entry* %42, %struct.pvo_entry** %3, align 8
  br label %43

43:                                               ; preds = %15, %12
  %44 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  ret %struct.pvo_entry* %44
}

declare dso_local i64 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local %struct.pvo_entry* @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @PCPU_PTR(i32) #1

declare dso_local %struct.pvo_entry* @PCPU_GET(i32) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @moea64_calc_wimg(i64, i32) #1

declare dso_local i32 @pmap_page_get_memattr(i32) #1

declare dso_local i32 @MOEA64_PTE_REPLACE(i32, %struct.pvo_entry*, i32) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
