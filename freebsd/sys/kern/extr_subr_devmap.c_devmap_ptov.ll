; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_ptov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_ptov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i64, i64, i64 }

@devmap_table = common dso_local global %struct.devmap_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devmap_ptov(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.devmap_entry*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  %8 = icmp eq %struct.devmap_entry* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %51

10:                                               ; preds = %2
  %11 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  store %struct.devmap_entry* %11, %struct.devmap_entry** %6, align 8
  br label %12

12:                                               ; preds = %47, %10
  %13 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %14 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %20 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %28 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %31 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = icmp sle i64 %26, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %37 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %41 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = add nsw i64 %38, %43
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %3, align 8
  br label %51

46:                                               ; preds = %23, %17
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %49 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %48, i32 1
  store %struct.devmap_entry* %49, %struct.devmap_entry** %6, align 8
  br label %12

50:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %51

51:                                               ; preds = %50, %35, %9
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
