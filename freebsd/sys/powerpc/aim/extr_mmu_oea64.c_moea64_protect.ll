; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.pvo_entry = type { i64 }

@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"moea64_protect: pm=%p sva=%#x eva=%#x prot=%#x\00", align 1
@curproc = common dso_local global %struct.TYPE_13__* null, align 8
@kernel_pmap = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"moea64_protect: non current pmap\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@pvo_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_protect(i32 %0, %struct.TYPE_12__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pvo_entry*, align 8
  %12 = alloca %struct.pvo_entry*, align 8
  %13 = alloca %struct.pvo_entry, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @KTR_PMAP, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @CTR4(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %15, i64 %16, i64 %17, i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curproc, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = icmp eq %struct.TYPE_12__* %20, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kernel_pmap, align 8
  %29 = icmp eq %struct.TYPE_12__* %27, %28
  br label %30

30:                                               ; preds = %26, %5
  %31 = phi i1 [ true, %5 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @VM_PROT_READ, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @VM_PROT_NONE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @moea64_remove(i32 %40, %struct.TYPE_12__* %41, i64 %42, i64 %43)
  br label %80

45:                                               ; preds = %30
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = call i32 @PMAP_LOCK(%struct.TYPE_12__* %46)
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @pvo_tree, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = call %struct.pvo_entry* @RB_NFIND(i32 %50, i32* %52, %struct.pvo_entry* %13)
  store %struct.pvo_entry* %53, %struct.pvo_entry** %11, align 8
  br label %54

54:                                               ; preds = %75, %45
  %55 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %56 = icmp ne %struct.pvo_entry* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %59 = call i64 @PVO_VADDR(%struct.pvo_entry* %58)
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %77

64:                                               ; preds = %62
  %65 = load i32, i32* @pvo_tree, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %69 = call %struct.pvo_entry* @RB_NEXT(i32 %65, i32* %67, %struct.pvo_entry* %68)
  store %struct.pvo_entry* %69, %struct.pvo_entry** %12, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @moea64_pvo_protect(i32 %70, %struct.TYPE_12__* %71, %struct.pvo_entry* %72, i32 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load %struct.pvo_entry*, %struct.pvo_entry** %12, align 8
  store %struct.pvo_entry* %76, %struct.pvo_entry** %11, align 8
  br label %54

77:                                               ; preds = %62
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = call i32 @PMAP_UNLOCK(%struct.TYPE_12__* %78)
  br label %80

80:                                               ; preds = %77, %39
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, %struct.TYPE_12__*, i64, i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @moea64_remove(i32, %struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_12__*) #1

declare dso_local %struct.pvo_entry* @RB_NFIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i64 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32 @moea64_pvo_protect(i32, %struct.TYPE_12__*, %struct.pvo_entry*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
