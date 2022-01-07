; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_upload-archive.c_cmd_upload_archive_writer.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_upload-archive.c_cmd_upload_archive_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"argument \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@upload_archive_usage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"'%s' does not appear to be a git repository\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"git-upload-archive\00", align 1
@MAX_ARGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Too many options (>%d)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"'argument' token or flush expected\00", align 1
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_upload_archive_writer(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.argv_array, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.argv_array* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @upload_archive_usage, align 4
  %21 = call i32 @usage(i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @enter_repo(i8* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = call i32 (...) @init_archivers()
  %35 = call i32 @argv_array_push(%struct.argv_array* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %57, %33
  %37 = call i8* @packet_read_line(i32 0, i32* null)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %64

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAX_ARGS, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @MAX_ARGS, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @starts_with(i8* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = call i32 @argv_array_push(%struct.argv_array* %7, i8* %62)
  br label %36

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* @the_repository, align 4
  %71 = call i32 @write_archive(i32 %66, i32 %68, i8* %69, i32 %70, i32* null, i32 1)
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @enter_repo(i8*, i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @init_archivers(...) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i8* @packet_read_line(i32, i32*) #2

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @write_archive(i32, i32, i8*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
