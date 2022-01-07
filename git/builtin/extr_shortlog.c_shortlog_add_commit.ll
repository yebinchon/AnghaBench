; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_shortlog_add_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_shortlog_add_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.shortlog = type { i64, i32, i64, i64, i32 }
%struct.commit = type { i32 }
%struct.pretty_print_context = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CMIT_FMT_USERFORMAT = common dso_local global i32 0, align 4
@DATE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%cN <%cE>\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%cN\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%aN <%aE>\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%aN\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shortlog_add_commit(%struct.shortlog* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.shortlog*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.pretty_print_context, align 4
  %8 = alloca i8*, align 8
  store %struct.shortlog* %0, %struct.shortlog** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.pretty_print_context* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @CMIT_FMT_USERFORMAT, align 4
  %13 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %15 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %7, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @DATE_NORMAL, align 4
  %20 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call i32 (...) @get_log_output_encoding()
  %23 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %25 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %30 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %37 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi i8* [ %34, %28 ], [ %41, %35 ]
  store i8* %43, i8** %8, align 8
  %44 = load %struct.commit*, %struct.commit** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @format_commit_message(%struct.commit* %44, i8* %45, %struct.strbuf* %5, %struct.pretty_print_context* %7)
  %47 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %48 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %42
  %52 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %53 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.commit*, %struct.commit** %4, align 8
  %58 = call i32 @pretty_print_commit(%struct.pretty_print_context* %7, %struct.commit* %57, %struct.strbuf* %6)
  br label %62

59:                                               ; preds = %51
  %60 = load %struct.commit*, %struct.commit** %4, align 8
  %61 = call i32 @format_commit_message(%struct.commit* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.strbuf* %6, %struct.pretty_print_context* %7)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.shortlog*, %struct.shortlog** %3, align 8
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i8* [ %72, %70 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %73 ]
  %76 = call i32 @insert_one_record(%struct.shortlog* %64, i8* %66, i8* %75)
  %77 = call i32 @strbuf_release(%struct.strbuf* %5)
  %78 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_log_output_encoding(...) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @pretty_print_commit(%struct.pretty_print_context*, %struct.commit*, %struct.strbuf*) #2

declare dso_local i32 @insert_one_record(%struct.shortlog*, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
