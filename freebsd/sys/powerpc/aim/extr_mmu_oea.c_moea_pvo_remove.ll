; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pvo_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pvo_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pte = type { i32 }
%struct.vm_page = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@moea_table_mutex = common dso_local global i32 0, align 4
@moea_pte_overflow = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@pvo_vlink = common dso_local global i32 0, align 4
@pvo_tree = common dso_local global i32 0, align 4
@PVO_MANAGED = common dso_local global i32 0, align 4
@PTE_RPGN = common dso_local global i32 0, align 4
@PTE_REF = common dso_local global i32 0, align 4
@PTE_CHG = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@pvo_olink = common dso_local global i32 0, align 4
@PVO_BOOTSTRAP = common dso_local global i32 0, align 4
@moea_mpvo_zone = common dso_local global i32 0, align 4
@moea_upvo_zone = common dso_local global i32 0, align 4
@moea_pvo_entries = common dso_local global i32 0, align 4
@moea_pvo_remove_calls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvo_entry*, i32)* @moea_pvo_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea_pvo_remove(%struct.pvo_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.pvo_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pte*, align 8
  %6 = alloca %struct.vm_page*, align 8
  store %struct.pvo_entry* %0, %struct.pvo_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.pte* @moea_pvo_to_pte(%struct.pvo_entry* %7, i32 %8)
  store %struct.pte* %9, %struct.pte** %5, align 8
  %10 = load %struct.pte*, %struct.pte** %5, align 8
  %11 = icmp ne %struct.pte* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.pte*, %struct.pte** %5, align 8
  %14 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %15 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %18 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @moea_pte_unset(%struct.pte* %13, %struct.TYPE_10__* %16, i32 %19)
  %21 = call i32 @mtx_unlock(i32* @moea_table_mutex)
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %23 = call i32 @PVO_PTEGIDX_CLR(%struct.pvo_entry* %22)
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @moea_pte_overflow, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @moea_pte_overflow, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %29 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %36 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PVO_WIRED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %43 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %27
  %50 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %51 = load i32, i32* @pvo_vlink, align 4
  %52 = call i32 @LIST_REMOVE(%struct.pvo_entry* %50, i32 %51)
  %53 = load i32, i32* @pvo_tree, align 4
  %54 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %55 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %59 = call i32 @RB_REMOVE(i32 %53, i32* %57, %struct.pvo_entry* %58)
  %60 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %61 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PVO_MANAGED, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @PVO_MANAGED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %49
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %69 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PTE_RPGN, align 4
  %74 = and i32 %72, %73
  %75 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %74)
  store %struct.vm_page* %75, %struct.vm_page** %6, align 8
  %76 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %77 = icmp ne %struct.vm_page* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %67
  %79 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %80 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %81 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PTE_REF, align 4
  %86 = load i32, i32* @PTE_CHG, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = call i32 @moea_attr_save(%struct.vm_page* %79, i32 %88)
  %90 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %91 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = call i64 @LIST_EMPTY(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %97 = load i32, i32* @PGA_WRITEABLE, align 4
  %98 = call i32 @vm_page_aflag_clear(%struct.vm_page* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %78
  br label %100

100:                                              ; preds = %99, %67
  br label %101

101:                                              ; preds = %100, %49
  %102 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %103 = load i32, i32* @pvo_olink, align 4
  %104 = call i32 @LIST_REMOVE(%struct.pvo_entry* %102, i32 %103)
  %105 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %106 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PVO_BOOTSTRAP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %101
  %112 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %113 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PVO_MANAGED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @moea_mpvo_zone, align 4
  br label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @moea_upvo_zone, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %125 = call i32 @uma_zfree(i32 %123, %struct.pvo_entry* %124)
  br label %126

126:                                              ; preds = %122, %101
  %127 = load i32, i32* @moea_pvo_entries, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* @moea_pvo_entries, align 4
  %129 = load i32, i32* @moea_pvo_remove_calls, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @moea_pvo_remove_calls, align 4
  ret void
}

declare dso_local %struct.pte* @moea_pvo_to_pte(%struct.pvo_entry*, i32) #1

declare dso_local i32 @moea_pte_unset(%struct.pte*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PVO_PTEGIDX_CLR(%struct.pvo_entry*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pvo_entry*, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pvo_entry*) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @moea_attr_save(%struct.vm_page*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.vm_page*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.pvo_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
