; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_prepare_cover_text.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_prepare_cover_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.pretty_print_context = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"*** SUBJECT HERE ***\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"*** BLURB HERE ***\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@cover_from_description_mode = common dso_local global i64 0, align 8
@COVER_FROM_NONE = common dso_local global i64 0, align 8
@COVER_FROM_SUBJECT = common dso_local global i64 0, align 8
@COVER_FROM_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@COVER_FROM_MESSAGE = common dso_local global i64 0, align 8
@COVER_FROM_AUTO_MAX_SUBJECT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pretty_print_context*, i8*, %struct.strbuf*, i8*, i32)* @prepare_cover_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_cover_text(%struct.pretty_print_context* %0, i8* %1, %struct.strbuf* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.pretty_print_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca %struct.strbuf, align 8
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %15 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = load i64, i64* @cover_from_description_mode, align 8
  %18 = load i64, i64* @COVER_FROM_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %69

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @read_branch_desc(%struct.strbuf* %13, i8* %30)
  br label %32

32:                                               ; preds = %29, %24, %21
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %69

37:                                               ; preds = %32
  %38 = load i64, i64* @cover_from_description_mode, align 8
  %39 = load i64, i64* @COVER_FROM_SUBJECT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @cover_from_description_mode, align 8
  %43 = load i64, i64* @COVER_FROM_AUTO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @format_subject(%struct.strbuf* %14, i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %12, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i64, i64* @cover_from_description_mode, align 8
  %51 = load i64, i64* @COVER_FROM_MESSAGE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @cover_from_description_mode, align 8
  %55 = load i64, i64* @COVER_FROM_AUTO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @COVER_FROM_AUTO_MAX_SUBJECT_LEN, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %49
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %12, align 8
  br label %68

65:                                               ; preds = %57, %53
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %11, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %36, %20
  %70 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %71 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @pp_title_line(%struct.pretty_print_context* %70, i8** %11, %struct.strbuf* %71, i8* %72, i32 %73)
  %75 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %76 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %77 = call i32 @pp_remainder(%struct.pretty_print_context* %75, i8** %12, %struct.strbuf* %76, i32 0)
  %78 = call i32 @strbuf_release(%struct.strbuf* %13)
  %79 = call i32 @strbuf_release(%struct.strbuf* %14)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @read_branch_desc(%struct.strbuf*, i8*) #2

declare dso_local i8* @format_subject(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @pp_title_line(%struct.pretty_print_context*, i8**, %struct.strbuf*, i8*, i32) #2

declare dso_local i32 @pp_remainder(%struct.pretty_print_context*, i8**, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
