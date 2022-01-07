; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_cmd_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_cmd_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@git_worktree_config = common dso_local global i32 0, align 4
@worktree_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_worktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.option], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %8, i64 0, i64 0
  %10 = call i32 (...) @OPT_END()
  %11 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @git_worktree_config, align 4
  %13 = call i32 @git_config(i32 %12, i32* null)
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @worktree_usage, align 4
  %18 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %8, i64 0, i64 0
  %19 = call i32 @usage_with_options(i32 %17, %struct.option* %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @add(i32 %32, i8** %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %119

37:                                               ; preds = %24
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @prune(i32 %45, i8** %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %119

50:                                               ; preds = %37
  %51 = load i8**, i8*** %6, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @list(i32 %58, i8** %60, i8* %61)
  store i32 %62, i32* %4, align 4
  br label %119

63:                                               ; preds = %50
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i8**, i8*** %6, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @lock_worktree(i32 %71, i8** %73, i8* %74)
  store i32 %75, i32* %4, align 4
  br label %119

76:                                               ; preds = %63
  %77 = load i8**, i8*** %6, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i8**, i8*** %6, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @unlock_worktree(i32 %84, i8** %86, i8* %87)
  store i32 %88, i32* %4, align 4
  br label %119

89:                                               ; preds = %76
  %90 = load i8**, i8*** %6, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @move_worktree(i32 %97, i8** %99, i8* %100)
  store i32 %101, i32* %4, align 4
  br label %119

102:                                              ; preds = %89
  %103 = load i8**, i8*** %6, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load i8**, i8*** %6, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @remove_worktree(i32 %110, i8** %112, i8* %113)
  store i32 %114, i32* %4, align 4
  br label %119

115:                                              ; preds = %102
  %116 = load i32, i32* @worktree_usage, align 4
  %117 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %8, i64 0, i64 0
  %118 = call i32 @usage_with_options(i32 %116, %struct.option* %117)
  br label %119

119:                                              ; preds = %115, %108, %95, %82, %69, %56, %43, %30
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @add(i32, i8**, i8*) #1

declare dso_local i32 @prune(i32, i8**, i8*) #1

declare dso_local i32 @list(i32, i8**, i8*) #1

declare dso_local i32 @lock_worktree(i32, i8**, i8*) #1

declare dso_local i32 @unlock_worktree(i32, i8**, i8*) #1

declare dso_local i32 @move_worktree(i32, i8**, i8*) #1

declare dso_local i32 @remove_worktree(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
