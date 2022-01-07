; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pvo_entry = type { i32, %struct.TYPE_5__* }
%struct.pvo_head = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@moea64_pvo_enter_calls = common dso_local global i32 0, align 4
@pvo_tree = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@pvo_vlink = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"moea64_pvo_enter: overflow\00", align 1
@moea64_pvo_entries = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@PVO_LARGE = common dso_local global i32 0, align 4
@pmap_bootstrapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*, %struct.pvo_head*, %struct.pvo_entry**)* @moea64_pvo_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pvo_enter(i32 %0, %struct.pvo_entry* %1, %struct.pvo_head* %2, %struct.pvo_entry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvo_entry*, align 8
  %8 = alloca %struct.pvo_head*, align 8
  %9 = alloca %struct.pvo_entry**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pvo_entry*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %7, align 8
  store %struct.pvo_head* %2, %struct.pvo_head** %8, align 8
  store %struct.pvo_entry** %3, %struct.pvo_entry*** %9, align 8
  %13 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %14 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_5__* %15, i32 %16)
  %18 = load i32, i32* @moea64_pvo_enter_calls, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @moea64_pvo_enter_calls, align 4
  %20 = call i32 @STAT_MOEA64(i32 %18)
  %21 = load i32, i32* @pvo_tree, align 4
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %23 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %27 = call %struct.pvo_entry* @RB_INSERT(i32 %21, i32* %25, %struct.pvo_entry* %26)
  store %struct.pvo_entry* %27, %struct.pvo_entry** %12, align 8
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %12, align 8
  %29 = icmp ne %struct.pvo_entry* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.pvo_entry**, %struct.pvo_entry*** %9, align 8
  %32 = icmp ne %struct.pvo_entry** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.pvo_entry*, %struct.pvo_entry** %12, align 8
  %35 = load %struct.pvo_entry**, %struct.pvo_entry*** %9, align 8
  store %struct.pvo_entry* %34, %struct.pvo_entry** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EEXIST, align 4
  store i32 %37, i32* %5, align 4
  br label %100

38:                                               ; preds = %4
  %39 = load %struct.pvo_head*, %struct.pvo_head** %8, align 8
  %40 = icmp ne %struct.pvo_head* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.pvo_head*, %struct.pvo_head** %8, align 8
  %43 = call i32* @LIST_FIRST(%struct.pvo_head* %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.pvo_head*, %struct.pvo_head** %8, align 8
  %48 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %49 = load i32, i32* @pvo_vlink, align 4
  %50 = call i32 @LIST_INSERT_HEAD(%struct.pvo_head* %47, %struct.pvo_entry* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %53 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PVO_WIRED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %60 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %58, %51
  %67 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %68 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %76 = call i32 @MOEA64_PTE_INSERT(i32 %74, %struct.pvo_entry* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i32, i32* @moea64_pvo_entries, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @moea64_pvo_entries, align 4
  %84 = call i32 @STAT_MOEA64(i32 %82)
  %85 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %86 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %89 = icmp eq %struct.TYPE_5__* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 (...) @isync()
  br label %92

92:                                               ; preds = %90, %81
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @ENOENT, align 4
  br label %98

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %36
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

declare dso_local %struct.pvo_entry* @RB_INSERT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32* @LIST_FIRST(%struct.pvo_head*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.pvo_head*, %struct.pvo_entry*, i32) #1

declare dso_local i32 @MOEA64_PTE_INSERT(i32, %struct.pvo_entry*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
