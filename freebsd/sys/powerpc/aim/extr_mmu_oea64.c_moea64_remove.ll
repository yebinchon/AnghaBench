; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pvo_entry = type { i64 }
%struct.pvo_dlist = type { i32 }

@pvo_tree = common dso_local global i32 0, align 4
@pvo_dlink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_remove(i32 %0, %struct.TYPE_7__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pvo_entry*, align 8
  %10 = alloca %struct.pvo_entry*, align 8
  %11 = alloca %struct.pvo_entry, align 8
  %12 = alloca %struct.pvo_dlist, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %69

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %11, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = call i32 @SLIST_INIT(%struct.pvo_dlist* %12)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = call i32 @PMAP_LOCK(%struct.TYPE_7__* %23)
  %25 = load i32, i32* @pvo_tree, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = call %struct.pvo_entry* @RB_NFIND(i32 %25, i32* %27, %struct.pvo_entry* %11)
  store %struct.pvo_entry* %28, %struct.pvo_entry** %9, align 8
  br label %29

29:                                               ; preds = %51, %19
  %30 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %31 = icmp ne %struct.pvo_entry* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %34 = call i64 @PVO_VADDR(%struct.pvo_entry* %33)
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %53

39:                                               ; preds = %37
  %40 = load i32, i32* @pvo_tree, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %44 = call %struct.pvo_entry* @RB_NEXT(i32 %40, i32* %42, %struct.pvo_entry* %43)
  store %struct.pvo_entry* %44, %struct.pvo_entry** %10, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %47 = call i32 @moea64_pvo_remove_from_pmap(i32 %45, %struct.pvo_entry* %46)
  %48 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %49 = load i32, i32* @pvo_dlink, align 4
  %50 = call i32 @SLIST_INSERT_HEAD(%struct.pvo_dlist* %12, %struct.pvo_entry* %48, i32 %49)
  br label %51

51:                                               ; preds = %39
  %52 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  store %struct.pvo_entry* %52, %struct.pvo_entry** %9, align 8
  br label %29

53:                                               ; preds = %37
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = call i32 @PMAP_UNLOCK(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %60, %53
  %57 = call i32 @SLIST_EMPTY(%struct.pvo_dlist* %12)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = call %struct.pvo_entry* @SLIST_FIRST(%struct.pvo_dlist* %12)
  store %struct.pvo_entry* %61, %struct.pvo_entry** %9, align 8
  %62 = load i32, i32* @pvo_dlink, align 4
  %63 = call i32 @SLIST_REMOVE_HEAD(%struct.pvo_dlist* %12, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %66 = call i32 @moea64_pvo_remove_from_page(i32 %64, %struct.pvo_entry* %65)
  %67 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %68 = call i32 @free_pvo_entry(%struct.pvo_entry* %67)
  br label %56

69:                                               ; preds = %18, %56
  ret void
}

declare dso_local i32 @SLIST_INIT(%struct.pvo_dlist*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_7__*) #1

declare dso_local %struct.pvo_entry* @RB_NFIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i64 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32 @moea64_pvo_remove_from_pmap(i32, %struct.pvo_entry*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pvo_dlist*, %struct.pvo_entry*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @SLIST_EMPTY(%struct.pvo_dlist*) #1

declare dso_local %struct.pvo_entry* @SLIST_FIRST(%struct.pvo_dlist*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.pvo_dlist*, i32) #1

declare dso_local i32 @moea64_pvo_remove_from_page(i32, %struct.pvo_entry*) #1

declare dso_local i32 @free_pvo_entry(%struct.pvo_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
