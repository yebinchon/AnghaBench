; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_find_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_find_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@SIS_VENDORID = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @sis_find_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sis_find_bridge(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %11, align 8
  %14 = call i32* @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %75

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @devclass_get_devices(i32* %18, i32*** %5, i32* %6)
  store i32 0, i32* %12, align 4
  %20 = load i32**, i32*** %5, align 8
  store i32** %20, i32*** %9, align 8
  br label %21

21:                                               ; preds = %64, %17
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load i32**, i32*** %9, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @device_get_children(i32* %27, i32*** %7, i32* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %64

31:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %32 = load i32**, i32*** %7, align 8
  store i32** %32, i32*** %10, align 8
  br label %33

33:                                               ; preds = %55, %31
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i32**, i32*** %10, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @pci_get_vendor(i32* %39)
  %41 = load i64, i64* @SIS_VENDORID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32**, i32*** %10, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @pci_get_device(i32* %45)
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32**, i32*** %10, align 8
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %11, align 8
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32, i32* @M_TEMP, align 4
  %53 = call i32 @free(i32** %51, i32 %52)
  br label %70

54:                                               ; preds = %43, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load i32**, i32*** %10, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i32 1
  store i32** %59, i32*** %10, align 8
  br label %33

60:                                               ; preds = %33
  %61 = load i32**, i32*** %7, align 8
  %62 = load i32, i32* @M_TEMP, align 4
  %63 = call i32 @free(i32** %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %30
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = load i32**, i32*** %9, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i32 1
  store i32** %68, i32*** %9, align 8
  br label %21

69:                                               ; preds = %21
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32**, i32*** %5, align 8
  %72 = load i32, i32* @M_TEMP, align 4
  %73 = call i32 @free(i32** %71, i32 %72)
  %74 = load i32*, i32** %11, align 8
  store i32* %74, i32** %2, align 8
  br label %75

75:                                               ; preds = %70, %16
  %76 = load i32*, i32** %2, align 8
  ret i32* %76
}

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_devices(i32*, i32***, i32*) #1

declare dso_local i64 @device_get_children(i32*, i32***, i32*) #1

declare dso_local i64 @pci_get_vendor(i32*) #1

declare dso_local i32 @pci_get_device(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
