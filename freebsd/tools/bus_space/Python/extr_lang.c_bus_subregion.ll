; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/Python/extr_lang.c_bus_subregion.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/Python/extr_lang.c_bus_subregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ill\00", align 1
@PyExc_IOError = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @bus_subregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bus_subregion(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @PyArg_ParseTuple(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8, i64* %6, i64* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @bs_subregion(i32 %15, i64 %16, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @PyExc_IOError, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @PyErr_SetString(i32 %22, i32 %24)
  store i32* null, i32** %3, align 8
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  %28 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %26, %21, %13
  %30 = load i32*, i32** %3, align 8
  ret i32* %30
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32*, i64*, i64*) #1

declare dso_local i32 @bs_subregion(i32, i64, i64) #1

declare dso_local i32 @PyErr_SetString(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
