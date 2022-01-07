; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_list_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_list_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_list_entry = type { i32, i32*, %struct.lock_list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @witness_list_locks(%struct.lock_list_entry** %0, i32 (i8*, ...)* %1) #0 {
  %3 = alloca %struct.lock_list_entry**, align 8
  %4 = alloca i32 (i8*, ...)*, align 8
  %5 = alloca %struct.lock_list_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lock_list_entry** %0, %struct.lock_list_entry*** %3, align 8
  store i32 (i8*, ...)* %1, i32 (i8*, ...)** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.lock_list_entry**, %struct.lock_list_entry*** %3, align 8
  %9 = load %struct.lock_list_entry*, %struct.lock_list_entry** %8, align 8
  store %struct.lock_list_entry* %9, %struct.lock_list_entry** %5, align 8
  br label %10

10:                                               ; preds = %37, %2
  %11 = load %struct.lock_list_entry*, %struct.lock_list_entry** %5, align 8
  %12 = icmp ne %struct.lock_list_entry* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load %struct.lock_list_entry*, %struct.lock_list_entry** %5, align 8
  %15 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %33, %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.lock_list_entry*, %struct.lock_list_entry** %5, align 8
  %23 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %29 = bitcast i32 (i8*, ...)* %28 to i32 (i8*)*
  %30 = call i32 @witness_list_lock(i32* %27, i32 (i8*)* %29)
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  br label %18

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.lock_list_entry*, %struct.lock_list_entry** %5, align 8
  %39 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %38, i32 0, i32 2
  %40 = load %struct.lock_list_entry*, %struct.lock_list_entry** %39, align 8
  store %struct.lock_list_entry* %40, %struct.lock_list_entry** %5, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @witness_list_lock(i32*, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
