; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_metadata_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_metadata_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.patch*)* @metadata_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_changes(%struct.patch* %0) #0 {
  %2 = alloca %struct.patch*, align 8
  store %struct.patch* %0, %struct.patch** %2, align 8
  %3 = load %struct.patch*, %struct.patch** %2, align 8
  %4 = getelementptr inbounds %struct.patch, %struct.patch* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = load %struct.patch*, %struct.patch** %2, align 8
  %9 = getelementptr inbounds %struct.patch, %struct.patch* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %7
  %13 = load %struct.patch*, %struct.patch** %2, align 8
  %14 = getelementptr inbounds %struct.patch, %struct.patch* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = load %struct.patch*, %struct.patch** %2, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load %struct.patch*, %struct.patch** %2, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.patch*, %struct.patch** %2, align 8
  %29 = getelementptr inbounds %struct.patch, %struct.patch* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.patch*, %struct.patch** %2, align 8
  %34 = getelementptr inbounds %struct.patch, %struct.patch* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.patch*, %struct.patch** %2, align 8
  %37 = getelementptr inbounds %struct.patch, %struct.patch* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br label %40

40:                                               ; preds = %32, %27, %22
  %41 = phi i1 [ false, %27 ], [ false, %22 ], [ %39, %32 ]
  br label %42

42:                                               ; preds = %40, %17, %12, %7, %1
  %43 = phi i1 [ true, %17 ], [ true, %12 ], [ true, %7 ], [ true, %1 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
