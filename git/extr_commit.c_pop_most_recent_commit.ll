; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_pop_most_recent_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_pop_most_recent_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @pop_most_recent_commit(%struct.commit_list** %0, i32 %1) #0 {
  %3 = alloca %struct.commit_list**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit*, align 8
  store %struct.commit_list** %0, %struct.commit_list*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %9 = call %struct.commit* @pop_commit(%struct.commit_list** %8)
  store %struct.commit* %9, %struct.commit** %5, align 8
  %10 = load %struct.commit*, %struct.commit** %5, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %12 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  store %struct.commit_list* %12, %struct.commit_list** %6, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %15 = icmp ne %struct.commit_list* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %18 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %17, i32 0, i32 1
  %19 = load %struct.commit*, %struct.commit** %18, align 8
  store %struct.commit* %19, %struct.commit** %7, align 8
  %20 = load %struct.commit*, %struct.commit** %7, align 8
  %21 = call i32 @parse_commit(%struct.commit* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %16
  %24 = load %struct.commit*, %struct.commit** %7, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.commit*, %struct.commit** %7, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 8
  %38 = load %struct.commit*, %struct.commit** %7, align 8
  %39 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %40 = call i32 @commit_list_insert_by_date(%struct.commit* %38, %struct.commit_list** %39)
  br label %41

41:                                               ; preds = %31, %23, %16
  %42 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %43 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %42, i32 0, i32 0
  %44 = load %struct.commit_list*, %struct.commit_list** %43, align 8
  store %struct.commit_list* %44, %struct.commit_list** %6, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load %struct.commit*, %struct.commit** %5, align 8
  ret %struct.commit* %46
}

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
