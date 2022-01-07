; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.pvo_entry = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.pte = type { i32 }

@curproc = common dso_local global %struct.TYPE_15__* null, align 8
@kernel_pmap = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"moea_protect: non current pmap\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@pvo_tree = common dso_local global i32 0, align 4
@PTE_PP = common dso_local global i32 0, align 4
@PTE_BR = common dso_local global i32 0, align 4
@moea_table_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea_protect(i32 %0, %struct.TYPE_13__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pvo_entry*, align 8
  %12 = alloca %struct.pvo_entry*, align 8
  %13 = alloca %struct.pvo_entry, align 8
  %14 = alloca %struct.pte*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curproc, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = icmp eq %struct.TYPE_13__* %15, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kernel_pmap, align 8
  %24 = icmp eq %struct.TYPE_13__* %22, %23
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i1 [ true, %5 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VM_PROT_READ, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @VM_PROT_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @moea_remove(i32 %35, %struct.TYPE_13__* %36, i64 %37, i64 %38)
  br label %102

40:                                               ; preds = %25
  %41 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = call i32 @PMAP_LOCK(%struct.TYPE_13__* %42)
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @pvo_tree, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = call %struct.pvo_entry* @RB_NFIND(i32 %46, i32* %48, %struct.pvo_entry* %13)
  store %struct.pvo_entry* %49, %struct.pvo_entry** %11, align 8
  br label %50

50:                                               ; preds = %96, %40
  %51 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %52 = icmp ne %struct.pvo_entry* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %55 = call i64 @PVO_VADDR(%struct.pvo_entry* %54)
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %98

60:                                               ; preds = %58
  %61 = load i32, i32* @pvo_tree, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %65 = call %struct.pvo_entry* @RB_NEXT(i32 %61, i32* %63, %struct.pvo_entry* %64)
  store %struct.pvo_entry* %65, %struct.pvo_entry** %12, align 8
  %66 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %67 = call %struct.pte* @moea_pvo_to_pte(%struct.pvo_entry* %66, i32 -1)
  store %struct.pte* %67, %struct.pte** %14, align 8
  %68 = load i32, i32* @PTE_PP, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %71 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %69
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @PTE_BR, align 4
  %77 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %78 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 8
  %83 = load %struct.pte*, %struct.pte** %14, align 8
  %84 = icmp ne %struct.pte* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %60
  %86 = load %struct.pte*, %struct.pte** %14, align 8
  %87 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %88 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %91 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @moea_pte_change(%struct.pte* %86, %struct.TYPE_14__* %89, i64 %92)
  %94 = call i32 @mtx_unlock(i32* @moea_table_mutex)
  br label %95

95:                                               ; preds = %85, %60
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.pvo_entry*, %struct.pvo_entry** %12, align 8
  store %struct.pvo_entry* %97, %struct.pvo_entry** %11, align 8
  br label %50

98:                                               ; preds = %58
  %99 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = call i32 @PMAP_UNLOCK(%struct.TYPE_13__* %100)
  br label %102

102:                                              ; preds = %98, %34
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @moea_remove(i32, %struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_13__*) #1

declare dso_local %struct.pvo_entry* @RB_NFIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i64 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local %struct.pte* @moea_pvo_to_pte(%struct.pvo_entry*, i32) #1

declare dso_local i32 @moea_pte_change(%struct.pte*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
