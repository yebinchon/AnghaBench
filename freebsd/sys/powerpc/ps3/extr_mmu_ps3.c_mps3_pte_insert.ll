; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpte = type { i32, i32 }

@PVO_HID = common dso_local global i32 0, align 4
@moea64_pteg_mask = common dso_local global i32 0, align 4
@mps3_table_lock = common dso_local global i32 0, align 4
@mps3_vas_id = common dso_local global i32 0, align 4
@LPTE_LOCKED = common dso_local global i32 0, align 4
@LPTE_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mps3_pte_insert: overflow (%d)\00", align 1
@moea64_pte_valid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Evicted a wired PTE\00", align 1
@moea64_pte_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @mps3_pte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps3_pte_insert(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpte, align 4
  %8 = alloca %struct.lpte, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %10 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %11 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PVO_HID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @PVO_HID, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %20 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @moea64_pteg_mask, align 4
  %24 = shl i32 %23, 3
  %25 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %26 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %16, %2
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %32 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, -8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %39 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %38, %struct.lpte* %7)
  %40 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = call i32 (...) @PTESYNC()
  %42 = call i32 @mtx_lock(i32* @mps3_table_lock)
  %43 = load i32, i32* @mps3_vas_id, align 4
  %44 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %45 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.lpte, %struct.lpte* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.lpte, %struct.lpte* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LPTE_LOCKED, align 4
  %54 = load i32, i32* @LPTE_WIRED, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %57 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 1
  %58 = call i32 @lv1_insert_htab_entry(i32 %43, i64 %48, i32 %50, i32 %52, i32 %55, i32 0, i64* %9, i32* %56, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = call i32 @mtx_unlock(i32* @mps3_table_lock)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %30
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %3, align 4
  br label %109

65:                                               ; preds = %30
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %66, -8
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %69 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i32, i32* @PVO_HID, align 4
  %76 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %77 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %65
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %84 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @moea64_pte_valid, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @moea64_pte_valid, align 4
  %88 = call i32 @STAT_MOEA64(i32 %86)
  %89 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @LPTE_WIRED, align 4
  %96 = load i32, i32* @LPTE_LOCKED, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @KASSERT(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @moea64_pte_valid, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* @moea64_pte_valid, align 4
  %104 = call i32 @STAT_MOEA64(i32 %102)
  %105 = load i32, i32* @moea64_pte_overflow, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @moea64_pte_overflow, align 4
  %107 = call i32 @STAT_MOEA64(i32 %105)
  br label %108

108:                                              ; preds = %92, %80
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %62
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @PTESYNC(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @lv1_insert_htab_entry(i32, i64, i32, i32, i32, i32, i64*, i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
