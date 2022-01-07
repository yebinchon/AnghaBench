; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_name_rev.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_name_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i64, %struct.commit_list* }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.rev_name = type { i8*, i32, i32, i32, i32 }

@cutoff = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s^0\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"generation: %d, but deref?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%.*s~%d^%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%.*s^%d\00", align 1
@MERGE_TRAVERSAL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, i8*, i32, i32, i32, i32, i32)* @name_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_rev(%struct.commit* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rev_name*, align 8
  %16 = alloca %struct.commit_list*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load %struct.commit*, %struct.commit** %8, align 8
  %22 = call %struct.rev_name* @get_commit_rev_name(%struct.commit* %21)
  store %struct.rev_name* %22, %struct.rev_name** %15, align 8
  store i32 1, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %23 = load %struct.commit*, %struct.commit** %8, align 8
  %24 = call i32 @parse_commit(%struct.commit* %23)
  %25 = load %struct.commit*, %struct.commit** %8, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @cutoff, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %135

31:                                               ; preds = %7
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* (i8*, ...) @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i8* %36, i8** %18, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %45 = icmp eq %struct.rev_name* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call %struct.rev_name* @xmalloc(i32 4)
  store %struct.rev_name* %47, %struct.rev_name** %15, align 8
  %48 = load %struct.commit*, %struct.commit** %8, align 8
  %49 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %50 = call i32 @set_commit_rev_name(%struct.commit* %48, %struct.rev_name* %49)
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @is_better_name(%struct.rev_name* %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %62 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %65 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %68 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %71 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.rev_name*, %struct.rev_name** %15, align 8
  %74 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %78

75:                                               ; preds = %51
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 @free(i8* %76)
  br label %135

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.commit*, %struct.commit** %8, align 8
  %81 = getelementptr inbounds %struct.commit, %struct.commit* %80, i32 0, i32 1
  %82 = load %struct.commit_list*, %struct.commit_list** %81, align 8
  store %struct.commit_list* %82, %struct.commit_list** %16, align 8
  br label %83

83:                                               ; preds = %129, %79
  %84 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %85 = icmp ne %struct.commit_list* %84, null
  br i1 %85, label %86, label %135

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @strip_suffix(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64* %19)
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i64, i64* %19, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i8* (i8*, ...) @xstrfmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %96, i8* %97, i32 %98, i32 %99)
  store i8* %100, i8** %20, align 8
  br label %107

101:                                              ; preds = %89
  %102 = load i64, i64* %19, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i8* (i8*, ...) @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %103, i8* %104, i32 %105)
  store i8* %106, i8** %20, align 8
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %109 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %108, i32 0, i32 0
  %110 = load %struct.commit*, %struct.commit** %109, align 8
  %111 = load i8*, i8** %20, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @MERGE_TRAVERSAL_WEIGHT, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %13, align 4
  call void @name_rev(%struct.commit* %110, i8* %111, i32 %112, i32 0, i32 %115, i32 %116, i32 0)
  br label %128

117:                                              ; preds = %86
  %118 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %119 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %118, i32 0, i32 0
  %120 = load %struct.commit*, %struct.commit** %119, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %13, align 4
  call void @name_rev(%struct.commit* %120, i8* %121, i32 %122, i32 %124, i32 %126, i32 %127, i32 0)
  br label %128

128:                                              ; preds = %117, %107
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %131 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %130, i32 0, i32 1
  %132 = load %struct.commit_list*, %struct.commit_list** %131, align 8
  store %struct.commit_list* %132, %struct.commit_list** %16, align 8
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %83

135:                                              ; preds = %30, %75, %83
  ret void
}

declare dso_local %struct.rev_name* @get_commit_rev_name(%struct.commit*) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i8* @xstrfmt(i8*, ...) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local %struct.rev_name* @xmalloc(i32) #1

declare dso_local i32 @set_commit_rev_name(%struct.commit*, %struct.rev_name*) #1

declare dso_local i64 @is_better_name(%struct.rev_name*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strip_suffix(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
