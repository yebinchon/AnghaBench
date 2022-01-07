; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail_stgit_series.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail_stgit_series.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.strbuf = type { i8* }
%struct.am_state = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [51 x i8] c"Only one StGIT patch series can be applied at once\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"could not open '%s' for reading\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stgit_patch_to_mail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*, i8**, i32)* @split_mail_stgit_series to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_mail_stgit_series(%struct.am_state* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.am_state*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.argv_array, align 4
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i32, align 4
  store %struct.am_state* %0, %struct.am_state** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.argv_array* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @error(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %20
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @xstrdup(i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @dirname(i8* %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @error_errno(i32 %40, i8* %42)
  store i32 %43, i32* %4, align 4
  br label %77

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %57, %56, %44
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @strbuf_getline_lf(%struct.strbuf* %12, i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %45

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @mkpath(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %60)
  %62 = call i32 @argv_array_push(%struct.argv_array* %11, i32 %61)
  br label %45

63:                                               ; preds = %45
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = call i32 @strbuf_release(%struct.strbuf* %12)
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* @stgit_patch_to_mail, align 4
  %70 = load %struct.am_state*, %struct.am_state** %5, align 8
  %71 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @split_mail_conv(i32 %69, %struct.am_state* %70, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = call i32 @argv_array_clear(%struct.argv_array* %11)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %63, %39, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i32) #2

declare dso_local i32 @mkpath(i8*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @split_mail_conv(i32, %struct.am_state*, i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
