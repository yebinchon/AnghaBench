; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-mailmap.c_cmd_check_mailmap.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-mailmap.c_cmd_check_mailmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i8* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@git_default_config = common dso_local global i32 0, align 4
@check_mailmap_options = common dso_local global i32 0, align 4
@check_mailmap_usage = common dso_local global i32 0, align 4
@use_stdin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"no contacts specified\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_check_mailmap(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list, align 4
  %9 = alloca %struct.strbuf, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %11 = load i32, i32* @git_default_config, align 4
  %12 = call i32 @git_config(i32 %11, i32* null)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @check_mailmap_options, align 4
  %17 = load i32, i32* @check_mailmap_usage, align 4
  %18 = call i32 @parse_options(i32 %13, i8** %14, i8* %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i64, i64* @use_stdin, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @die(i32 %25)
  br label %27

27:                                               ; preds = %24, %21, %3
  %28 = call i32 @read_mailmap(%struct.string_list* %8, i32* null)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %40, %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @check_mailmap(%struct.string_list* %8, i8* %38)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 @maybe_flush_or_die(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* @use_stdin, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %50

50:                                               ; preds = %55, %48
  %51 = load i32, i32* @stdin, align 4
  %52 = call i64 @strbuf_getline_lf(%struct.strbuf* %9, i32 %51)
  %53 = load i64, i64* @EOF, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @check_mailmap(%struct.string_list* %8, i8* %57)
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @maybe_flush_or_die(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %50

61:                                               ; preds = %50
  %62 = call i32 @strbuf_release(%struct.strbuf* %9)
  br label %63

63:                                               ; preds = %61, %43
  %64 = call i32 @clear_mailmap(%struct.string_list* %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @read_mailmap(%struct.string_list*, i32*) #2

declare dso_local i32 @check_mailmap(%struct.string_list*, i8*) #2

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @clear_mailmap(%struct.string_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
