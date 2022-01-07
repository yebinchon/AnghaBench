; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_lastaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_lastaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i64, i64 }

@akva_devmap_idx = common dso_local global i64 0, align 8
@akva_devmap_vaddr = common dso_local global i64 0, align 8
@DEVMAP_MAX_VADDR = common dso_local global i64 0, align 8
@devmap_table = common dso_local global %struct.devmap_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @devmap_lastaddr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.devmap_entry*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @akva_devmap_idx, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @akva_devmap_vaddr, align 8
  store i64 %7, i64* %1, align 8
  br label %37

8:                                                ; preds = %0
  %9 = load i64, i64* @DEVMAP_MAX_VADDR, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  store %struct.devmap_entry* %10, %struct.devmap_entry** %2, align 8
  br label %11

11:                                               ; preds = %32, %8
  %12 = load %struct.devmap_entry*, %struct.devmap_entry** %2, align 8
  %13 = icmp ne %struct.devmap_entry* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.devmap_entry*, %struct.devmap_entry** %2, align 8
  %16 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %35

21:                                               ; preds = %19
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.devmap_entry*, %struct.devmap_entry** %2, align 8
  %24 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.devmap_entry*, %struct.devmap_entry** %2, align 8
  %29 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.devmap_entry*, %struct.devmap_entry** %2, align 8
  %34 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %33, i32 1
  store %struct.devmap_entry* %34, %struct.devmap_entry** %2, align 8
  br label %11

35:                                               ; preds = %19
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* %1, align 8
  br label %37

37:                                               ; preds = %35, %6
  %38 = load i64, i64* %1, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
