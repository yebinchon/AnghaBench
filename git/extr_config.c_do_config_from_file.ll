; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_do_config_from_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_do_config_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_options = type { i32 }
%struct.config_source = type { i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@CONFIG_ERROR_DIE = common dso_local global i32 0, align 4
@config_file_fgetc = common dso_local global i32 0, align 4
@config_file_ungetc = common dso_local global i32 0, align 4
@config_file_ftell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i32*, i8*, %struct.config_options*)* @do_config_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_config_from_file(i32 %0, i32 %1, i8* %2, i8* %3, i32* %4, i8* %5, %struct.config_options* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.config_options*, align 8
  %15 = alloca %struct.config_source, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.config_options* %6, %struct.config_options** %14, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @CONFIG_ERROR_DIE, align 4
  %27 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 6
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @config_file_fgetc, align 4
  %29 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @config_file_ungetc, align 4
  %31 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @config_file_ftell, align 4
  %33 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @flockfile(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.config_options*, %struct.config_options** %14, align 8
  %39 = call i32 @do_config_from(%struct.config_source* %15, i32 %36, i8* %37, %struct.config_options* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @funlockfile(i32* %40)
  %42 = load i32, i32* %16, align 4
  ret i32 %42
}

declare dso_local i32 @flockfile(i32*) #1

declare dso_local i32 @do_config_from(%struct.config_source*, i32, i8*, %struct.config_options*) #1

declare dso_local i32 @funlockfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
