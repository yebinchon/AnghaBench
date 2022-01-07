; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_init_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_init_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"No url found for submodule path '%s' in .gitmodules\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"submodule.%s.active\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"submodule.%s.url\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to register url for submodule path '%s'\00", align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Submodule '%s' (%s) registered for path '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"submodule.%s.update\00", align 1
@SM_UPDATE_UNSPECIFIED = common dso_local global i64 0, align 8
@SM_UPDATE_COMMAND = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [59 x i8] c"warning: command update mode suggested for submodule '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Failed to register update mode for submodule path '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @init_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_submodule(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.submodule*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @get_submodule_displaypath(i8* %14, i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* @the_repository, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.submodule* @submodule_from_path(i32 %17, i32* @null_oid, i8* %18)
  store %struct.submodule* %19, %struct.submodule** %7, align 8
  %20 = load %struct.submodule*, %struct.submodule** %7, align 8
  %21 = icmp ne %struct.submodule* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @die(i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @the_repository, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @is_submodule_active(i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.submodule*, %struct.submodule** %7, align 8
  %33 = getelementptr inbounds %struct.submodule, %struct.submodule* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @git_config_set_gently(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @strbuf_reset(%struct.strbuf* %8)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.submodule*, %struct.submodule** %7, align 8
  %42 = getelementptr inbounds %struct.submodule, %struct.submodule* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @git_config_get_string(i32 %46, i8** %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %40
  %50 = load %struct.submodule*, %struct.submodule** %7, align 8
  %51 = getelementptr inbounds %struct.submodule, %struct.submodule* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @die(i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.submodule*, %struct.submodule** %7, align 8
  %60 = getelementptr inbounds %struct.submodule, %struct.submodule* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @xstrdup(i8* %61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @starts_with_dot_dot_slash(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @starts_with_dot_slash(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %58
  %71 = load i8*, i8** %10, align 8
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @compute_submodule_clone_url(i8* %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i64 @git_config_set_gently(i32 %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @die(i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @OPT_QUIET, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @stderr, align 4
  %93 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.submodule*, %struct.submodule** %7, align 8
  %95 = getelementptr inbounds %struct.submodule, %struct.submodule* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %92, i8* %93, i8* %96, i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %91, %86
  br label %101

101:                                              ; preds = %100, %40
  %102 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %103 = load %struct.submodule*, %struct.submodule** %7, align 8
  %104 = getelementptr inbounds %struct.submodule, %struct.submodule* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @git_config_get_string(i32 %108, i8** %9)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %149

111:                                              ; preds = %101
  %112 = load %struct.submodule*, %struct.submodule** %7, align 8
  %113 = getelementptr inbounds %struct.submodule, %struct.submodule* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SM_UPDATE_UNSPECIFIED, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %111
  %119 = load %struct.submodule*, %struct.submodule** %7, align 8
  %120 = getelementptr inbounds %struct.submodule, %struct.submodule* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SM_UPDATE_COMMAND, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %118
  %126 = load i32, i32* @stderr, align 4
  %127 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.submodule*, %struct.submodule** %7, align 8
  %129 = getelementptr inbounds %struct.submodule, %struct.submodule* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %126, i8* %127, i8* %130)
  %132 = call i8* @xstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %132, i8** %9, align 8
  br label %138

133:                                              ; preds = %118
  %134 = load %struct.submodule*, %struct.submodule** %7, align 8
  %135 = getelementptr inbounds %struct.submodule, %struct.submodule* %134, i32 0, i32 2
  %136 = call i8* @submodule_strategy_to_string(%struct.TYPE_2__* %135)
  %137 = call i8* @xstrdup(i8* %136)
  store i8* %137, i8** %9, align 8
  br label %138

138:                                              ; preds = %133, %125
  %139 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = call i64 @git_config_set_gently(i32 %140, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @die(i8* %145, i8* %146)
  br label %148

148:                                              ; preds = %144, %138
  br label %149

149:                                              ; preds = %148, %111, %101
  %150 = call i32 @strbuf_release(%struct.strbuf* %8)
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @free(i8* %155)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @get_submodule_displaypath(i8*, i8*) #2

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @is_submodule_active(i32, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @git_config_set_gently(i32, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @git_config_get_string(i32, i8**) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @starts_with_dot_dot_slash(i8*) #2

declare dso_local i64 @starts_with_dot_slash(i8*) #2

declare dso_local i8* @compute_submodule_clone_url(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @submodule_strategy_to_string(%struct.TYPE_2__*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
