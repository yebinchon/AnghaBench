; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_prepare_possible_alternates.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_prepare_possible_alternates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_alternate_setup = type { i8*, i32, %struct.string_list* }
%struct.string_list = type { i32 }

@SUBMODULE_ALTERNATE_SETUP_INIT = common dso_local global %struct.submodule_alternate_setup zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"submodule.alternateLocation\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"submodule.alternateErrorStrategy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@SUBMODULE_ALTERNATE_ERROR_DIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@SUBMODULE_ALTERNATE_ERROR_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@SUBMODULE_ALTERNATE_ERROR_IGNORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"Value '%s' for submodule.alternateErrorStrategy is not recognized\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"superproject\00", align 1
@add_possible_reference_from_superproject = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Value '%s' for submodule.alternateLocation is not recognized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.string_list*)* @prepare_possible_alternates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_possible_alternates(i8* %0, %struct.string_list* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.submodule_alternate_setup, align 8
  store i8* %0, i8** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = bitcast %struct.submodule_alternate_setup* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.submodule_alternate_setup* @SUBMODULE_ALTERNATE_SETUP_INIT to i8*), i64 24, i1 false)
  %9 = call i32 @git_config_get_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %5)
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = call i32 @git_config_get_string(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.string_list*, %struct.string_list** %4, align 8
  %23 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %7, i32 0, i32 2
  store %struct.string_list* %22, %struct.string_list** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @SUBMODULE_ALTERNATE_ERROR_DIE, align 4
  %29 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  br label %50

30:                                               ; preds = %19
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @SUBMODULE_ALTERNATE_ERROR_INFO, align 4
  %36 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  br label %49

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @SUBMODULE_ALTERNATE_ERROR_IGNORE, align 4
  %43 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %7, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  br label %48

44:                                               ; preds = %37
  %45 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @die(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @add_possible_reference_from_superproject, align 4
  %56 = call i32 @foreach_alt_odb(i32 %55, %struct.submodule_alternate_setup* %7)
  br label %67

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %66

62:                                               ; preds = %57
  %63 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @die(i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %67, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config_get_string(i8*, i8**) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @foreach_alt_odb(i32, %struct.submodule_alternate_setup*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
