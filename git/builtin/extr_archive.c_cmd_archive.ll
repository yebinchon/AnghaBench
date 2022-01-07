; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_archive.c_cmd_archive.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_archive.c_cmd_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"git-upload-archive\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"write the archive to this file\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"repo\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"retrieve the archive from remote repository <repo>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"path to the remote git-upload-archive command\00", align 1
@PARSE_OPT_KEEP_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_archive(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %11, i64 0, i64 0
  %13 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @OPT_FILENAME(i8 signext 111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, i32 %13)
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %17 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %22 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %24 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %8, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %27 = call i32 (...) @OPT_END()
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %11, i64 0, i64 0
  %33 = load i32, i32* @PARSE_OPT_KEEP_ALL, align 4
  %34 = call i32 @parse_options(i32 %29, i8** %30, i8* %31, %struct.option* %32, i32* null, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = call i32 (...) @init_archivers()
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @create_output_file(i8* %39)
  br label %41

41:                                               ; preds = %38, %3
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @run_remote_archiver(i32 %45, i8** %46, i8* %47, i8* %48, i8* %49)
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %41
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @_IOLBF, align 4
  %54 = load i32, i32* @BUFSIZ, align 4
  %55 = call i32 @setvbuf(i32 %52, i32* null, i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i8**, i8*** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @the_repository, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @write_archive(i32 %56, i8** %57, i8* %58, i32 %59, i8* %60, i32 0)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %44
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @OPT_FILENAME(i8 signext, i8*, i8**, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32*, i32) #1

declare dso_local i32 @init_archivers(...) #1

declare dso_local i32 @create_output_file(i8*) #1

declare dso_local i32 @run_remote_archiver(i32, i8**, i8*, i8*, i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @write_archive(i32, i8**, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
