; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mktree.c_cmd_mktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mktree.c_cmd_mktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.object_id = type { i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"input is NUL terminated\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"allow missing objects\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"allow creation of more than one tree\00", align 1
@mktree_usage = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"input format error: (blank line only valid in batch mode)\00", align 1
@used = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_mktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64 (%struct.strbuf*, i32)*, align 8
  %14 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %14, i64 0, i64 0
  %17 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OPT_BOOL(i8 signext 122, i32* null, i32* %9, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 %21, i32 1)
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %11, i32 %25, i32 1)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = call i32 (...) @OPT_END()
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %14, i64 0, i64 0
  %35 = load i32, i32* @mktree_usage, align 4
  %36 = call i32 @parse_options(i32 %31, i8** %32, i8* %33, %struct.option* %34, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i64 (%struct.strbuf*, i32)* @strbuf_getline_nul, i64 (%struct.strbuf*, i32)* @strbuf_getline_lf
  store i64 (%struct.strbuf*, i32)* %40, i64 (%struct.strbuf*, i32)** %13, align 8
  br label %41

41:                                               ; preds = %88, %3
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %66
  %47 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %13, align 8
  %48 = load i32, i32* @stdin, align 4
  %49 = call i64 %47(%struct.strbuf* %7, i32 %48)
  %50 = load i64, i64* @EOF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %72

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %72

64:                                               ; preds = %60
  %65 = call i32 @die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %53
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @mktree_line(i8* %68, i32 %69, i32 %70)
  br label %46

72:                                               ; preds = %63, %52
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @used, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %88

82:                                               ; preds = %78, %75, %72
  %83 = call i32 @write_tree(%struct.object_id* %8)
  %84 = call i32 @oid_to_hex(%struct.object_id* %8)
  %85 = call i32 @puts(i32 %84)
  %86 = load i32, i32* @stdout, align 4
  %87 = call i32 @fflush(i32 %86)
  br label %88

88:                                               ; preds = %82, %81
  store i32 0, i32* @used, align 4
  br label %41

89:                                               ; preds = %41
  %90 = call i32 @strbuf_release(%struct.strbuf* %7)
  %91 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i32*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_SET_INT(i32, i8*, i32*, i32, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i64 @strbuf_getline_nul(%struct.strbuf*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @mktree_line(i8*, i32, i32) #2

declare dso_local i32 @write_tree(%struct.object_id*) #2

declare dso_local i32 @puts(i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
