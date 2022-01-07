; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_handle_path_include.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_handle_path_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.config_include_data = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"include.path\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not expand include path '%s'\00", align 1
@cf = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"relative config includes must come from files\00", align 1
@R_OK = common dso_local global i32 0, align 4
@MAX_INCLUDE_DEPTH = common dso_local global i64 0, align 8
@include_depth_advice = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"the command line\00", align 1
@git_config_include = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.config_include_data*)* @handle_path_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_path_include(i8* %0, %struct.config_include_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_include_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.config_include_data* %1, %struct.config_include_data** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @config_error_nonbool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %115

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @expand_user_path(i8* %16, i32 0)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i32, ...) @error(i32 %21, i8* %22)
  store i32 %23, i32* %3, align 4
  br label %115

24:                                               ; preds = %15
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @is_absolute_path(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %29
  %38 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (i32, ...) @error(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %115

40:                                               ; preds = %32
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @find_last_dir_sep(i8* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i32 @strbuf_add(%struct.strbuf* %7, i8* %50, i32 %59)
  br label %61

61:                                               ; preds = %47, %40
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %62)
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %61, %24
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @R_OK, align 4
  %69 = call i32 @access_or_die(i8* %67, i32 %68, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %66
  %72 = load %struct.config_include_data*, %struct.config_include_data** %5, align 8
  %73 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* @MAX_INCLUDE_DEPTH, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %71
  %79 = load i8*, i8** @include_depth_advice, align 8
  %80 = call i32 @_(i8* %79)
  %81 = load i64, i64* @MAX_INCLUDE_DEPTH, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %98

86:                                               ; preds = %78
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  br label %96

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i8* [ %94, %91 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %95 ]
  br label %98

98:                                               ; preds = %96, %85
  %99 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %85 ], [ %97, %96 ]
  %100 = call i32 @die(i32 %80, i64 %81, i8* %82, i8* %99)
  br label %101

101:                                              ; preds = %98, %71
  %102 = load i32, i32* @git_config_include, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = load %struct.config_include_data*, %struct.config_include_data** %5, align 8
  %105 = call i32 @git_config_from_file(i32 %102, i8* %103, %struct.config_include_data* %104)
  store i32 %105, i32* %6, align 4
  %106 = load %struct.config_include_data*, %struct.config_include_data** %5, align 8
  %107 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %101, %66
  %111 = call i32 @strbuf_release(%struct.strbuf* %7)
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %37, %20, %13
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @config_error_nonbool(i8*) #2

declare dso_local i8* @expand_user_path(i8*, i32) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @is_absolute_path(i8*) #2

declare dso_local i8* @find_last_dir_sep(i8*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @access_or_die(i8*, i32, i32) #2

declare dso_local i32 @die(i32, i64, i8*, i8*) #2

declare dso_local i32 @git_config_from_file(i32, i8*, %struct.config_include_data*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
