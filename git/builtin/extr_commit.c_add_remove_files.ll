; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_add_remove_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_add_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i32, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"updating files failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @add_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_remove_files(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.string_list_item*, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.string_list*, %struct.string_list** %2, align 8
  %9 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %6
  %13 = load %struct.string_list*, %struct.string_list** %2, align 8
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %15 = load %struct.string_list_item*, %struct.string_list_item** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %15, i64 %17
  store %struct.string_list_item* %18, %struct.string_list_item** %5, align 8
  %19 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %20 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %46

24:                                               ; preds = %12
  %25 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %26 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lstat(i32 %27, %struct.stat* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %32 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @add_to_cache(i32 %33, %struct.stat* %4, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @die(i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  br label %45

40:                                               ; preds = %24
  %41 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %42 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @remove_file_from_cache(i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %6

49:                                               ; preds = %6
  ret void
}

declare dso_local i32 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @add_to_cache(i32, %struct.stat*, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @remove_file_from_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
