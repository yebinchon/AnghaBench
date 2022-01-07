; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_map_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_entry = type { i64, i32*, %struct.intr_map_data*, i32 }
%struct.intr_map_data = type { i32 }

@M_INTRNG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@irq_map_lock = common dso_local global i32 0, align 4
@irq_map_first_free_idx = common dso_local global i64 0, align 8
@irq_map_count = common dso_local global i64 0, align 8
@irq_map = common dso_local global %struct.intr_map_entry** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"IRQ mapping table is full.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @intr_map_irq(i32 %0, i64 %1, %struct.intr_map_data* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.intr_map_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intr_map_entry*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.intr_map_data* %2, %struct.intr_map_data** %7, align 8
  %10 = load i32, i32* @M_INTRNG, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.intr_map_entry* @malloc(i32 32, i32 %10, i32 %13)
  store %struct.intr_map_entry* %14, %struct.intr_map_entry** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.intr_map_entry*, %struct.intr_map_entry** %9, align 8
  %17 = getelementptr inbounds %struct.intr_map_entry, %struct.intr_map_entry* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.intr_map_entry*, %struct.intr_map_entry** %9, align 8
  %20 = getelementptr inbounds %struct.intr_map_entry, %struct.intr_map_entry* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.intr_map_data*, %struct.intr_map_data** %7, align 8
  %22 = load %struct.intr_map_entry*, %struct.intr_map_entry** %9, align 8
  %23 = getelementptr inbounds %struct.intr_map_entry, %struct.intr_map_entry* %22, i32 0, i32 2
  store %struct.intr_map_data* %21, %struct.intr_map_data** %23, align 8
  %24 = load %struct.intr_map_entry*, %struct.intr_map_entry** %9, align 8
  %25 = getelementptr inbounds %struct.intr_map_entry, %struct.intr_map_entry* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = call i32 @mtx_lock(i32* @irq_map_lock)
  %27 = load i64, i64* @irq_map_first_free_idx, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %48, %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @irq_map_count, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.intr_map_entry**, %struct.intr_map_entry*** @irq_map, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.intr_map_entry*, %struct.intr_map_entry** %33, i64 %34
  %36 = load %struct.intr_map_entry*, %struct.intr_map_entry** %35, align 8
  %37 = icmp eq %struct.intr_map_entry* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.intr_map_entry*, %struct.intr_map_entry** %9, align 8
  %40 = load %struct.intr_map_entry**, %struct.intr_map_entry*** @irq_map, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.intr_map_entry*, %struct.intr_map_entry** %40, i64 %41
  store %struct.intr_map_entry* %39, %struct.intr_map_entry** %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* @irq_map_first_free_idx, align 8
  %45 = call i32 @mtx_unlock(i32* @irq_map_lock)
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %54

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %28

51:                                               ; preds = %28
  %52 = call i32 @mtx_unlock(i32* @irq_map_lock)
  %53 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local %struct.intr_map_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
