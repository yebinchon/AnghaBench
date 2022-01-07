; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_path_is_beyond_symlink_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_path_is_beyond_symlink_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i64, i8* }
%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }

@APPLY_SYMLINK_IN_RESULT = common dso_local global i32 0, align 4
@APPLY_SYMLINK_GOES_AWAY = common dso_local global i32 0, align 4
@ignore_case = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.strbuf*)* @path_is_beyond_symlink_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_is_beyond_symlink_1(%struct.apply_state* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.stat, align 4
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  br label %9

9:                                                ; preds = %103, %2
  br label %10

10:                                               ; preds = %29, %9
  %11 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 47
  br label %27

27:                                               ; preds = %16, %10
  %28 = phi i1 [ false, %10 ], [ %26, %16 ]
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %10

30:                                               ; preds = %27
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %104

36:                                               ; preds = %30
  %37 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %45 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @check_symlink_changes(%struct.apply_state* %44, i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @APPLY_SYMLINK_IN_RESULT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %105

54:                                               ; preds = %36
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @APPLY_SYMLINK_GOES_AWAY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %103

60:                                               ; preds = %54
  %61 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %62 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %67 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @ignore_case, align 4
  %78 = call %struct.cache_entry* @index_file_exists(i32 %70, i8* %73, i64 %76, i32 %77)
  store %struct.cache_entry* %78, %struct.cache_entry** %7, align 8
  %79 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %80 = icmp ne %struct.cache_entry* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %65
  %82 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %83 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISLNK(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %105

88:                                               ; preds = %81, %65
  br label %102

89:                                               ; preds = %60
  %90 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @lstat(i8* %92, %struct.stat* %8)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISLNK(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %105

101:                                              ; preds = %95, %89
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %59
  br i1 true, label %9, label %104

104:                                              ; preds = %103, %35
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %100, %87, %53
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @check_symlink_changes(%struct.apply_state*, i8*) #1

declare dso_local %struct.cache_entry* @index_file_exists(i32, i8*, i64, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
