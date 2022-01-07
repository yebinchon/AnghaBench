; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_tar_filter_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_tar_filter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archiver = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@write_tar_filter_archive = common dso_local global i32 0, align 4
@ARCHIVER_WANT_COMPRESSION_LEVELS = common dso_local global i32 0, align 4
@tar_filters = common dso_local global %struct.archiver** null, align 8
@nr_tar_filters = common dso_local global i64 0, align 8
@alloc_tar_filters = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@ARCHIVER_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @tar_filter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_filter_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.archiver*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @parse_config_key(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, i32* %11, i8** %10)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %91

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.archiver* @find_tar_filter(i8* %20, i32 %21)
  store %struct.archiver* %22, %struct.archiver** %8, align 8
  %23 = load %struct.archiver*, %struct.archiver** %8, align 8
  %24 = icmp ne %struct.archiver* %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = call %struct.archiver* @xcalloc(i32 1, i32 16)
  store %struct.archiver* %26, %struct.archiver** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @xmemdupz(i8* %27, i32 %28)
  %30 = load %struct.archiver*, %struct.archiver** %8, align 8
  %31 = getelementptr inbounds %struct.archiver, %struct.archiver* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @write_tar_filter_archive, align 4
  %33 = load %struct.archiver*, %struct.archiver** %8, align 8
  %34 = getelementptr inbounds %struct.archiver, %struct.archiver* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ARCHIVER_WANT_COMPRESSION_LEVELS, align 4
  %36 = load %struct.archiver*, %struct.archiver** %8, align 8
  %37 = getelementptr inbounds %struct.archiver, %struct.archiver* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.archiver**, %struct.archiver*** @tar_filters, align 8
  %39 = load i64, i64* @nr_tar_filters, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* @alloc_tar_filters, align 4
  %42 = call i32 @ALLOC_GROW(%struct.archiver** %38, i64 %40, i32 %41)
  %43 = load %struct.archiver*, %struct.archiver** %8, align 8
  %44 = load %struct.archiver**, %struct.archiver*** @tar_filters, align 8
  %45 = load i64, i64* @nr_tar_filters, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* @nr_tar_filters, align 8
  %47 = getelementptr inbounds %struct.archiver*, %struct.archiver** %44, i64 %45
  store %struct.archiver* %43, %struct.archiver** %47, align 8
  br label %48

48:                                               ; preds = %25, %19
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @config_error_nonbool(i8* %56)
  store i32 %57, i32* %4, align 4
  br label %91

58:                                               ; preds = %52
  %59 = load %struct.archiver*, %struct.archiver** %8, align 8
  %60 = getelementptr inbounds %struct.archiver, %struct.archiver* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @free(i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @xstrdup(i8* %63)
  %65 = load %struct.archiver*, %struct.archiver** %8, align 8
  %66 = getelementptr inbounds %struct.archiver, %struct.archiver* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %91

67:                                               ; preds = %48
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @git_config_bool(i8* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @ARCHIVER_REMOTE, align 4
  %78 = load %struct.archiver*, %struct.archiver** %8, align 8
  %79 = getelementptr inbounds %struct.archiver, %struct.archiver* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %89

82:                                               ; preds = %71
  %83 = load i32, i32* @ARCHIVER_REMOTE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.archiver*, %struct.archiver** %8, align 8
  %86 = getelementptr inbounds %struct.archiver, %struct.archiver* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %76
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89, %58, %55, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local %struct.archiver* @find_tar_filter(i8*, i32) #1

declare dso_local %struct.archiver* @xcalloc(i32, i32) #1

declare dso_local i32 @xmemdupz(i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.archiver**, i64, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i64 @git_config_bool(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
