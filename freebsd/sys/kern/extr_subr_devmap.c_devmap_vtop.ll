; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_vtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_vtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i64, i64, i64 }

@devmap_table = common dso_local global %struct.devmap_entry* null, align 8
@DEVMAP_PADDR_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devmap_vtop(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.devmap_entry*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  %9 = icmp eq %struct.devmap_entry* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DEVMAP_PADDR_NOTFOUND, align 4
  store i32 %11, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  store %struct.devmap_entry* %15, %struct.devmap_entry** %6, align 8
  br label %16

16:                                               ; preds = %51, %12
  %17 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %18 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %24 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %32 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %35 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = icmp sle i64 %30, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %41 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %45 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = add nsw i64 %42, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %27, %21
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.devmap_entry*, %struct.devmap_entry** %6, align 8
  %53 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %52, i32 1
  store %struct.devmap_entry* %53, %struct.devmap_entry** %6, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load i32, i32* @DEVMAP_PADDR_NOTFOUND, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %39, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
