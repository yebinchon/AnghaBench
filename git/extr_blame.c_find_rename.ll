; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_rename.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i8, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.blame_origin = type { i32, i32, i32, %struct.commit* }
%struct.diff_options = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DIFF_DETECT_RENAME = common dso_local global i32 0, align 4
@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@diff_queued_diff = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)* @find_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_origin* @find_rename(%struct.repository* %0, %struct.commit* %1, %struct.blame_origin* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.blame_origin*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  %8 = alloca %struct.diff_options, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.diff_filepair*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.blame_origin* %2, %struct.blame_origin** %6, align 8
  store %struct.blame_origin* null, %struct.blame_origin** %7, align 8
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = call i32 @repo_diff_setup(%struct.repository* %11, %struct.diff_options* %8)
  %13 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @DIFF_DETECT_RENAME, align 4
  %16 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %18 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %20 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = call i32 @diff_setup_done(%struct.diff_options* %8)
  %24 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %25 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %24, i32 0, i32 3
  %26 = load %struct.commit*, %struct.commit** %25, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i64 @is_null_oid(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.commit*, %struct.commit** %5, align 8
  %33 = call i32 @get_commit_tree_oid(%struct.commit* %32)
  %34 = call i32 @do_diff_cache(i32 %33, %struct.diff_options* %8)
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.commit*, %struct.commit** %5, align 8
  %37 = call i32 @get_commit_tree_oid(%struct.commit* %36)
  %38 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %39 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %38, i32 0, i32 3
  %40 = load %struct.commit*, %struct.commit** %39, align 8
  %41 = call i32 @get_commit_tree_oid(%struct.commit* %40)
  %42 = call i32 @diff_tree_oid(i32 %37, i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %8)
  br label %43

43:                                               ; preds = %35, %31
  %44 = call i32 @diffcore_std(%struct.diff_options* %8)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %100, %43
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @diff_queued_diff, i32 0, i32 0), align 8
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %45
  %50 = load %struct.diff_filepair**, %struct.diff_filepair*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @diff_queued_diff, i32 0, i32 1), align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %50, i64 %52
  %54 = load %struct.diff_filepair*, %struct.diff_filepair** %53, align 8
  store %struct.diff_filepair* %54, %struct.diff_filepair** %10, align 8
  %55 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %56 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 8
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 82
  br i1 %59, label %66, label %60

60:                                               ; preds = %49
  %61 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %62 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 67
  br i1 %65, label %66, label %99

66:                                               ; preds = %60, %49
  %67 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %68 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %73 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcmp(i32 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %66
  %78 = load %struct.commit*, %struct.commit** %5, align 8
  %79 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %80 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.blame_origin* @get_origin(%struct.commit* %78, i32 %83)
  store %struct.blame_origin* %84, %struct.blame_origin** %7, align 8
  %85 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %86 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %85, i32 0, i32 1
  %87 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %88 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = call i32 @oidcpy(i32* %86, i32* %90)
  %92 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %93 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %98 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %66, %60
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %45

103:                                              ; preds = %77, %45
  %104 = call i32 @diff_flush(%struct.diff_options* %8)
  %105 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  %106 = call i32 @clear_pathspec(i32* %105)
  %107 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  ret %struct.blame_origin* %107
}

declare dso_local i32 @repo_diff_setup(%struct.repository*, %struct.diff_options*) #1

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @do_diff_cache(i32, %struct.diff_options*) #1

declare dso_local i32 @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @diff_tree_oid(i32, i32, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.blame_origin* @get_origin(%struct.commit*, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

declare dso_local i32 @clear_pathspec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
