; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pvo_entry = type { i64 }

@pvh_global_lock = common dso_local global i32 0, align 4
@pvo_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea_remove(i32 %0, %struct.TYPE_5__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pvo_entry*, align 8
  %10 = alloca %struct.pvo_entry*, align 8
  %11 = alloca %struct.pvo_entry, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = call i32 @PMAP_LOCK(%struct.TYPE_5__* %13)
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %11, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @pvo_tree, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call %struct.pvo_entry* @RB_NFIND(i32 %17, i32* %19, %struct.pvo_entry* %11)
  store %struct.pvo_entry* %20, %struct.pvo_entry** %9, align 8
  br label %21

21:                                               ; preds = %39, %4
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %23 = icmp ne %struct.pvo_entry* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %26 = call i64 @PVO_VADDR(%struct.pvo_entry* %25)
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = load i32, i32* @pvo_tree, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %36 = call %struct.pvo_entry* @RB_NEXT(i32 %32, i32* %34, %struct.pvo_entry* %35)
  store %struct.pvo_entry* %36, %struct.pvo_entry** %10, align 8
  %37 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %38 = call i32 @moea_pvo_remove(%struct.pvo_entry* %37, i32 -1)
  br label %39

39:                                               ; preds = %31
  %40 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  store %struct.pvo_entry* %40, %struct.pvo_entry** %9, align 8
  br label %21

41:                                               ; preds = %29
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = call i32 @PMAP_UNLOCK(%struct.TYPE_5__* %42)
  %44 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_5__*) #1

declare dso_local %struct.pvo_entry* @RB_NFIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i64 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32 @moea_pvo_remove(%struct.pvo_entry*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
