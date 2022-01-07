; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_get_fork_point.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_get_fork_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }
%struct.rev_collect = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.commit_list = type { %struct.commit*, i64 }

@collect_one_reflog_ent = common dso_local global i32 0, align 4
@TMP_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @get_fork_point(i8* %0, %struct.commit* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.rev_collect, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  store %struct.commit* null, %struct.commit** %9, align 8
  %10 = call i32 @memset(%struct.rev_collect* %6, i32 0, i32 16)
  %11 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @collect_one_reflog_ent, align 4
  %14 = call i32 @for_each_reflog_ent(i8* %12, i32 %13, %struct.rev_collect* %6)
  %15 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @get_oid(i8* %19, %struct.object_id* %5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 @add_one_commit(%struct.object_id* %5, %struct.rev_collect* %6)
  br label %24

24:                                               ; preds = %22, %18, %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i32, i32* @TMP_MARK, align 4
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 2
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %32
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.commit*, %struct.commit** %4, align 8
  %48 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 2
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = call %struct.commit_list* @get_merge_bases_many(%struct.commit* %47, i32 %49, %struct.TYPE_4__** %51)
  store %struct.commit_list* %52, %struct.commit_list** %7, align 8
  %53 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %54 = icmp ne %struct.commit_list* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %57 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %46
  br label %95

61:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %69 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %68, i32 0, i32 0
  %70 = load %struct.commit*, %struct.commit** %69, align 8
  %71 = getelementptr inbounds %struct.commit, %struct.commit* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 2
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = icmp eq %struct.TYPE_3__* %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %85

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %62

85:                                               ; preds = %80, %62
  %86 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %85
  %92 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %93 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %92, i32 0, i32 0
  %94 = load %struct.commit*, %struct.commit** %93, align 8
  store %struct.commit* %94, %struct.commit** %9, align 8
  br label %95

95:                                               ; preds = %91, %90, %60
  %96 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %97 = call i32 @free_commit_list(%struct.commit_list* %96)
  %98 = load %struct.commit*, %struct.commit** %9, align 8
  ret %struct.commit* %98
}

declare dso_local i32 @memset(%struct.rev_collect*, i32, i32) #1

declare dso_local i32 @for_each_reflog_ent(i8*, i32, %struct.rev_collect*) #1

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @add_one_commit(%struct.object_id*, %struct.rev_collect*) #1

declare dso_local %struct.commit_list* @get_merge_bases_many(%struct.commit*, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
