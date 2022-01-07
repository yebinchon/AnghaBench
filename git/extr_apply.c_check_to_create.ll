; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_to_create.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_to_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@EXISTS_IN_INDEX = common dso_local global i32 0, align 4
@EXISTS_IN_WORKTREE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i32)* @check_to_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_to_create(%struct.apply_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %10 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %15 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i64 @index_name_pos(i32 %18, i8* %19, i32 %21)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EXISTS_IN_INDEX, align 4
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %24, %13, %3
  %30 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %31 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %66

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @lstat(i8* %36, %struct.stat* %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISDIR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %39
  store i32 0, i32* %4, align 4
  br label %66

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i64 @has_symlink_leading_path(i8* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %66

55:                                               ; preds = %48
  %56 = load i32, i32* @EXISTS_IN_WORKTREE, align 4
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %35
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @is_missing_file_error(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @error_errno(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %61, %55, %54, %47, %34, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @index_name_pos(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @has_symlink_leading_path(i8*, i32) #1

declare dso_local i32 @is_missing_file_error(i32) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
