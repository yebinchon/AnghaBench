; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_from_mem.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_from_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_options = type { i32 }
%struct.config_source = type { i32, i8*, i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64, i64 }

@CONFIG_ERROR_ERROR = common dso_local global i32 0, align 4
@config_buf_fgetc = common dso_local global i32 0, align 4
@config_buf_ungetc = common dso_local global i32 0, align 4
@config_buf_ftell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_from_mem(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4, i8* %5, %struct.config_options* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.config_options*, align 8
  %15 = alloca %struct.config_source, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.config_options* %6, %struct.config_options** %14, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i64, i64* %12, align 8
  %21 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @CONFIG_ERROR_ERROR, align 4
  %33 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @config_buf_fgetc, align 4
  %35 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @config_buf_ungetc, align 4
  %37 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @config_buf_ftell, align 4
  %39 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.config_options*, %struct.config_options** %14, align 8
  %43 = call i32 @do_config_from(%struct.config_source* %15, i32 %40, i8* %41, %struct.config_options* %42)
  ret i32 %43
}

declare dso_local i32 @do_config_from(%struct.config_source*, i32, i8*, %struct.config_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
