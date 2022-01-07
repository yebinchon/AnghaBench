; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_read_early_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_read_early_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.config_options = type { i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_early_config(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_options, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.config_options* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = getelementptr inbounds %struct.config_options, %struct.config_options* %5, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = call i64 (...) @have_git_dir()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = call i32 (...) @get_git_common_dir()
  %16 = getelementptr inbounds %struct.config_options, %struct.config_options* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = call i32 (...) @get_git_dir()
  %18 = getelementptr inbounds %struct.config_options, %struct.config_options* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  br label %30

19:                                               ; preds = %2
  %20 = call i32 @discover_git_directory(%struct.strbuf* %6, %struct.strbuf* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.config_options, %struct.config_options* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.config_options, %struct.config_options* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %19
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %3, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @config_with_options(i32 %31, i8* %32, i32* null, %struct.config_options* %5)
  %34 = call i32 @strbuf_release(%struct.strbuf* %6)
  %35 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @have_git_dir(...) #2

declare dso_local i32 @get_git_common_dir(...) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @discover_git_directory(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @config_with_options(i32, i8*, i32*, %struct.config_options*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
