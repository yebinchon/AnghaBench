; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_stdin_cacheinfo_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_stdin_cacheinfo_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32 }
%struct.option = type { i32*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"option '%s' must be the last argument\00", align 1
@allow_remove = common dso_local global i32 0, align 4
@allow_replace = common dso_local global i32 0, align 4
@allow_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)* @stdin_cacheinfo_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdin_cacheinfo_callback(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_opt_ctx_t*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.option*, %struct.option** %7, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @BUG_ON_OPT_NEG(i32 %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @BUG_ON_OPT_ARG(i8* %16)
  %18 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %19 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.option*, %struct.option** %7, align 8
  %24 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %4
  store i32 1, i32* @allow_remove, align 4
  store i32 1, i32* @allow_replace, align 4
  store i32 1, i32* @allow_add, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @read_index_info(i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @BUG_ON_OPT_ARG(i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @read_index_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
