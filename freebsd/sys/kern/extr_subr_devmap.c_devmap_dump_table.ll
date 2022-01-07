; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_dump_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i64, i64, i32 }

@devmap_table = common dso_local global %struct.devmap_entry* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"No static device mappings.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Static device mappings:\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"  0x%08x - 0x%08x mapped at VA 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, ...)*)* @devmap_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devmap_dump_table(i32 (i8*, ...)* %0) #0 {
  %2 = alloca i32 (i8*, ...)*, align 8
  %3 = alloca %struct.devmap_entry*, align 8
  store i32 (i8*, ...)* %0, i32 (i8*, ...)** %2, align 8
  %4 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  %5 = icmp eq %struct.devmap_entry* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  %8 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %7, i64 0
  %9 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6, %1
  %13 = load i32 (i8*, ...)*, i32 (i8*, ...)** %2, align 8
  %14 = call i32 (i8*, ...) %13(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

15:                                               ; preds = %6
  %16 = load i32 (i8*, ...)*, i32 (i8*, ...)** %2, align 8
  %17 = call i32 (i8*, ...) %16(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  store %struct.devmap_entry* %18, %struct.devmap_entry** %3, align 8
  br label %19

19:                                               ; preds = %41, %15
  %20 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %21 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32 (i8*, ...)*, i32 (i8*, ...)** %2, align 8
  %26 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %27 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %30 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %33 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = sub nsw i64 %35, 1
  %37 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %38 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) %25(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %28, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %24
  %42 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %43 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %42, i32 1
  store %struct.devmap_entry* %43, %struct.devmap_entry** %3, align 8
  br label %19

44:                                               ; preds = %12, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
