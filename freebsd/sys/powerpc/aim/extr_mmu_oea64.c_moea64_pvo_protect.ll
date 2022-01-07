; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vm_page = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4
@MOEA64_PTE_PROT_UPDATE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@PGA_EXECUTABLE = common dso_local global i32 0, align 4
@LPTE_I = common dso_local global i32 0, align 4
@LPTE_G = common dso_local global i32 0, align 4
@LPTE_NOEXEC = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PVO_MANAGED = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.pvo_entry*, i32)* @moea64_pvo_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_pvo_protect(i32 %0, i64 %1, %struct.pvo_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pvo_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.pvo_entry* %2, %struct.pvo_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @PMAP_LOCK_ASSERT(i64 %12, i32 %13)
  %15 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %16 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %21 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %24 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LPTE_RPGN, align 4
  %28 = and i32 %26, %27
  %29 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %28)
  store %struct.vm_page* %29, %struct.vm_page** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %32 = load i32, i32* @MOEA64_PTE_PROT_UPDATE, align 4
  %33 = call i32 @MOEA64_PTE_REPLACE(i32 %30, %struct.pvo_entry* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @VM_PROT_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @LPTE_CHG, align 4
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @kernel_pmap, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %46
  %51 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %52 = icmp ne %struct.vm_page* %51, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %50
  %54 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %55 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PGA_EXECUTABLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %96, label %60

60:                                               ; preds = %53
  %61 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %62 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LPTE_I, align 4
  %66 = load i32, i32* @LPTE_G, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @LPTE_NOEXEC, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %64, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %60
  %73 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %74 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VPO_UNMANAGED, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %81 = load i32, i32* @PGA_EXECUTABLE, align 4
  %82 = call i32 @vm_page_aflag_set(%struct.vm_page* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %87 = call i32 @PVO_VADDR(%struct.pvo_entry* %86)
  %88 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %89 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LPTE_RPGN, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = call i32 @moea64_syncicache(i32 %84, i64 %85, i32 %87, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %83, %60, %53, %50, %46
  %97 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %98 = icmp ne %struct.vm_page* %97, null
  br i1 %98, label %99, label %135

99:                                               ; preds = %96
  %100 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %101 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PVO_MANAGED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %99
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @VM_PROT_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %113 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @atomic_readandclear_32(i32* %114)
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @LPTE_CHG, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %124 = call i32 @vm_page_dirty(%struct.vm_page* %123)
  br label %125

125:                                              ; preds = %122, %111
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @LPTE_REF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.vm_page*, %struct.vm_page** %9, align 8
  %132 = load i32, i32* @PGA_REFERENCED, align 4
  %133 = call i32 @vm_page_aflag_set(%struct.vm_page* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %125
  br label %135

135:                                              ; preds = %134, %106, %99, %96
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @MOEA64_PTE_REPLACE(i32, %struct.pvo_entry*, i32) #1

declare dso_local i32 @vm_page_aflag_set(%struct.vm_page*, i32) #1

declare dso_local i32 @moea64_syncicache(i32, i64, i32, i32, i32) #1

declare dso_local i32 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local i32 @atomic_readandclear_32(i32*) #1

declare dso_local i32 @vm_page_dirty(%struct.vm_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
