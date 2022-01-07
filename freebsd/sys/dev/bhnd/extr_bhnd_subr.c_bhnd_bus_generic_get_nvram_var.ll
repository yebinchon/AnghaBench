; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_get_nvram_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_get_nvram_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIANT_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bhnd_nvram\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_bus_generic_get_nvram_var(i32* %0, i32* %1, i8* %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @GIANT_REQUIRED, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @device_find_child(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %18, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i32*, i32** %14, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @BHND_NVRAM_GETVAR(i32* %21, i8* %22, i8* %23, i64* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @device_get_parent(i32* %28)
  store i32* %29, i32** %15, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ENODEV, align 4
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @device_get_parent(i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @BHND_BUS_GET_NVRAM_VAR(i32* %35, i32* %36, i8* %37, i8* %38, i64* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %31, %20
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32* @device_find_child(i32*, i8*, i32) #1

declare dso_local i32 @BHND_NVRAM_GETVAR(i32*, i8*, i8*, i64*, i32) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @BHND_BUS_GET_NVRAM_VAR(i32*, i32*, i8*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
