; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_do_config_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_do_config_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_source = type { i32, %struct.config_source*, i32, i32, i64 }
%struct.config_options = type { i32 }

@cf = common dso_local global %struct.config_source* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_source*, i32, i8*, %struct.config_options*)* @do_config_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_config_from(%struct.config_source* %0, i32 %1, i8* %2, %struct.config_options* %3) #0 {
  %5 = alloca %struct.config_source*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_options*, align 8
  %9 = alloca i32, align 4
  store %struct.config_source* %0, %struct.config_source** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.config_options* %3, %struct.config_options** %8, align 8
  %10 = load %struct.config_source*, %struct.config_source** @cf, align 8
  %11 = load %struct.config_source*, %struct.config_source** %5, align 8
  %12 = getelementptr inbounds %struct.config_source, %struct.config_source* %11, i32 0, i32 1
  store %struct.config_source* %10, %struct.config_source** %12, align 8
  %13 = load %struct.config_source*, %struct.config_source** %5, align 8
  %14 = getelementptr inbounds %struct.config_source, %struct.config_source* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.config_source*, %struct.config_source** %5, align 8
  %16 = getelementptr inbounds %struct.config_source, %struct.config_source* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.config_source*, %struct.config_source** %5, align 8
  %18 = getelementptr inbounds %struct.config_source, %struct.config_source* %17, i32 0, i32 3
  %19 = call i32 @strbuf_init(i32* %18, i32 1024)
  %20 = load %struct.config_source*, %struct.config_source** %5, align 8
  %21 = getelementptr inbounds %struct.config_source, %struct.config_source* %20, i32 0, i32 2
  %22 = call i32 @strbuf_init(i32* %21, i32 1024)
  %23 = load %struct.config_source*, %struct.config_source** %5, align 8
  store %struct.config_source* %23, %struct.config_source** @cf, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.config_options*, %struct.config_options** %8, align 8
  %27 = call i32 @git_parse_source(i32 %24, i8* %25, %struct.config_options* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.config_source*, %struct.config_source** %5, align 8
  %29 = getelementptr inbounds %struct.config_source, %struct.config_source* %28, i32 0, i32 3
  %30 = call i32 @strbuf_release(i32* %29)
  %31 = load %struct.config_source*, %struct.config_source** %5, align 8
  %32 = getelementptr inbounds %struct.config_source, %struct.config_source* %31, i32 0, i32 2
  %33 = call i32 @strbuf_release(i32* %32)
  %34 = load %struct.config_source*, %struct.config_source** %5, align 8
  %35 = getelementptr inbounds %struct.config_source, %struct.config_source* %34, i32 0, i32 1
  %36 = load %struct.config_source*, %struct.config_source** %35, align 8
  store %struct.config_source* %36, %struct.config_source** @cf, align 8
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @git_parse_source(i32, i8*, %struct.config_options*) #1

declare dso_local i32 @strbuf_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
