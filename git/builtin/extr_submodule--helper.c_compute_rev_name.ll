; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_compute_rev_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_compute_rev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i8*, i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@compute_rev_name.describe_bare = internal global [1 x i8*] zeroinitializer, align 8
@compute_rev_name.describe_tags = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@compute_rev_name.describe_contains = internal global [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"--contains\00", align 1
@compute_rev_name.describe_all_always = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--always\00", align 1
@compute_rev_name.describe_argv = internal global [5 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @compute_rev_name.describe_bare, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @compute_rev_name.describe_tags, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @compute_rev_name.describe_contains, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @compute_rev_name.describe_all_always, i32 0, i32 0), i8** null], align 16
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"describe\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @compute_rev_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compute_rev_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8***, align 8
  %8 = alloca %struct.child_process, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8*** getelementptr inbounds ([5 x i8**], [5 x i8**]* @compute_rev_name.describe_argv, i64 0, i64 0), i8**** %7, align 8
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i8***, i8**** %7, align 8
  %12 = load i8**, i8*** %11, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 4
  %17 = call i32 @prepare_submodule_repo_env(i32* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %23 = call i32 @argv_array_push(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %25 = load i8***, i8**** %7, align 8
  %26 = load i8**, i8*** %25, align 8
  %27 = call i32 @argv_array_pushv(i32* %24, i8** %26)
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @argv_array_push(i32* %28, i8* %29)
  %31 = call i32 @capture_command(%struct.child_process* %8, %struct.strbuf* %6, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %14
  %34 = call i32 @strbuf_strip_suffix(%struct.strbuf* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %35, i8** %3, align 8
  br label %42

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load i8***, i8**** %7, align 8
  %39 = getelementptr inbounds i8**, i8*** %38, i32 1
  store i8*** %39, i8**** %7, align 8
  br label %10

40:                                               ; preds = %10
  %41 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushv(i32*, i8**) #2

declare dso_local i32 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
