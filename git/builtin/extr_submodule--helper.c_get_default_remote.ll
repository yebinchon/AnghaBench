; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_get_default_remote.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_get_default_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"No such ref: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Expecting a full ref name, got %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_default_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_default_remote() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @die(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %1, align 8
  br label %41

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @skip_prefix(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @die(i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @git_config_get_string(i32 %31, i8** %2)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %35, i8** %3, align 8
  br label %38

36:                                               ; preds = %27
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = call i32 @strbuf_release(%struct.strbuf* %4)
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** %1, align 8
  br label %41

41:                                               ; preds = %38, %17
  %42 = load i8*, i8** %1, align 8
  ret i8* %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @git_config_get_string(i32, i8**) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
