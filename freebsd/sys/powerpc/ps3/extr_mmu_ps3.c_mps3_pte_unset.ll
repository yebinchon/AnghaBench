; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mps3_table_lock = common dso_local global i32 0, align 4
@moea64_pte_overflow = common dso_local global i32 0, align 4
@mps3_vas_id = common dso_local global i32 0, align 4
@moea64_pte_valid = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @mps3_pte_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps3_pte_unset(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %7 = call i32 @mtx_lock(i32* @mps3_table_lock)
  %8 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %9 = call i32 @mps3_pte_synch_locked(%struct.pvo_entry* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @moea64_pte_overflow, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @moea64_pte_overflow, align 4
  %15 = call i32 @STAT_MOEA64(i32 %13)
  %16 = call i32 @mtx_unlock(i32* @mps3_table_lock)
  store i32 -1, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* @mps3_vas_id, align 4
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %20 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lv1_write_htab_entry(i32 %18, i32 %22, i32 0, i32 0)
  %24 = call i32 @mtx_unlock(i32* @mps3_table_lock)
  %25 = load i32, i32* @moea64_pte_valid, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @moea64_pte_valid, align 4
  %27 = call i32 @STAT_MOEA64(i32 %25)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LPTE_REF, align 4
  %30 = load i32, i32* @LPTE_CHG, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mps3_pte_synch_locked(%struct.pvo_entry*) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @lv1_write_htab_entry(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
