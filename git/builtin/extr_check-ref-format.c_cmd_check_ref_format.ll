; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-ref-format.c_cmd_check_ref_format.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-ref-format.c_cmd_check_ref_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@builtin_check_ref_format_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"--branch\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--normalize\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--print\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"--allow-onelevel\00", align 1
@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"--no-allow-onelevel\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"--refspec-pattern\00", align 1
@REFNAME_REFSPEC_PATTERN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_check_ref_format(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @builtin_check_ref_format_usage, align 4
  %22 = call i32 @usage(i32 %21)
  br label %23

23:                                               ; preds = %20, %14, %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @check_ref_format_branch(i8* %35)
  store i32 %36, i32* %4, align 4
  br label %150

37:                                               ; preds = %26, %23
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %115, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8**, i8*** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br label %52

52:                                               ; preds = %42, %38
  %53 = phi i1 [ false, %38 ], [ %51, %42 ]
  br i1 %53, label %54, label %118

54:                                               ; preds = %52
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62, %54
  store i32 1, i32* %9, align 4
  br label %114

71:                                               ; preds = %62
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %113

83:                                               ; preds = %71
  %84 = load i8**, i8*** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %112

96:                                               ; preds = %83
  %97 = load i8**, i8*** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @REFNAME_REFSPEC_PATTERN, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %111

108:                                              ; preds = %96
  %109 = load i32, i32* @builtin_check_ref_format_usage, align 4
  %110 = call i32 @usage(i32 %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112, %79
  br label %114

114:                                              ; preds = %113, %70
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %38

118:                                              ; preds = %52
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %5, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @builtin_check_ref_format_usage, align 4
  %125 = call i32 @usage(i32 %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i8**, i8*** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %11, align 8
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i8*, i8** %11, align 8
  %136 = call i8* @collapse_slashes(i8* %135)
  store i8* %136, i8** %11, align 8
  br label %137

137:                                              ; preds = %134, %126
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @check_refname_format(i8* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 1, i32* %4, align 4
  br label %150

143:                                              ; preds = %137
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %143
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %142, %32
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_ref_format_branch(i8*) #1

declare dso_local i8* @collapse_slashes(i8*) #1

declare dso_local i64 @check_refname_format(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
