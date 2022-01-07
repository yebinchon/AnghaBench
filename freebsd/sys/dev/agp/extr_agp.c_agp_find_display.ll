; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_find_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_find_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCIC_DISPLAY = common dso_local global i64 0, align 8
@PCIS_DISPLAY_VGA = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @agp_find_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_find_display() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %65, %0
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @devclass_get_maxunit(i32 %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @devclass_get_device(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %65

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @device_get_children(i32 %23, i32** %5, i32* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %65

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @pci_get_class(i32 %38)
  %40 = load i64, i64* @PCIC_DISPLAY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @pci_get_subclass(i32 %43)
  %45 = load i64, i64* @PCIS_DISPLAY_VGA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @agp_find_caps(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = call i32 @free(i32* %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %1, align 4
  br label %69

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %42, %32
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @M_TEMP, align 4
  %64 = call i32 @free(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %26, %21
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %10

68:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32) #1

declare dso_local i32 @devclass_get_device(i32, i32) #1

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
