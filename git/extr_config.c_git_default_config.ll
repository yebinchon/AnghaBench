; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_default_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"core.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"author.\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"committer.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"i18n.\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"branch.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"push.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"mailmap.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"advice.\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"color.advice\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pager.color\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"color.pager\00", align 1
@pager_use_color = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"pack.packsizelimit\00", align 1
@pack_size_limit_cfg = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"pack.compression\00", align 1
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"bad pack compression level %d\00", align 1
@pack_compression_level = common dso_local global i32 0, align 4
@pack_compression_seen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_default_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @starts_with(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @git_default_core_config(i8* %13, i8* %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %125

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @starts_with(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @starts_with(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @starts_with(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %21, %17
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @git_ident_config(i8* %30, i8* %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %125

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @starts_with(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @git_default_i18n_config(i8* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %125

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @starts_with(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @git_default_branch_config(i8* %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %125

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @starts_with(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @git_default_push_config(i8* %55, i8* %56)
  store i32 %57, i32* %4, align 4
  br label %125

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @starts_with(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @git_default_mailmap_config(i8* %63, i8* %64)
  store i32 %65, i32* %4, align 4
  br label %125

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @starts_with(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @starts_with(i8* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @git_default_advice_config(i8* %75, i8* %76)
  store i32 %77, i32* %4, align 4
  br label %125

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @git_config_bool(i8* %87, i8* %88)
  store i32 %89, i32* @pager_use_color, align 4
  store i32 0, i32* %4, align 4
  br label %125

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @git_config_ulong(i8* %95, i8* %96)
  store i32 %97, i32* @pack_size_limit_cfg, align 4
  store i32 0, i32* %4, align 4
  br label %125

98:                                               ; preds = %90
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @git_config_int(i8* %103, i8* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  store i32 %109, i32* %8, align 4
  br label %122

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113, %110
  %118 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @die(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* @pack_compression_level, align 4
  store i32 1, i32* @pack_compression_seen, align 4
  store i32 0, i32* %4, align 4
  br label %125

124:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %122, %94, %86, %74, %62, %54, %46, %38, %29, %12
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_default_core_config(i8*, i8*, i8*) #1

declare dso_local i32 @git_ident_config(i8*, i8*, i8*) #1

declare dso_local i32 @git_default_i18n_config(i8*, i8*) #1

declare dso_local i32 @git_default_branch_config(i8*, i8*) #1

declare dso_local i32 @git_default_push_config(i8*, i8*) #1

declare dso_local i32 @git_default_mailmap_config(i8*, i8*) #1

declare dso_local i32 @git_default_advice_config(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_ulong(i8*, i8*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
