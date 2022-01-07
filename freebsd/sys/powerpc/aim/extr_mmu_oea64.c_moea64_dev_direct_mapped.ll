; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_dev_direct_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_dev_direct_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pvo_entry = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@hw_direct_map = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_6__* null, align 8
@ADDR_POFF = common dso_local global i32 0, align 4
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@pvo_tree = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea64_dev_direct_mapped(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvo_entry*, align 8
  %9 = alloca %struct.pvo_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* @hw_direct_map, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @mem_valid(i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %72

20:                                               ; preds = %14, %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %22 = call i32 @PMAP_LOCK(%struct.TYPE_6__* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ADDR_POFF, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i64, i64* @DMAP_BASE_ADDRESS, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %9, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @pvo_tree, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call %struct.pvo_entry* @RB_FIND(i32 %32, i32* %34, %struct.pvo_entry* %9)
  store %struct.pvo_entry* %35, %struct.pvo_entry** %8, align 8
  br label %36

36:                                               ; preds = %57, %20
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.pvo_entry*, %struct.pvo_entry** %8, align 8
  %44 = icmp eq %struct.pvo_entry* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.pvo_entry*, %struct.pvo_entry** %8, align 8
  %47 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LPTE_RPGN, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45, %42
  %55 = load i32, i32* @EFAULT, align 4
  store i32 %55, i32* %11, align 4
  br label %68

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @pvo_tree, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.pvo_entry*, %struct.pvo_entry** %8, align 8
  %67 = call %struct.pvo_entry* @RB_NEXT(i32 %63, i32* %65, %struct.pvo_entry* %66)
  store %struct.pvo_entry* %67, %struct.pvo_entry** %8, align 8
  br label %36

68:                                               ; preds = %54, %36
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %70 = call i32 @PMAP_UNLOCK(%struct.TYPE_6__* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @mem_valid(i32, i32) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_6__*) #1

declare dso_local %struct.pvo_entry* @RB_FIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
