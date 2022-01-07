; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.pvo_head = type { i32 }
%struct.pvo_entry = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@pvo_vlink = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@PTE_CHG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea_remove_all(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.pvo_head*, align 8
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca %struct.pvo_entry*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call %struct.pvo_head* @vm_page_to_pvoh(%struct.TYPE_8__* %10)
  store %struct.pvo_head* %11, %struct.pvo_head** %5, align 8
  %12 = load %struct.pvo_head*, %struct.pvo_head** %5, align 8
  %13 = call %struct.pvo_entry* @LIST_FIRST(%struct.pvo_head* %12)
  store %struct.pvo_entry* %13, %struct.pvo_entry** %6, align 8
  br label %14

14:                                               ; preds = %30, %2
  %15 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %16 = icmp ne %struct.pvo_entry* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %19 = load i32, i32* @pvo_vlink, align 4
  %20 = call %struct.pvo_entry* @LIST_NEXT(%struct.pvo_entry* %18, i32 %19)
  store %struct.pvo_entry* %20, %struct.pvo_entry** %7, align 8
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %22 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @PMAP_LOCK(i32 %24)
  %26 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %27 = call i32 @moea_pvo_remove(%struct.pvo_entry* %26, i32 -1)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PMAP_UNLOCK(i32 %28)
  br label %30

30:                                               ; preds = %17
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  store %struct.pvo_entry* %31, %struct.pvo_entry** %6, align 8
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PGA_WRITEABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* @PTE_CHG, align 4
  %42 = call i64 @moea_query_bit(%struct.TYPE_8__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32, i32* @PTE_CHG, align 4
  %47 = call i32 @moea_attr_clear(%struct.TYPE_8__* %45, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @vm_page_dirty(%struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %44, %39, %32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load i32, i32* @PGA_WRITEABLE, align 4
  %53 = call i32 @vm_page_aflag_clear(%struct.TYPE_8__* %51, i32 %52)
  %54 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.pvo_head* @vm_page_to_pvoh(%struct.TYPE_8__*) #1

declare dso_local %struct.pvo_entry* @LIST_FIRST(%struct.pvo_head*) #1

declare dso_local %struct.pvo_entry* @LIST_NEXT(%struct.pvo_entry*, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @moea_pvo_remove(%struct.pvo_entry*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i64 @moea_query_bit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @moea_attr_clear(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
