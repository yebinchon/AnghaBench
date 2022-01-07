; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_git_tag_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_git_tag_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_sorting = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"tag.gpgsign\00", align 1
@config_sign_tag = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tag.sort\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"tag.forcesignannotated\00", align 1
@force_sign_annotate = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"column.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@colopts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_tag_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_tag_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_sorting**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ref_sorting**
  store %struct.ref_sorting** %11, %struct.ref_sorting*** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @git_config_bool(i8* %16, i8* %17)
  store i8* %18, i8** @config_sign_tag, align 8
  store i32 0, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @config_error_nonbool(i8* %27)
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %23
  %30 = load %struct.ref_sorting**, %struct.ref_sorting*** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @parse_ref_sorting(%struct.ref_sorting** %30, i8* %31)
  store i32 0, i32* %4, align 4
  br label %63

33:                                               ; preds = %19
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @git_gpg_config(i8* %34, i8* %35, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %63

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @git_config_bool(i8* %47, i8* %48)
  store i8* %49, i8** @force_sign_annotate, align 8
  store i32 0, i32* %4, align 4
  br label %63

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @starts_with(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @git_column_config(i8* %55, i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* @colopts)
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @git_color_default_config(i8* %59, i8* %60, i8* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %54, %46, %40, %29, %26, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @parse_ref_sorting(%struct.ref_sorting**, i8*) #1

declare dso_local i32 @git_gpg_config(i8*, i8*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_column_config(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @git_color_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
