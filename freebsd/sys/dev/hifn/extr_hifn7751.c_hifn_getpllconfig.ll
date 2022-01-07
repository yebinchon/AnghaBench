; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_getpllconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_getpllconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"hifn\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pllconfig\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ext66\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@HIFN_PLL_REF_SEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"PLL divisor\00", align 1
@HIFN_PLL_ND_SHIFT = common dso_local global i32 0, align 4
@HIFN_PLL_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @hifn_getpllconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_getpllconfig(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_unit(i32 %12)
  %14 = call i64 @resource_string_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %2
  store i32 33, i32* %8, align 4
  store i32 66, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %5, align 8
  %24 = load i32, i32* @HIFN_PLL_REF_SEL, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pci_get_device(i32 %27)
  switch i32 %28, label %30 [
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %21, %21
  store i32 20, i32* %8, align 4
  store i32 100, i32* %9, align 4
  br label %30

30:                                               ; preds = %21, %29
  br label %39

31:                                               ; preds = %17
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strtoul(i8* %40, i8** %11, i32 10)
  store i32 %41, i32* %6, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 66, i32* %6, align 4
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @checkmaxmin(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 266, %54
  %56 = and i32 %55, -2
  %57 = call i32 @checkmaxmin(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %56, i32 2, i32 12)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %58, 2
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @HIFN_PLL_ND_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 8
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load i32, i32* @HIFN_PLL_IS, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %52
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %4, align 8
  store i32 %72, i32* %73, align 4
  ret void
}

declare dso_local i64 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @checkmaxmin(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
