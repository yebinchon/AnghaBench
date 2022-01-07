; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpte = type { i32, i32 }

@mps3_table_lock = common dso_local global i32 0, align 4
@mps3_vas_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*, i32)* @mps3_pte_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps3_pte_clear(i32 %0, %struct.pvo_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpte, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @mtx_lock(i32* @mps3_table_lock)
  %11 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %12 = call i32 @mps3_pte_synch_locked(%struct.pvo_entry* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 @mtx_unlock(i32* @mps3_table_lock)
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %20 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %19, %struct.lpte* %9)
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @mps3_vas_id, align 4
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %32 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lv1_write_htab_entry(i32 %30, i32 %34, i32 %36, i32 %38)
  %40 = call i32 @mtx_unlock(i32* @mps3_table_lock)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %18, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mps3_pte_synch_locked(%struct.pvo_entry*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @lv1_write_htab_entry(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
