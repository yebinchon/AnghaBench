; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_verify-pack.c_cmd_verify_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_verify-pack.c_cmd_verify_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@VERIFY_PACK_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"stat-only\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"show statistics only\00", align 1
@VERIFY_PACK_STAT_ONLY = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@verify_pack_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_verify_pack(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %12 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @VERIFY_PACK_VERBOSE, align 4
  %14 = call i32 @OPT_BIT(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %17 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @VERIFY_PACK_STAT_ONLY, align 4
  %19 = call i32 @OPT_BIT(i8 signext 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %22 = call i32 (...) @OPT_END()
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @git_default_config, align 4
  %25 = call i32 @git_config(i32 %24, i32* null)
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %30 = load i32, i32* @verify_pack_usage, align 4
  %31 = call i32 @parse_options(i32 %26, i8** %27, i8* %28, %struct.option* %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @verify_pack_usage, align 4
  %36 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %37 = call i32 @usage_with_options(i32 %35, %struct.option* %36)
  br label %38

38:                                               ; preds = %34, %3
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @verify_one_pack(i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %39

57:                                               ; preds = %39
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @OPT_BIT(i8 signext, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i64 @verify_one_pack(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
