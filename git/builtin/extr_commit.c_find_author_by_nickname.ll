; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_find_author_by_nickname.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_find_author_by_nickname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.string_list = type { i32 }
%struct.rev_info = type { %struct.string_list* }
%struct.commit = type { i32 }
%struct.pretty_print_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"--author=%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@DATE_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%aN <%aE>\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"--author '%s' is not 'Name <email>' and matches no existing author\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_author_by_nickname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_author_by_nickname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rev_info, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.string_list, align 4
  %8 = alloca [20 x i8*], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.pretty_print_context, align 4
  store i8* %0, i8** %3, align 8
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.string_list* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @the_repository, align 4
  %14 = call i32 @repo_init_revisions(i32 %13, %struct.rev_info* %4, i32* null)
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [20 x i8*], [20 x i8*]* %8, i64 0, i64 %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [20 x i8*], [20 x i8*]* %8, i64 0, i64 %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [20 x i8*], [20 x i8*]* %8, i64 0, i64 %29
  store i8* %26, i8** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [20 x i8*], [20 x i8*]* %8, i64 0, i64 %33
  store i8* null, i8** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [20 x i8*], [20 x i8*]* %8, i64 0, i64 0
  %37 = call i32 @setup_revisions(i32 %35, i8** %36, %struct.rev_info* %4, i32* null)
  %38 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %4, i32 0, i32 0
  store %struct.string_list* %7, %struct.string_list** %38, align 8
  %39 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %4, i32 0, i32 0
  %40 = load %struct.string_list*, %struct.string_list** %39, align 8
  %41 = call i32 @read_mailmap(%struct.string_list* %40, i32* null)
  %42 = call i64 @prepare_revision_walk(%struct.rev_info* %4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 (i32, ...) @die(i32 %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = call %struct.commit* @get_revision(%struct.rev_info* %4)
  store %struct.commit* %48, %struct.commit** %5, align 8
  %49 = load %struct.commit*, %struct.commit** %5, align 8
  %50 = icmp ne %struct.commit* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = bitcast %struct.pretty_print_context* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 8, i1 false)
  %53 = load i32, i32* @DATE_NORMAL, align 4
  %54 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %10, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = call i32 @strbuf_release(%struct.strbuf* %6)
  %57 = load %struct.commit*, %struct.commit** %5, align 8
  %58 = call i32 @format_commit_message(%struct.commit* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.strbuf* %6, %struct.pretty_print_context* %10)
  %59 = call i32 @clear_mailmap(%struct.string_list* %7)
  %60 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %60, i8** %2, align 8
  br label %65

61:                                               ; preds = %47
  %62 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 (i32, ...) @die(i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #2

declare dso_local i32 @read_mailmap(%struct.string_list*, i32*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @clear_mailmap(%struct.string_list*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
