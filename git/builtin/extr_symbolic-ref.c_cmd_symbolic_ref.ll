; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_symbolic-ref.c_cmd_symbolic_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_symbolic-ref.c_cmd_symbolic_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"suppress error message for non-symbolic (detached) refs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"delete symbolic ref\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"shorten ref output\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"reason of the update\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@git_symbolic_ref_usage = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Refusing to perform update with empty message\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Cannot delete %s, not a symbolic ref\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"deleting '%s' is not allowed\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Refusing to point HEAD outside of refs/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_symbolic_ref(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [5 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %14 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %13, i64 0, i64 0
  %15 = call i32 @N_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @OPT__QUIET(i32* %8, i32 %15)
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @OPT_BOOL(i8 signext 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 %19)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %10, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %27 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 @OPT_STRING(i8 signext 109, i32* null, i8** %12, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %32 = call i32 (...) @OPT_END()
  %33 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @git_default_config, align 4
  %35 = call i32 @git_config(i32 %34, i32* null)
  %36 = load i32, i32* %5, align 4
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %13, i64 0, i64 0
  %40 = load i32, i32* @git_symbolic_ref_usage, align 4
  %41 = call i32 @parse_options(i32 %36, i8** %37, i8* %38, %struct.option* %39, i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44, %3
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @git_symbolic_ref_usage, align 4
  %58 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %13, i64 0, i64 0
  %59 = call i32 @usage_with_options(i32 %57, %struct.option* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @check_symref(i8* %63, i32 1, i32 0, i32 0)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i8**, i8*** %6, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %60
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i8**, i8*** %6, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @REF_NO_DEREF, align 4
  %88 = call i32 @delete_ref(i32* null, i8* %86, i32* null, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %131

89:                                               ; preds = %50
  %90 = load i32, i32* %5, align 4
  switch i32 %90, label %125 [
    i32 1, label %91
    i32 2, label %98
  ]

91:                                               ; preds = %89
  %92 = load i8**, i8*** %6, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @check_symref(i8* %94, i32 %95, i32 %96, i32 1)
  store i32 %97, i32* %11, align 4
  br label %129

98:                                               ; preds = %89
  %99 = load i8**, i8*** %6, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  %105 = load i8**, i8*** %6, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @starts_with(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %104, %98
  %113 = load i8**, i8*** %6, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %6, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @create_symref(i8* %115, i8* %118, i8* %119)
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %11, align 4
  br label %129

125:                                              ; preds = %89
  %126 = load i32, i32* @git_symbolic_ref_usage, align 4
  %127 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %13, i64 0, i64 0
  %128 = call i32 @usage_with_options(i32 %126, %struct.option* %127)
  br label %129

129:                                              ; preds = %125, %112, %91
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %83
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @OPT__QUIET(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @OPT_STRING(i8 signext, i32*, i8**, i32, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @check_symref(i8*, i32, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @delete_ref(i32*, i8*, i32*, i32) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @create_symref(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
