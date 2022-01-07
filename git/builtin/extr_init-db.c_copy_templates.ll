; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_init-db.c_copy_templates.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_init-db.c_copy_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.repository_format = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REPOSITORY_FORMAT_INIT = common dso_local global %struct.repository_format zeroinitializer, align 8
@TEMPLATE_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@init_db_template_dir = common dso_local global i8* null, align 8
@DEFAULT_GIT_TEMPLATE_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"templates not found in %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"not copying templates from '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @copy_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_templates(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.repository_format, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %12 = bitcast %struct.repository_format* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.repository_format* @REPOSITORY_FORMAT_INIT to i8*), i64 8, i1 false)
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i8* null, i8** %9, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @TEMPLATE_DIR_ENVIRONMENT, align 4
  %18 = call i8* @getenv(i32 %17)
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @init_db_template_dir, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %2, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @DEFAULT_GIT_TEMPLATE_DIR, align 4
  %29 = call i8* @system_path(i32 %28)
  store i8* %29, i8** %9, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @free(i8* %36)
  br label %88

38:                                               ; preds = %30
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %39)
  %41 = call i32 @strbuf_complete(%struct.strbuf* %4, i8 signext 47)
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @opendir(i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 (i32, i8*, ...) @warning(i32 %50, i8* %51)
  br label %82

53:                                               ; preds = %38
  %54 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @read_repository_format(%struct.repository_format* %6, i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @strbuf_setlen(%struct.strbuf* %4, i64 %58)
  %60 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = call i64 @verify_repository_format(%struct.repository_format* %6, %struct.strbuf* %7)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @warning(i32 %67, i8* %68, i32 %70)
  %72 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %79

73:                                               ; preds = %63, %53
  %74 = call i8* (...) @get_git_common_dir()
  %75 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %74)
  %76 = call i32 @strbuf_complete(%struct.strbuf* %3, i8 signext 47)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @copy_templates_1(%struct.strbuf* %3, %struct.strbuf* %4, i32* %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @closedir(i32* %80)
  br label %82

82:                                               ; preds = %79, %49
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  %85 = call i32 @strbuf_release(%struct.strbuf* %3)
  %86 = call i32 @strbuf_release(%struct.strbuf* %4)
  %87 = call i32 @clear_repository_format(%struct.repository_format* %6)
  br label %88

88:                                               ; preds = %82, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getenv(i32) #2

declare dso_local i8* @system_path(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #2

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @warning(i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @read_repository_format(%struct.repository_format*, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i64 @verify_repository_format(%struct.repository_format*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @get_git_common_dir(...) #2

declare dso_local i32 @copy_templates_1(%struct.strbuf*, %struct.strbuf*, i32*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @clear_repository_format(%struct.repository_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
