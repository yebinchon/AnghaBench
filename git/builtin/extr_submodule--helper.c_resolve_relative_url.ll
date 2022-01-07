; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_resolve_relative_url.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_resolve_relative_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"resolve-relative-url only accepts one or two arguments\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"remote.%s.url\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @resolve_relative_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_relative_url(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = call i8* (...) @get_default_remote()
  store i8* %13, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17, %3
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @git_config_get_string(i32 %31, i8** %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i8* (...) @xgetcwd()
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %34, %22
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @relative_url(i8* %44, i8* %45, i8* %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @puts(i8* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @free(i8* %52)
  ret i32 0
}

declare dso_local i8* @get_default_remote(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @git_config_get_string(i32, i8**) #1

declare dso_local i8* @xgetcwd(...) #1

declare dso_local i8* @relative_url(i8*, i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
