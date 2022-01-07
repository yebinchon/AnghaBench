; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_try_merge_strategy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_try_merge_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.commit = type { i32 }
%struct.merge_options = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REFRESH_QUIET = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to write index.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"subtree\00", align 1
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Not handling anything other than two heads merge.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@option_renormalize = common dso_local global i32 0, align 4
@show_progress = common dso_local global i32 0, align 4
@xopts_nr = common dso_local global i32 0, align 4
@xopts = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Unknown option for merge-recursive: -X%s\00", align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"unable to write %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.commit_list*, %struct.commit_list*, %struct.commit*)* @try_merge_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_merge_strategy(i8* %0, %struct.commit_list* %1, %struct.commit_list* %2, %struct.commit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lock_file, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit_list*, align 8
  %16 = alloca %struct.merge_options, align 8
  %17 = alloca %struct.commit_list*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.commit_list* %1, %struct.commit_list** %7, align 8
  store %struct.commit_list* %2, %struct.commit_list** %8, align 8
  store %struct.commit* %3, %struct.commit** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %18 = load i32, i32* @REFRESH_QUIET, align 4
  %19 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %20 = call i64 @refresh_and_write_cache(i32 %18, i32 %19, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @error(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %146

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %137, label %33

33:                                               ; preds = %29, %25
  %34 = bitcast %struct.lock_file* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store %struct.commit_list* null, %struct.commit_list** %15, align 8
  %35 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 1
  %37 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  %38 = icmp ne %struct.commit_list* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 @error(i32 %40)
  store i32 2, i32* %5, align 4
  br label %146

42:                                               ; preds = %33
  %43 = load i32, i32* @the_repository, align 4
  %44 = call i32 @init_merge_options(%struct.merge_options* %16, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %49, align 8
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* @option_renormalize, align 4
  %52 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @show_progress, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @isatty(i32 2)
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @show_progress, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %83, %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @xopts_nr, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i32*, i32** @xopts, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @parse_merge_opt(%struct.merge_options* %16, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i32*, i32** @xopts, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @die(i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 2
  store i8* %87, i8** %88, align 8
  %89 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %90 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_2__* @merge_remote_util(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 3
  store i32 %94, i32* %95, align 8
  %96 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %96, %struct.commit_list** %17, align 8
  br label %97

97:                                               ; preds = %105, %86
  %98 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %99 = icmp ne %struct.commit_list* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %102 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @commit_list_insert(i32 %103, %struct.commit_list** %15)
  br label %105

105:                                              ; preds = %100
  %106 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %107 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %106, i32 0, i32 1
  %108 = load %struct.commit_list*, %struct.commit_list** %107, align 8
  store %struct.commit_list* %108, %struct.commit_list** %17, align 8
  br label %97

109:                                              ; preds = %97
  %110 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %111 = call i32 @hold_locked_index(%struct.lock_file* %11, i32 %110)
  %112 = load %struct.commit*, %struct.commit** %9, align 8
  %113 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %114 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %117 = call i32 @merge_recursive(%struct.merge_options* %16, %struct.commit* %112, i32 %115, %struct.commit_list* %116, %struct.commit** %14)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = call i32 @exit(i32 128) #4
  unreachable

122:                                              ; preds = %109
  %123 = load i32, i32* @COMMIT_LOCK, align 4
  %124 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %125 = or i32 %123, %124
  %126 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %11, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %130 = call i32 (...) @get_index_file()
  %131 = call i32 @die(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %122
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 0, i32 1
  store i32 %136, i32* %5, align 4
  br label %146

137:                                              ; preds = %29
  %138 = load i32, i32* @the_repository, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = load i32, i32* @xopts_nr, align 4
  %141 = load i32*, i32** @xopts, align 8
  %142 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %145 = call i32 @try_merge_command(i32 %138, i8* %139, i32 %140, i32* %141, %struct.commit_list* %142, i8* %143, %struct.commit_list* %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %137, %132, %39, %22
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i64 @refresh_and_write_cache(i32, i32, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_merge_options(%struct.merge_options*, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i64 @parse_merge_opt(%struct.merge_options*, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local %struct.TYPE_2__* @merge_remote_util(i32) #1

declare dso_local i32 @commit_list_insert(i32, %struct.commit_list**) #1

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #1

declare dso_local i32 @merge_recursive(%struct.merge_options*, %struct.commit*, i32, %struct.commit_list*, %struct.commit**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #1

declare dso_local i32 @get_index_file(...) #1

declare dso_local i32 @try_merge_command(i32, i8*, i32, i32*, %struct.commit_list*, i8*, %struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
