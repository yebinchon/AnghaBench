; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_get_color.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_get_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_color_slot = common dso_local global i8* null, align 8
@get_color_found = common dso_local global i64 0, align 8
@parsed_color = common dso_local global i8* null, align 8
@git_get_color_config = common dso_local global i32 0, align 4
@given_config_source = common dso_local global i32 0, align 4
@config_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to parse default color value\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @get_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_color(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** @get_color_slot, align 8
  store i64 0, i64* @get_color_found, align 8
  %6 = load i8*, i8** @parsed_color, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %7, align 1
  %8 = load i32, i32* @git_get_color_config, align 4
  %9 = call i32 @config_with_options(i32 %8, i32* null, i32* @given_config_source, i32* @config_options)
  %10 = load i64, i64* @get_color_found, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @parsed_color, align 8
  %18 = call i64 @color_parse(i8* %16, i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @die(i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %12, %2
  %25 = load i8*, i8** @parsed_color, align 8
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fputs(i8* %25, i32 %26)
  ret void
}

declare dso_local i32 @config_with_options(i32, i32*, i32*, i32*) #1

declare dso_local i64 @color_parse(i8*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
