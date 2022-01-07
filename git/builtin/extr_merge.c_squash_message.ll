; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_squash_message.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_squash_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.commit_list = type { %struct.TYPE_3__*, %struct.commit_list* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.rev_info = type { i32, i32, i32, i32 }
%struct.pretty_print_context = type { i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Squash commit -- not updating HEAD\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4
@CMIT_FMT_MEDIUM = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Squashed commit of the following:\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"commit %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit_list*)* @squash_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @squash_message(%struct.commit* %0, %struct.commit_list* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.rev_info, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.pretty_print_context, align 4
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit_list* %1, %struct.commit_list** %4, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = bitcast %struct.pretty_print_context* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 16, i1 false)
  %11 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @printf(i8* %11)
  %13 = load i32, i32* @the_repository, align 4
  %14 = call i32 @repo_init_revisions(i32 %13, %struct.rev_info* %5, i32* null)
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @CMIT_FMT_MEDIUM, align 4
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @UNINTERESTING, align 4
  %19 = load %struct.commit*, %struct.commit** %3, align 8
  %20 = getelementptr inbounds %struct.commit, %struct.commit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load %struct.commit*, %struct.commit** %3, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 0
  %26 = call i32 @add_pending_object(%struct.rev_info* %5, %struct.TYPE_4__* %25, i32* null)
  %27 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %27, %struct.commit_list** %7, align 8
  br label %28

28:                                               ; preds = %37, %2
  %29 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %30 = icmp ne %struct.commit_list* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @add_pending_object(%struct.rev_info* %5, %struct.TYPE_4__* %35, i32* null)
  br label %37

37:                                               ; preds = %31
  %38 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %39 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %38, i32 0, i32 1
  %40 = load %struct.commit_list*, %struct.commit_list** %39, align 8
  store %struct.commit_list* %40, %struct.commit_list** %7, align 8
  br label %28

41:                                               ; preds = %28
  %42 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %5, i32* null)
  %43 = call i64 @prepare_revision_walk(%struct.rev_info* %5)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @die(i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %8, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %62, %48
  %60 = call %struct.commit* @get_revision(%struct.rev_info* %5)
  store %struct.commit* %60, %struct.commit** %3, align 8
  %61 = icmp ne %struct.commit* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 10)
  %64 = load %struct.commit*, %struct.commit** %3, align 8
  %65 = getelementptr inbounds %struct.commit, %struct.commit* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @oid_to_hex(i32* %66)
  %68 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.commit*, %struct.commit** %3, align 8
  %70 = call i32 @pretty_print_commit(%struct.pretty_print_context* %8, %struct.commit* %69, %struct.strbuf* %6)
  br label %59

71:                                               ; preds = %59
  %72 = load i32, i32* @the_repository, align 4
  %73 = call i32 @git_path_squash_msg(i32 %72)
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_file_buf(i32 %73, i32 %75, i32 %77)
  %79 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #2

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @pretty_print_commit(%struct.pretty_print_context*, %struct.commit*, %struct.strbuf*) #2

declare dso_local i32 @write_file_buf(i32, i32, i32) #2

declare dso_local i32 @git_path_squash_msg(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
