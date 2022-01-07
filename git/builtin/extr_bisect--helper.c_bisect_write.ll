; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_write.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.bisect_terms = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"refs/bisect/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/bisect/%s-%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Bad bisect_write argument: %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"couldn't get the oid of the rev '%s'\00", align 1
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"couldn't open the file '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"git bisect %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.bisect_terms*, i32)* @bisect_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_write(i8* %0, i8* %1, %struct.bisect_terms* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bisect_terms*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.commit*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bisect_terms* %2, %struct.bisect_terms** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.bisect_terms*, %struct.bisect_terms** %7, align 8
  %17 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i8* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %40

24:                                               ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.bisect_terms*, %struct.bisect_terms** %7, align 8
  %27 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @one_of(i8* %25, i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %33)
  br label %39

35:                                               ; preds = %24
  %36 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @error(i32 %36, i8* %37)
  store i32 %38, i32* %13, align 4
  br label %79

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @get_oid(i8* %41, %struct.object_id* %10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @error(i32 %45, i8* %46)
  store i32 %47, i32* %13, align 4
  br label %79

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %52 = call i64 @update_ref(i32* null, i32 %50, %struct.object_id* %10, i32* null, i32 0, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %13, align 4
  br label %79

55:                                               ; preds = %48
  %56 = call i32 (...) @git_path_bisect_log()
  %57 = call i32* @fopen(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %62 = call i32 (...) @git_path_bisect_log()
  %63 = call i32 @error_errno(i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %79

64:                                               ; preds = %55
  %65 = load i32, i32* @the_repository, align 4
  %66 = call %struct.commit* @lookup_commit_reference(i32 %65, %struct.object_id* %10)
  store %struct.commit* %66, %struct.commit** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.commit*, %struct.commit** %11, align 8
  %70 = call i32 @log_commit(i32* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %68, %struct.commit* %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %64
  %74 = load i32*, i32** %12, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @fprintf(i32* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %73, %64
  br label %79

79:                                               ; preds = %78, %60, %54, %44, %35
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @fclose(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = call i32 @strbuf_release(%struct.strbuf* %9)
  %87 = load i32, i32* %13, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i64 @one_of(i8*, i32, i8*, i32*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i64 @update_ref(i32*, i32, %struct.object_id*, i32*, i32, i32) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @git_path_bisect_log(...) #2

declare dso_local i32 @error_errno(i32, i32) #2

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #2

declare dso_local i32 @log_commit(i32*, i8*, i8*, %struct.commit*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
