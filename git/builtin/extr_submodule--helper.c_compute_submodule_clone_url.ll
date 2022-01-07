; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_compute_submodule_clone_url.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_compute_submodule_clone_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote.%s.url\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"could not look up configuration '%s'. Assuming this repository is its own authoritative upstream.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @compute_submodule_clone_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compute_submodule_clone_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i8* (...) @get_default_remote()
  store i8* %7, i8** %5, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @git_config_get_string(i32 %12, i8** %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @warning(i32 %16, i32 %18)
  %20 = call i8* (...) @xgetcwd()
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @relative_url(i8* %22, i8* %23, i32* null)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free(i8* %27)
  %29 = call i32 @strbuf_release(%struct.strbuf* %6)
  %30 = load i8*, i8** %4, align 8
  ret i8* %30
}

declare dso_local i8* @get_default_remote(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i64 @git_config_get_string(i32, i8**) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xgetcwd(...) #1

declare dso_local i8* @relative_url(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
