; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/callout_free/extr_callout_free.c_callout_free_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/callout_free/extr_callout_free.c_callout_free_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@callout_free_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"callout_free\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@callout_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"callout_free_func = %p\0A\00", align 1
@callout_free_func = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"callout_free_arg = %p\0A\00", align 1
@callout_free_arg = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @callout_free_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callout_free_load(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %20
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* @callout_free_mutex, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  %12 = call i32 @callout_init_mtx(i32* @callout_free, i32* @callout_free_mutex, i32 0)
  %13 = load i32*, i32** @callout_free_func, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* @callout_free_arg)
  %16 = load i32, i32* @hz, align 4
  %17 = sdiv i32 %16, 10
  %18 = load i32*, i32** @callout_free_func, align 8
  %19 = call i32 @callout_reset(i32* @callout_free, i32 %17, i32* %18, i32* @callout_free_arg)
  store i32 0, i32* %7, align 4
  br label %23

20:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %20, %9
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
