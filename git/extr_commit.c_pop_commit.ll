; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_pop_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_pop_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @pop_commit(%struct.commit_list** %0) #0 {
  %2 = alloca %struct.commit_list**, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit*, align 8
  store %struct.commit_list** %0, %struct.commit_list*** %2, align 8
  %5 = load %struct.commit_list**, %struct.commit_list*** %2, align 8
  %6 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %6, %struct.commit_list** %3, align 8
  %7 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %8 = icmp ne %struct.commit_list* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 1
  %12 = load %struct.commit*, %struct.commit** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi %struct.commit* [ %12, %9 ], [ null, %13 ]
  store %struct.commit* %15, %struct.commit** %4, align 8
  %16 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %17 = icmp ne %struct.commit_list* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %20 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %19, i32 0, i32 0
  %21 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  %22 = load %struct.commit_list**, %struct.commit_list*** %2, align 8
  store %struct.commit_list* %21, %struct.commit_list** %22, align 8
  %23 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %24 = call i32 @free(%struct.commit_list* %23)
  br label %25

25:                                               ; preds = %18, %14
  %26 = load %struct.commit*, %struct.commit** %4, align 8
  ret %struct.commit* %26
}

declare dso_local i32 @free(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
