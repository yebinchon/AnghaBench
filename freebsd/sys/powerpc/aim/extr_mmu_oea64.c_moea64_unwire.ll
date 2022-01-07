; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.pvo_entry = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@pvo_tree = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"moea64_unwire: pvo %p is missing PVO_WIRED\00", align 1
@PVO_MANAGED = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_unwire(i32 %0, %struct.TYPE_16__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pvo_entry, align 4
  %10 = alloca %struct.pvo_entry*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = call i32 @PMAP_LOCK(%struct.TYPE_16__* %16)
  %18 = load i32, i32* @pvo_tree, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = call %struct.pvo_entry* @RB_NFIND(i32 %18, i32* %20, %struct.pvo_entry* %9)
  store %struct.pvo_entry* %21, %struct.pvo_entry** %10, align 8
  br label %22

22:                                               ; preds = %108, %4
  %23 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %24 = icmp ne %struct.pvo_entry* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %27 = call i64 @PVO_VADDR(%struct.pvo_entry* %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %27, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %114

32:                                               ; preds = %30
  %33 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %34 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PVO_WIRED, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %41 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.pvo_entry* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32, i32* @PVO_WIRED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %46 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %51 = call i32 @MOEA64_PTE_REPLACE(i32 %49, %struct.pvo_entry* %50, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %53 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PVO_MANAGED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %42
  %59 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %60 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VM_PROT_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @LPTE_CHG, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %73 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LPTE_RPGN, align 4
  %77 = and i32 %75, %76
  %78 = call %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32 %77)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %11, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = call i32 @atomic_readandclear_32(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @LPTE_CHG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %71
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %91 = call i32 @vm_page_dirty(%struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %89, %71
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @LPTE_REF, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = load i32, i32* @PGA_REFERENCED, align 4
  %100 = call i32 @vm_page_aflag_set(%struct.TYPE_15__* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %92
  br label %102

102:                                              ; preds = %101, %58, %42
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @pvo_tree, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %113 = call %struct.pvo_entry* @RB_NEXT(i32 %109, i32* %111, %struct.pvo_entry* %112)
  store %struct.pvo_entry* %113, %struct.pvo_entry** %10, align 8
  br label %22

114:                                              ; preds = %30
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = call i32 @PMAP_UNLOCK(%struct.TYPE_16__* %115)
  ret void
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_16__*) #1

declare dso_local %struct.pvo_entry* @RB_NFIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i64 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local i32 @panic(i8*, %struct.pvo_entry*) #1

declare dso_local i32 @MOEA64_PTE_REPLACE(i32, %struct.pvo_entry*, i32) #1

declare dso_local %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @atomic_readandclear_32(i32*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
