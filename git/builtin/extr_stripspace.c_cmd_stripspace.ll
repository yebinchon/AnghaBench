; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stripspace.c_cmd_stripspace.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stripspace.c_cmd_stripspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@STRIP_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"strip-comments\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"skip and remove all lines starting with comment character\00", align 1
@STRIP_COMMENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"comment-lines\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"prepend comment character and space to each line\00", align 1
@COMMENT_LINES = common dso_local global i32 0, align 4
@stripspace_usage = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"could not read the input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_stripspace(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load i32, i32* @STRIP_DEFAULT, align 4
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @STRIP_COMMENTS, align 4
  %16 = call i32 @OPT_CMDMODE(i8 signext 115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @COMMENT_LINES, align 4
  %21 = call i32 @OPT_CMDMODE(i8 signext 99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %24 = call i32 (...) @OPT_END()
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %30 = load i32, i32* @stripspace_usage, align 4
  %31 = call i32 @parse_options(i32 %26, i8** %27, i8* %28, %struct.option* %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @stripspace_usage, align 4
  %36 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %37 = call i32 @usage_with_options(i32 %35, %struct.option* %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @STRIP_COMMENTS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @COMMENT_LINES, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38
  %47 = call i32 @setup_git_directory_gently(i32* %9)
  %48 = load i32, i32* @git_default_config, align 4
  %49 = call i32 @git_config(i32 %48, i32* null)
  br label %50

50:                                               ; preds = %46, %42
  %51 = call i64 @strbuf_read(%struct.strbuf* %7, i32 0, i32 1024)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @die_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @STRIP_DEFAULT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @STRIP_COMMENTS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @STRIP_COMMENTS, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @strbuf_stripspace(%struct.strbuf* %7, i32 %67)
  br label %71

69:                                               ; preds = %59
  %70 = call i32 @comment_lines(%struct.strbuf* %7)
  br label %71

71:                                               ; preds = %69, %63
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write_or_die(i32 1, i32 %73, i32 %75)
  %77 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_CMDMODE(i8 signext, i8*, i32*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @setup_git_directory_gently(i32*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @strbuf_stripspace(%struct.strbuf*, i32) #2

declare dso_local i32 @comment_lines(%struct.strbuf*) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
