; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_clear_commit_marks_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_clear_commit_marks_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list**, %struct.commit*, i32)* @clear_commit_marks_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_commit_marks_1(%struct.commit_list** %0, %struct.commit* %1, i32 %2) #0 {
  %4 = alloca %struct.commit_list**, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_list*, align 8
  store %struct.commit_list** %0, %struct.commit_list*** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %46, %3
  %9 = load %struct.commit*, %struct.commit** %5, align 8
  %10 = icmp ne %struct.commit* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.commit*, %struct.commit** %5, align 8
  %14 = getelementptr inbounds %struct.commit, %struct.commit* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %52

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.commit*, %struct.commit** %5, align 8
  %24 = getelementptr inbounds %struct.commit, %struct.commit* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load %struct.commit*, %struct.commit** %5, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  store %struct.commit_list* %30, %struct.commit_list** %7, align 8
  %31 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %32 = icmp ne %struct.commit_list* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %52

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %40, %34
  %36 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %36, i32 0, i32 1
  %38 = load %struct.commit_list*, %struct.commit_list** %37, align 8
  store %struct.commit_list* %38, %struct.commit_list** %7, align 8
  %39 = icmp ne %struct.commit_list* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %42 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %41, i32 0, i32 0
  %43 = load %struct.commit*, %struct.commit** %42, align 8
  %44 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %45 = call i32 @commit_list_insert(%struct.commit* %43, %struct.commit_list** %44)
  br label %35

46:                                               ; preds = %35
  %47 = load %struct.commit*, %struct.commit** %5, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 0
  %49 = load %struct.commit_list*, %struct.commit_list** %48, align 8
  %50 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %49, i32 0, i32 0
  %51 = load %struct.commit*, %struct.commit** %50, align 8
  store %struct.commit* %51, %struct.commit** %5, align 8
  br label %8

52:                                               ; preds = %19, %33, %8
  ret void
}

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
