; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ADDR_POFF = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@PTE_PP = common dso_local global i32 0, align 4
@PTE_RW = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PTE_RPGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @moea_extract_and_hold(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = call %struct.pvo_entry* @moea_pvo_find_va(i32 %13, i32 %17, i32* null)
  store %struct.pvo_entry* %18, %struct.pvo_entry** %9, align 8
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %20 = icmp ne %struct.pvo_entry* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %4
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %23 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PTE_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %21
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %32 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PTE_PP, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @PTE_RW, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @VM_PROT_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40, %30
  %46 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %47 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PTE_RPGN, align 4
  %52 = and i32 %50, %51
  %53 = call i32* @PHYS_TO_VM_PAGE(i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @vm_page_wire_mapped(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  store i32* null, i32** %10, align 8
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %40, %21, %4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @PMAP_UNLOCK(i32 %60)
  %62 = load i32*, i32** %10, align 8
  ret i32* %62
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @moea_pvo_find_va(i32, i32, i32*) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
