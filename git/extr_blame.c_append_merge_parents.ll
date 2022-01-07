; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_append_merge_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_append_merge_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"cannot open '%s' for reading\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown line in '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.commit_list**)* @append_merge_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_merge_parents(%struct.repository* %0, %struct.commit_list** %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.commit_list**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %4, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.repository*, %struct.repository** %3, align 8
  %10 = call i32 @git_path_merge_head(%struct.repository* %9)
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %49

20:                                               ; preds = %15
  %21 = load %struct.repository*, %struct.repository** %3, align 8
  %22 = call i32 @git_path_merge_head(%struct.repository* %21)
  %23 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @strbuf_getwholeline_fd(%struct.strbuf* %6, i32 %26, i8 signext 10)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @get_oid_hex(i32 %32, %struct.object_id* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.repository*, %struct.repository** %3, align 8
  %37 = call i32 @git_path_merge_head(%struct.repository* %36)
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.repository*, %struct.repository** %3, align 8
  %43 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %44 = call %struct.commit_list** @append_parent(%struct.repository* %42, %struct.commit_list** %43, %struct.object_id* %7)
  store %struct.commit_list** %44, %struct.commit_list*** %4, align 8
  br label %25

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @close(i32 %46)
  %48 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %49

49:                                               ; preds = %45, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @git_path_merge_head(%struct.repository*) #2

declare dso_local i32 @die(i8*, i32, ...) #2

declare dso_local i32 @strbuf_getwholeline_fd(%struct.strbuf*, i32, i8 signext) #2

declare dso_local i64 @get_oid_hex(i32, %struct.object_id*) #2

declare dso_local %struct.commit_list** @append_parent(%struct.repository*, %struct.commit_list**, %struct.object_id*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
