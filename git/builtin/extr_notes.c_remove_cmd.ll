; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_remove_cmd.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_remove_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.option = type { i32 }
%struct.notes_tree = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"attempt to remove non-existent note is not an error\00", align 1
@IGNORE_MISSING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"read object names from the standard input\00", align 1
@git_notes_remove_usage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Notes removed by 'git notes remove'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @remove_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_cmd(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.option], align 4
  %10 = alloca %struct.notes_tree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @IGNORE_MISSING, align 4
  %16 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 %19)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %23 = call i32 (...) @OPT_END()
  %24 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %29 = load i32, i32* @git_notes_remove_usage, align 4
  %30 = call i32 @parse_options(i32 %25, i8** %26, i8* %27, %struct.option* %28, i32 %29, i32 0)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %32 = call %struct.notes_tree* @init_notes_check(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  store %struct.notes_tree* %32, %struct.notes_tree** %10, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @remove_one_note(%struct.notes_tree* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %11, align 4
  br label %58

42:                                               ; preds = %35, %3
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @remove_one_note(%struct.notes_tree* %48, i8* %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %5, align 8
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %63

63:                                               ; preds = %68, %61
  %64 = load i32, i32* @stdin, align 4
  %65 = call i64 @strbuf_getwholeline(%struct.strbuf* %12, i32 %64, i8 signext 10)
  %66 = load i64, i64* @EOF, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = call i32 @strbuf_rtrim(%struct.strbuf* %12)
  %70 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @remove_one_note(%struct.notes_tree* %70, i8* %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %63

77:                                               ; preds = %63
  %78 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %79

79:                                               ; preds = %77, %58
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @the_repository, align 4
  %84 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %85 = call i32 @commit_notes(i32 %83, %struct.notes_tree* %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %88 = call i32 @free_notes(%struct.notes_tree* %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @OPT_BIT(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local %struct.notes_tree* @init_notes_check(i8*, i32) #1

declare dso_local i32 @remove_one_note(%struct.notes_tree*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_getwholeline(%struct.strbuf*, i32, i8 signext) #1

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @commit_notes(i32, %struct.notes_tree*, i8*) #1

declare dso_local i32 @free_notes(%struct.notes_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
