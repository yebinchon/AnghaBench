; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_fdt_reset.c_assert_deassert_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_fdt_reset.c_assert_deassert_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Warning: No resets specified in fdt data; device may not function.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"Warning: can not find driver for reset number %u; device may not function\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Warning: failed to deassert reset number %u; device may not function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @assert_deassert_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_deassert_all(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ofw_bus_get_node(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = bitcast i32** %12 to i8**
  %18 = call i32 @OF_getencprop_alloc_multi(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4, i8** %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @device_printf(i32* %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %21, %2
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %79, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @OF_device_from_xref(i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i32*, i8*, ...) @device_printf(i32* %52, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  store i32 1, i32* %13, align 4
  br label %79

56:                                               ; preds = %33
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @FDT_RESET_ASSERT(i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %56
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @FDT_RESET_DEASSERT(i32* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32*, i8*, ...) @device_printf(i32* %74, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %10, align 4
  br label %29

82:                                               ; preds = %29
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @OF_prop_free(i32* %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @ENXIO, align 4
  br label %90

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %24
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @FDT_RESET_ASSERT(i32*, i32) #1

declare dso_local i32 @FDT_RESET_DEASSERT(i32*, i32) #1

declare dso_local i32 @OF_prop_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
