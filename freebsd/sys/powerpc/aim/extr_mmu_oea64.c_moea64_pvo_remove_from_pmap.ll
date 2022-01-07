; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_remove_from_pmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_remove_from_pmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vm_page = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Trying to remove PVO with no pmap\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@PVO_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Trying to remove dead PVO\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@pvo_tree = common dso_local global i32 0, align 4
@PVO_MANAGED = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pvo_entry*)* @moea64_pvo_remove_from_pmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_pvo_remove_from_pmap(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvo_entry*, align 8
  %5 = alloca %struct.vm_page*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %4, align 8
  %7 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %8 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %14 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_8__* %15, i32 %16)
  %18 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %19 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PVO_DEAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %29 = call i32 @MOEA64_PTE_UNSET(i32 %27, %struct.pvo_entry* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %34 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VM_PROT_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @LPTE_CHG, align 4
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %40
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %46 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %53 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PVO_WIRED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %60 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %58, %44
  %67 = load i32, i32* @pvo_tree, align 4
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %69 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %73 = call i32 @RB_REMOVE(i32 %67, i32* %71, %struct.pvo_entry* %72)
  %74 = load i32, i32* @PVO_DEAD, align 4
  %75 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %76 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %80 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PVO_MANAGED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %66
  %86 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %87 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VM_PROT_WRITE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %128

93:                                               ; preds = %85
  %94 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %95 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @LPTE_RPGN, align 4
  %99 = and i32 %97, %98
  %100 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %99)
  store %struct.vm_page* %100, %struct.vm_page** %5, align 8
  %101 = load %struct.vm_page*, %struct.vm_page** %5, align 8
  %102 = icmp ne %struct.vm_page* %101, null
  br i1 %102, label %103, label %127

103:                                              ; preds = %93
  %104 = load %struct.vm_page*, %struct.vm_page** %5, align 8
  %105 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @atomic_readandclear_32(i32* %106)
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @LPTE_CHG, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load %struct.vm_page*, %struct.vm_page** %5, align 8
  %116 = call i32 @vm_page_dirty(%struct.vm_page* %115)
  br label %117

117:                                              ; preds = %114, %103
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @LPTE_REF, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.vm_page*, %struct.vm_page** %5, align 8
  %124 = load i32, i32* @PGA_REFERENCED, align 4
  %125 = call i32 @vm_page_aflag_set(%struct.vm_page* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %93
  br label %128

128:                                              ; preds = %127, %85, %66
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @MOEA64_PTE_UNSET(i32, %struct.pvo_entry*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pvo_entry*) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @atomic_readandclear_32(i32*) #1

declare dso_local i32 @vm_page_dirty(%struct.vm_page*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.vm_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
