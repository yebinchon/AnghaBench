; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_unmap_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_unmap_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_entry = type { i32 }

@irq_map_lock = common dso_local global i32 0, align 4
@irq_map_count = common dso_local global i64 0, align 8
@irq_map = common dso_local global %struct.intr_map_entry** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Attempt to unmap invalid resource id: %u\0A\00", align 1
@irq_map_first_free_idx = common dso_local global i64 0, align 8
@M_INTRNG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intr_unmap_irq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intr_map_entry*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 @mtx_lock(i32* @irq_map_lock)
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @irq_map_count, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.intr_map_entry**, %struct.intr_map_entry*** @irq_map, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.intr_map_entry*, %struct.intr_map_entry** %9, i64 %10
  %12 = load %struct.intr_map_entry*, %struct.intr_map_entry** %11, align 8
  %13 = icmp eq %struct.intr_map_entry* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8, %1
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load %struct.intr_map_entry**, %struct.intr_map_entry*** @irq_map, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.intr_map_entry*, %struct.intr_map_entry** %18, i64 %19
  %21 = load %struct.intr_map_entry*, %struct.intr_map_entry** %20, align 8
  store %struct.intr_map_entry* %21, %struct.intr_map_entry** %3, align 8
  %22 = load %struct.intr_map_entry**, %struct.intr_map_entry*** @irq_map, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.intr_map_entry*, %struct.intr_map_entry** %22, i64 %23
  store %struct.intr_map_entry* null, %struct.intr_map_entry** %24, align 8
  %25 = load i64, i64* %2, align 8
  store i64 %25, i64* @irq_map_first_free_idx, align 8
  %26 = call i32 @mtx_unlock(i32* @irq_map_lock)
  %27 = load %struct.intr_map_entry*, %struct.intr_map_entry** %3, align 8
  %28 = getelementptr inbounds %struct.intr_map_entry, %struct.intr_map_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @intr_free_intr_map_data(i32 %29)
  %31 = load %struct.intr_map_entry*, %struct.intr_map_entry** %3, align 8
  %32 = load i32, i32* @M_INTRNG, align 4
  %33 = call i32 @free(%struct.intr_map_entry* %31, i32 %32)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @intr_free_intr_map_data(i32) #1

declare dso_local i32 @free(%struct.intr_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
