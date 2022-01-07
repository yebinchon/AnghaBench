; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_repo_parse_commit_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_repo_parse_commit_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Could not read %s\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Object %s not a commit\00", align 1
@save_commit_buffer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_parse_commit_internal(%struct.repository* %0, %struct.commit* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.commit*, %struct.commit** %7, align 8
  %15 = icmp ne %struct.commit* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %86

17:                                               ; preds = %4
  %18 = load %struct.commit*, %struct.commit** %7, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %86

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.repository*, %struct.repository** %6, align 8
  %29 = load %struct.commit*, %struct.commit** %7, align 8
  %30 = call i64 @parse_commit_in_graph(%struct.repository* %28, %struct.commit* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %86

33:                                               ; preds = %27, %24
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = load %struct.commit*, %struct.commit** %7, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i8* @repo_read_object_file(%struct.repository* %34, i32* %37, i32* %10, i64* %12)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %51

45:                                               ; preds = %41
  %46 = load %struct.commit*, %struct.commit** %7, align 8
  %47 = getelementptr inbounds %struct.commit, %struct.commit* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @oid_to_hex(i32* %48)
  %50 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %44
  %52 = phi i32 [ -1, %44 ], [ %50, %45 ]
  store i32 %52, i32* %5, align 4
  br label %86

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @OBJ_COMMIT, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load %struct.commit*, %struct.commit** %7, align 8
  %61 = getelementptr inbounds %struct.commit, %struct.commit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @oid_to_hex(i32* %62)
  %64 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %5, align 4
  br label %86

65:                                               ; preds = %53
  %66 = load %struct.repository*, %struct.repository** %6, align 8
  %67 = load %struct.commit*, %struct.commit** %7, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @parse_commit_buffer(%struct.repository* %66, %struct.commit* %67, i8* %68, i64 %69, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i64, i64* @save_commit_buffer, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load %struct.repository*, %struct.repository** %6, align 8
  %78 = load %struct.commit*, %struct.commit** %7, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @set_commit_buffer(%struct.repository* %77, %struct.commit* %78, i8* %79, i64 %80)
  store i32 0, i32* %5, align 4
  br label %86

82:                                               ; preds = %73, %65
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %76, %57, %51, %32, %23, %16
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @parse_commit_in_graph(%struct.repository*, %struct.commit*) #1

declare dso_local i8* @repo_read_object_file(%struct.repository*, i32*, i32*, i64*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_commit_buffer(%struct.repository*, %struct.commit*, i8*, i64, i32) #1

declare dso_local i32 @set_commit_buffer(%struct.repository*, %struct.commit*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
