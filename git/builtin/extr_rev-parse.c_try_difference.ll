; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_try_difference.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_try_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit_list = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_id }

@try_difference.head_by_default = internal constant [5 x i8] c"HEAD\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@NORMAL = common dso_local global i32 0, align 4
@REVERSED = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @try_difference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_difference(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.object_id, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.commit*, align 8
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %4, align 8
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @try_difference.head_by_default, i64 0, i64 0), i8** %7, align 8
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @try_difference.head_by_default, i64 0, i64 0), i8** %8, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, getelementptr inbounds ([5 x i8], [5 x i8]* @try_difference.head_by_default, i64 0, i64 0)
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, getelementptr inbounds ([5 x i8], [5 x i8]* @try_difference.head_by_default, i64 0, i64 0)
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  store i8 46, i8* %51, align 1
  store i32 0, i32* %2, align 4
  br label %107

52:                                               ; preds = %47, %44, %41
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @get_oid_committish(i8* %53, %struct.object_id* %5)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %105, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @get_oid_committish(i8* %57, %struct.object_id* %6)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @NORMAL, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @show_rev(i32 %61, %struct.object_id* %6, i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @NORMAL, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @REVERSED, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @show_rev(i32 %71, %struct.object_id* %5, i8* %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i32, i32* @the_repository, align 4
  %78 = call %struct.commit* @lookup_commit_reference(i32 %77, %struct.object_id* %5)
  store %struct.commit* %78, %struct.commit** %11, align 8
  %79 = load i32, i32* @the_repository, align 4
  %80 = call %struct.commit* @lookup_commit_reference(i32 %79, %struct.object_id* %6)
  store %struct.commit* %80, %struct.commit** %12, align 8
  %81 = load %struct.commit*, %struct.commit** %11, align 8
  %82 = icmp ne %struct.commit* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.commit*, %struct.commit** %12, align 8
  %85 = icmp ne %struct.commit* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83, %76
  %87 = load i8*, i8** %4, align 8
  store i8 46, i8* %87, align 1
  store i32 0, i32* %2, align 4
  br label %107

88:                                               ; preds = %83
  %89 = load %struct.commit*, %struct.commit** %11, align 8
  %90 = load %struct.commit*, %struct.commit** %12, align 8
  %91 = call %struct.commit_list* @get_merge_bases(%struct.commit* %89, %struct.commit* %90)
  store %struct.commit_list* %91, %struct.commit_list** %10, align 8
  br label %92

92:                                               ; preds = %95, %88
  %93 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %94 = icmp ne %struct.commit_list* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = call %struct.commit* @pop_commit(%struct.commit_list** %10)
  store %struct.commit* %96, %struct.commit** %13, align 8
  %97 = load i32, i32* @REVERSED, align 4
  %98 = load %struct.commit*, %struct.commit** %13, align 8
  %99 = getelementptr inbounds %struct.commit, %struct.commit* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @show_rev(i32 %97, %struct.object_id* %100, i8* null)
  br label %92

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %70
  %104 = load i8*, i8** %4, align 8
  store i8 46, i8* %104, align 1
  store i32 1, i32* %2, align 4
  br label %107

105:                                              ; preds = %56, %52
  %106 = load i8*, i8** %4, align 8
  store i8 46, i8* %106, align 1
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %103, %86, %50, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @get_oid_committish(i8*, %struct.object_id*) #1

declare dso_local i32 @show_rev(i32, %struct.object_id*, i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
