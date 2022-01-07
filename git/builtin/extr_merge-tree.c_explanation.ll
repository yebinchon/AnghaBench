; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_explanation.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_explanation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_list = type { i32, %struct.merge_list* }

@.str = private unnamed_addr constant [7 x i8] c"merged\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"added in remote\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"added in both\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"added in local\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"removed in both\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"changed in both\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"removed in local\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"removed in remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_list*)* @explanation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @explanation(%struct.merge_list* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.merge_list*, align 8
  store %struct.merge_list* %0, %struct.merge_list** %3, align 8
  %4 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  %5 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %16 [
    i32 0, label %7
    i32 3, label %8
    i32 2, label %9
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %36

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  %11 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %10, i32 0, i32 1
  %12 = load %struct.merge_list*, %struct.merge_list** %11, align 8
  %13 = icmp ne %struct.merge_list* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %36

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  %18 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %17, i32 0, i32 1
  %19 = load %struct.merge_list*, %struct.merge_list** %18, align 8
  store %struct.merge_list* %19, %struct.merge_list** %3, align 8
  %20 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  %21 = icmp ne %struct.merge_list* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %36

23:                                               ; preds = %16
  %24 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  %25 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %24, i32 0, i32 1
  %26 = load %struct.merge_list*, %struct.merge_list** %25, align 8
  %27 = icmp ne %struct.merge_list* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %36

29:                                               ; preds = %23
  %30 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  %31 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %36

36:                                               ; preds = %35, %34, %28, %22, %15, %14, %8, %7
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
