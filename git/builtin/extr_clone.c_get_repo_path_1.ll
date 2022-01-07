; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_get_repo_path_1.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_get_repo_path_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.stat = type { i32, i32 }

@get_repo_path_1.suffix = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"/.git\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".git/.git\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@get_repo_path_1.bundle_suffix = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c".bundle\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"gitdir: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i32*)* @get_repo_path_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_repo_path_1(%struct.strbuf* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %96, %2
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @get_repo_path_1.suffix, i64 0, i64 0))
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %99

20:                                               ; preds = %16
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @strbuf_setlen(%struct.strbuf* %21, i64 %22)
  %24 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* @get_repo_path_1.suffix, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strbuf_addstr(%struct.strbuf* %24, i8* %28)
  %30 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @stat(i8* %32, %struct.stat* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %96

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISDIR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @is_git_directory(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32*, i32** %5, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %3, align 8
  br label %134

52:                                               ; preds = %41, %36
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISREG(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 8
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  %62 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @O_RDONLY, align 4
  %66 = call i32 @open(i8* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %96

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %73 = call i32 @read_in_full(i32 %71, i8* %72, i32 8)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 8
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %80 = call i64 @strncmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %70
  br label %96

83:                                               ; preds = %78
  %84 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @read_gitfile(i8* %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32*, i32** %5, align 8
  store i32 0, i32* %91, align 4
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %3, align 8
  br label %134

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %57, %52
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %82, %69, %35
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %16

99:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %130, %99
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @get_repo_path_1.bundle_suffix, i64 0, i64 0))
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @strbuf_setlen(%struct.strbuf* %105, i64 %106)
  %108 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* @get_repo_path_1.bundle_suffix, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strbuf_addstr(%struct.strbuf* %108, i8* %112)
  %114 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @stat(i8* %116, %struct.stat* %7)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %104
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @S_ISREG(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32*, i32** %5, align 8
  store i32 1, i32* %125, align 4
  %126 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %127 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %3, align 8
  br label %134

129:                                              ; preds = %119, %104
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %100

133:                                              ; preds = %100
  store i8* null, i8** %3, align 8
  br label %134

134:                                              ; preds = %133, %124, %90, %47
  %135 = load i8*, i8** %3, align 8
  ret i8* %135
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @is_git_directory(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read_in_full(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @read_gitfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
