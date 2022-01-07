; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-ref.c_cmd_show_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-ref.c_cmd_show_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@git_default_config = common dso_local global i32 0, align 4
@show_ref_options = common dso_local global i32 0, align 4
@show_ref_usage = common dso_local global i32 0, align 4
@exclude_arg = common dso_local global i64 0, align 8
@exclude_existing_arg = common dso_local global i32 0, align 4
@pattern = common dso_local global i8** null, align 8
@verify = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"--verify requires a reference\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"'%s' - not a valid ref\00", align 1
@show_head = common dso_local global i64 0, align 8
@show_ref = common dso_local global i32 0, align 4
@found_match = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"No match\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_show_ref(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @git_default_config, align 4
  %10 = call i32 @git_config(i32 %9, i32* null)
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @show_ref_options, align 4
  %15 = load i32, i32* @show_ref_usage, align 4
  %16 = call i32 @parse_options(i32 %11, i8** %12, i8* %13, i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @exclude_arg, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @exclude_existing_arg, align 4
  %21 = call i32 @exclude_existing(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %94

22:                                               ; preds = %3
  %23 = load i8**, i8*** %6, align 8
  store i8** %23, i8*** @pattern, align 8
  %24 = load i8**, i8*** @pattern, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i8** null, i8*** @pattern, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i64, i64* @verify, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %28
  %32 = load i8**, i8*** @pattern, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i8**, i8*** @pattern, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load i8**, i8*** @pattern, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @starts_with(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8**, i8*** @pattern, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46, %41
  %52 = load i8**, i8*** @pattern, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @read_ref(i8* %53, %struct.object_id* %8)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i8**, i8*** @pattern, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @show_one(i8* %58, %struct.object_id* %8)
  br label %69

60:                                               ; preds = %51, %46
  %61 = load i32, i32* @quiet, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i8**, i8*** @pattern, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %68

67:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %94

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i8**, i8*** @pattern, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** @pattern, align 8
  br label %37

72:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %94

73:                                               ; preds = %28
  %74 = load i64, i64* @show_head, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @show_ref, align 4
  %78 = call i32 @head_ref(i32 %77, i32* null)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @show_ref, align 4
  %81 = call i32 @for_each_ref(i32 %80, i32* null)
  %82 = load i32, i32* @found_match, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @verify, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @quiet, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87, %84
  store i32 1, i32* %4, align 4
  br label %94

93:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %92, %72, %67, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @exclude_existing(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_ref(i8*, %struct.object_id*) #1

declare dso_local i32 @show_one(i8*, %struct.object_id*) #1

declare dso_local i32 @head_ref(i32, i32*) #1

declare dso_local i32 @for_each_ref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
