; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_create_one_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_create_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64 }
%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s~%u\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to write file '%s' mode %o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i32, i8*, i64)* @create_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_one_file(%struct.apply_state* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.apply_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %136

23:                                               ; preds = %5
  %24 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @try_create_file(%struct.apply_state* %24, i8* %25, i32 %26, i8* %27, i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %136

33:                                               ; preds = %23
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %136

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @safe_create_leading_directories(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %136

46:                                               ; preds = %41
  %47 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @try_create_file(%struct.apply_state* %47, i8* %48, i32 %49, i8* %50, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %6, align 4
  br label %136

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %136

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EEXIST, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EACCES, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @lstat(i8* %70, %struct.stat* %13)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @S_ISDIR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @rmdir(i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78, %73
  %83 = load i64, i64* @EEXIST, align 8
  store i64 %83, i64* @errno, align 8
  br label %84

84:                                               ; preds = %82, %78, %69
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EEXIST, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = call i32 (...) @getpid()
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %129, %89
  %92 = load i32, i32* @PATH_MAX, align 4
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %15, align 8
  %95 = alloca i8, i64 %93, align 16
  store i64 %93, i64* %16, align 8
  %96 = trunc i64 %93 to i32
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @mksnpath(i8* %95, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %97, i32 %98)
  %100 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @try_create_file(%struct.apply_state* %100, i8* %95, i32 %101, i8* %102, i64 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %126

108:                                              ; preds = %91
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @rename(i8* %95, i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %126

116:                                              ; preds = %111
  %117 = call i32 @unlink_or_warn(i8* %95)
  store i32 2, i32* %17, align 4
  br label %126

118:                                              ; preds = %108
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EEXIST, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 2, i32* %17, align 4
  br label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %126

126:                                              ; preds = %123, %122, %116, %115, %107
  %127 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %17, align 4
  switch i32 %128, label %138 [
    i32 0, label %129
    i32 1, label %136
    i32 2, label %130
  ]

129:                                              ; preds = %126
  br label %91

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %85
  %132 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @error_errno(i32 %132, i8* %133, i32 %134)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %126, %59, %55, %45, %36, %32, %22
  %137 = load i32, i32* %6, align 4
  ret i32 %137

138:                                              ; preds = %126
  unreachable
}

declare dso_local i32 @try_create_file(%struct.apply_state*, i8*, i32, i8*, i64) #1

declare dso_local i64 @safe_create_leading_directories(i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @getpid(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mksnpath(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @error_errno(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
