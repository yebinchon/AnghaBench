; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_merge_bases_many.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_merge_bases_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.repository*, %struct.commit*, i32, %struct.commit**)* @merge_bases_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @merge_bases_many(%struct.repository* %0, %struct.commit* %1, i32 %2, %struct.commit** %3) #0 {
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit**, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.commit** %3, %struct.commit*** %9, align 8
  store %struct.commit_list* null, %struct.commit_list** %10, align 8
  store %struct.commit_list* null, %struct.commit_list** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %30, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.commit*, %struct.commit** %7, align 8
  %20 = load %struct.commit**, %struct.commit*** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.commit*, %struct.commit** %20, i64 %22
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  %25 = icmp eq %struct.commit* %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.commit*, %struct.commit** %7, align 8
  %28 = call %struct.commit_list* @commit_list_insert(%struct.commit* %27, %struct.commit_list** %11)
  store %struct.commit_list* %28, %struct.commit_list** %5, align 8
  br label %82

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %12, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = load %struct.commit*, %struct.commit** %7, align 8
  %36 = call i64 @repo_parse_commit(%struct.repository* %34, %struct.commit* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  br label %82

39:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.repository*, %struct.repository** %6, align 8
  %46 = load %struct.commit**, %struct.commit*** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.commit*, %struct.commit** %46, i64 %48
  %50 = load %struct.commit*, %struct.commit** %49, align 8
  %51 = call i64 @repo_parse_commit(%struct.repository* %45, %struct.commit* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  br label %82

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.repository*, %struct.repository** %6, align 8
  %60 = load %struct.commit*, %struct.commit** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.commit**, %struct.commit*** %9, align 8
  %63 = call %struct.commit_list* @paint_down_to_common(%struct.repository* %59, %struct.commit* %60, i32 %61, %struct.commit** %62, i32 0)
  store %struct.commit_list* %63, %struct.commit_list** %10, align 8
  br label %64

64:                                               ; preds = %79, %58
  %65 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %66 = icmp ne %struct.commit_list* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = call %struct.commit* @pop_commit(%struct.commit_list** %10)
  store %struct.commit* %68, %struct.commit** %13, align 8
  %69 = load %struct.commit*, %struct.commit** %13, align 8
  %70 = getelementptr inbounds %struct.commit, %struct.commit* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STALE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load %struct.commit*, %struct.commit** %13, align 8
  %78 = call i32 @commit_list_insert_by_date(%struct.commit* %77, %struct.commit_list** %11)
  br label %79

79:                                               ; preds = %76, %67
  br label %64

80:                                               ; preds = %64
  %81 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  store %struct.commit_list* %81, %struct.commit_list** %5, align 8
  br label %82

82:                                               ; preds = %80, %53, %38, %26
  %83 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  ret %struct.commit_list* %83
}

declare dso_local %struct.commit_list* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i64 @repo_parse_commit(%struct.repository*, %struct.commit*) #1

declare dso_local %struct.commit_list* @paint_down_to_common(%struct.repository*, %struct.commit*, i32, %struct.commit**, i32) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
