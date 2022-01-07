; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ADDR_POFF = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @moea64_extract_and_hold(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvo_entry*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @PMAP_LOCK(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ADDR_POFF, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call %struct.pvo_entry* @moea64_pvo_find_va(i32 %13, i32 %17)
  store %struct.pvo_entry* %18, %struct.pvo_entry** %9, align 8
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %20 = icmp ne %struct.pvo_entry* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %23 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %32 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LPTE_RPGN, align 4
  %36 = and i32 %34, %35
  %37 = call i32* @PHYS_TO_VM_PAGE(i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @vm_page_wire_mapped(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store i32* null, i32** %10, align 8
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %21, %4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @PMAP_UNLOCK(i32 %44)
  %46 = load i32*, i32** %10, align 8
  ret i32* %46
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @moea64_pvo_find_va(i32, i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
