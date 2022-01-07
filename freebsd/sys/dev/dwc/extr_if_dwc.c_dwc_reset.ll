; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"snps,reset-gpio\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"snps,reset-delays-us\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Wrong property for snps,reset-delays-us\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Can't find gpio controller for phy reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Can't map gpio for phy reset\0A\00", align 1
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"snps,reset-active-low\00", align 1
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dwc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_reset(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ofw_bus_get_node(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %16 = call i64 @OF_getencprop(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %15, i32 16)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %22 = call i64 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %21, i32 12)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @device_printf(i32* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %19
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = call i32 @OF_node_from_xref(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = call i32* @OF_device_from_xref(i32 %33)
  store i32* %34, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @device_printf(i32* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %94

40:                                               ; preds = %28
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %45 = call i64 @nitems(i32* %44)
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i64 @GPIO_MAP_GPIOS(i32* %41, i32 %42, i32 %43, i64 %46, i32* %48, i32* %9, i32* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @device_printf(i32* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %94

55:                                               ; preds = %40
  %56 = load i32, i32* @GPIO_PIN_LOW, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @OF_hasprop(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @GPIO_PIN_HIGH, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %66 = call i32 @GPIO_PIN_SETFLAGS(i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @GPIO_PIN_SET(i32* %67, i32 %68, i32 %69)
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 5
  %74 = call i32 @DELAY(i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @GPIO_PIN_SET(i32* %75, i32 %76, i32 %80)
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 5
  %85 = call i32 @DELAY(i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @GPIO_PIN_SET(i32* %86, i32 %87, i32 %88)
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 5
  %93 = call i32 @DELAY(i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %62, %51, %36, %24, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i64 @GPIO_MAP_GPIOS(i32*, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
