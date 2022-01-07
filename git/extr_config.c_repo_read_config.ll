; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_repo_read_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_repo_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i64, i32, i32 }
%struct.config_options = type { i32, i32, i32, i32 }

@config_set_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"unknown error occurred while reading the configuration files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*)* @repo_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repo_read_config(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.config_options, align 4
  store %struct.repository* %0, %struct.repository** %2, align 8
  %4 = bitcast %struct.config_options* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.config_options, %struct.config_options* %3, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.repository*, %struct.repository** %2, align 8
  %7 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.config_options, %struct.config_options* %3, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load %struct.repository*, %struct.repository** %2, align 8
  %11 = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.config_options, %struct.config_options* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.repository*, %struct.repository** %2, align 8
  %15 = getelementptr inbounds %struct.repository, %struct.repository* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = call i64 @xcalloc(i32 1, i32 4)
  %20 = load %struct.repository*, %struct.repository** %2, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.repository*, %struct.repository** %2, align 8
  %24 = getelementptr inbounds %struct.repository, %struct.repository* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @git_configset_clear(i64 %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.repository*, %struct.repository** %2, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @git_configset_init(i64 %30)
  %32 = load i32, i32* @config_set_callback, align 4
  %33 = load %struct.repository*, %struct.repository** %2, align 8
  %34 = getelementptr inbounds %struct.repository, %struct.repository* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @config_with_options(i32 %32, i64 %35, i32* null, %struct.config_options* %3)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @die(i32 %39)
  br label %41

41:                                               ; preds = %38, %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @xcalloc(i32, i32) #2

declare dso_local i32 @git_configset_clear(i64) #2

declare dso_local i32 @git_configset_init(i64) #2

declare dso_local i64 @config_with_options(i32, i64, i32*, %struct.config_options*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
