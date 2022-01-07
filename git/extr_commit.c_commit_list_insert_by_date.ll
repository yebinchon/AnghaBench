; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_commit_list_insert_by_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_commit_list_insert_by_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.commit = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @commit_list_insert_by_date(%struct.commit* %0, %struct.commit_list** %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_list**, align 8
  %5 = alloca %struct.commit_list**, align 8
  %6 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %4, align 8
  %7 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  store %struct.commit_list** %7, %struct.commit_list*** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %10 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  store %struct.commit_list* %10, %struct.commit_list** %6, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %14 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.commit*, %struct.commit** %3, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %26

23:                                               ; preds = %12
  %24 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %25 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %24, i32 0, i32 0
  store %struct.commit_list** %25, %struct.commit_list*** %5, align 8
  br label %8

26:                                               ; preds = %22, %8
  %27 = load %struct.commit*, %struct.commit** %3, align 8
  %28 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %29 = call %struct.commit_list* @commit_list_insert(%struct.commit* %27, %struct.commit_list** %28)
  ret %struct.commit_list* %29
}

declare dso_local %struct.commit_list* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
